module CityPicker
  class DataController < CityPicker::ApplicationController
    def list
      type = params[:city_type] || 'province'
      code = params[:code] || '11'
      data = CityPicker::list(type, code)
      code = 0
      code = 1 if data.blank?
      render json: {code: code, data: data}
    end
  end
end