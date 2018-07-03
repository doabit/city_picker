# CityPicker
中国省市区街道四级联地址选择，js代码来自 [city-picker](https://github.com/huangchanghuan/city-picker), 数据来自 [Administrative-divisions-of-China](https://github.com/modood/Administrative-divisions-of-China)

## 安装

### Gemfile

```ruby
gem 'city_picker'
```

### app/assets/javascripts/application.js

```javascript
//= require city_picker/city_picker
```

### app/assets/stylesheets/application.css

```javascript
*= require city_picker/city_picker
```

config/routes.rb
```ruby
mount CityPicker::Engine => "/city_picker"
```

## 使用

在页面中加入

```html
<div style="position: relative;">
  <!-- container -->
  <input readonly type="text"  placeholder="请选择省/市"  id="target" style="width:100%">
</div>
```

```javascript
<script>
  $(function() {
    $('#target').citypicker({
      responsive: true,
      simple: true,
      // level: 'district'
      // addrElm: '#addrValue1'
    });

    $('#target').on('cp:updated', function(e) {
      console.log($(this).val())
    })
  })
</script>
```

 如果要在选择后取得城市code，可在页面添加

 ```html
 <input type="text" id="addrValue">
 ```

 或者 添加初始化选项 `addrElm: '#my_address_elm`

 ```html
  <input type="text" id="my_address_elm">
 ```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
