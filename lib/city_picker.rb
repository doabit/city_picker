require "city_picker/engine"

module CityPicker
  class << self
    def data
      unless @list
        # Rails.logger.info "========= LIST  #{Time.now}"
        @list = JSON.parse(File.read("#{Engine.root}/db/data.json"))
      end
      @list
    end

    def list_data(type, code)
      result = data[type]
      result.select{|a| a if a['parent'] == code} if type != 'province'
    end

    def list(type, code)
      result = list_data(type, code)
      get_data(result)
    end

    def get_by_code(code)
      values = data.values.flatten
      get(values, code)
    end

    def get_address(codes = [])
      address = []
      codes.each do |code|
        address << get_by_code(code)
      end
      address.join('')
    end

    private

    def get(values, code)
      result = values.detect{|a| a if a['code'] == code}
      result.nil? ? nil : result['name']
    end

    def get_data(arr = [])
      data = {}
      arr.each do |item|
        data[item['code']] = item['name']
      end
      data
    end
  end
end
