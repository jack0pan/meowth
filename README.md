# Meowth

## 安装

将以下内容添加到Gemfile：

```ruby
gem 'meowth'
```

然后执行：
```bash
$ bundle install
```

生成配置文件：
```ruby
rails generate meowth:install
```

## 使用

### 配置
将自己的证书放到工程某个目录下，然后修改`meowth.yml`文件：
```yaml
default: &default
  sign_cert_path: "path/to/acp_test_sign.pfx"
  sign_cert_password: "000000"
  verify_sign_cert_path: "path/to/acp_test_verify_sign.cer"
  encrypt_cert_path: "path/to/acp_test_enc.cer"

development:
  <<: *default
  front_url: "" # 商户前台回调地址
  back_url: "" # 商户后台通知地址
```

### 网关类产品
生成消费参数
```ruby
requrie 'meowth/service'

mer_id = '111111' # 商户id
order_id = '22222222' # 订单ID
txn_amt = 100 # 订单金额，单位是分
params = Magneton::Service.create_gate_consume_params(mer_id, order_id, txn_amt)
```
之后，在前台页面，将生成的参数`post`给`Meowth::Config.config['front_trans_url']`，之后就会跳转到银联支付页面。

其他产品使用方法类似，这里不再赘述。

## License

The gem is available as open source under the terms of the [MIT License](LICENSE.txt).

