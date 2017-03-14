require 'meowth/config'
require 'meowth/constant'
require 'meowth/util'
require 'base64'


module Meowth
  module Service
    # 网关产品 消费类交易 参数
    def self.create_gate_consume_params(mer_id, order_id, txn_amt)
      params = {}
      # 基本信息
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "01"
      params[Meowth::Constant::TXN_SUB_TYPE] = "01"
      params[Meowth::Constant::BIZ_TYPE] = "000201"
      params[Meowth::Constant::CHANNEL_TYPE] = "07"
      # 商户信息
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::MER_ID] = mer_id
      params[Meowth::Constant::FRONT_URL] = Meowth::Config.config['front_url']
      params[Meowth::Constant::BACK_URL] = Meowth::Config.config['back_url']
      # 订单信息
      params[Meowth::Constant::ORDER_ID] = order_id
      params[Meowth::Constant::CURRENCY_CODE] = "156"
      params[Meowth::Constant::TXN_AMT] = txn_amt
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      Meowth::Util.sign(params)
    end

    # 网关产品 消费撤销类交易 参数
    def self.create_gate_unconsume_params(mer_id, order_id, txn_amt, orig_query_id)
      params = {}
      # 基本信息
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "31"
      params[Meowth::Constant::TXN_SUB_TYPE] = "00"
      params[Meowth::Constant::BIZ_TYPE] = "000201"
      params[Meowth::Constant::CHANNEL_TYPE] = "07"
      # 商户信息
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::MER_ID] = mer_id
      params[Meowth::Constant::BACK_URL] = Meowth::Config.config['back_url']
      # 订单信息
      params[Meowth::Constant::ORDER_ID] = order_id
      params[Meowth::Constant::TXN_AMT] = txn_amt
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      # 通知信息
      params[Meowth::Constant::ORIG_QRY_ID] = orig_query_id
      Meowth::Util.sign(params)
    end

    # 网关产品 退货类交易 参数
    def self.create_gate_return_params(mer_id, order_id, txn_amt, orig_query_id)
      params = {}
      # 基本信息
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "04"
      params[Meowth::Constant::TXN_SUB_TYPE] = "00"
      params[Meowth::Constant::BIZ_TYPE] = "000201"
      params[Meowth::Constant::CHANNEL_TYPE] = "07"
      # 商户信息
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::MER_ID] = mer_id
      params[Meowth::Constant::BACK_URL] = Meowth::Config.config['back_url']
      # 订单信息
      params[Meowth::Constant::ORDER_ID] = order_id
      params[Meowth::Constant::TXN_AMT] = txn_amt
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      # 通知信息
      params[Meowth::Constant::ORIG_QRY_ID] = orig_query_id
      Meowth::Util.sign(params)
    end

    # 网关产品 交易状态查询交易 参数
    def self.create_gate_query_params(mer_id, order_id, query_id)
      params = {}
      # 基本信息
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "00"
      params[Meowth::Constant::TXN_SUB_TYPE] = "00"
      params[Meowth::Constant::BIZ_TYPE] = "000201"
      # 商户信息
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::MER_ID] = mer_id
      # 订单信息
      params[Meowth::Constant::ORDER_ID] = order_id
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      # 通知信息
      params[Meowth::Constant::QUERY_ID] = query_id
      Meowth::Util.sign(params)
    end

    # 网关产品 文件传输类交易 参数
    def self.create_gate_file_params(mer_id, order_id, txn_amt, query_id)
      params = {}
      # 基本信息
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "76"
      params[Meowth::Constant::TXN_SUB_TYPE] = "01"
      params[Meowth::Constant::BIZ_TYPE] = "000000"
      # 商户信息
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::MER_ID] = mer_id
      # 订单信息
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      params[Meowth::Constant::FILE_TYPE] = "00"
      # 通知信息
      # TODO 生成环境，23点之前，是今天，23点之后为明天；测试环境，13:30之前为昨天，之后为今天
      params[Meowth::Constant::SETTLE_DATE] = Time.now.strftime('%m%d')
      Meowth::Util.sign(params)
    end

    # B2B产品 消费类交易 参数
    def self.create_b2b_params(mer_id, order_id, txn_amt)
      params = {}
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "01"
      params[Meowth::Constant::TXN_SUB_TYPE] = "01"
      params[Meowth::Constant::BIZ_TYPE] = "000202"
      params[Meowth::Constant::CHANNEL_TYPE] = "07"
      params[Meowth::Constant::MER_ID] = mer_id
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::ORDER_ID] = order_id
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      params[Meowth::Constant::CURRENCY_CODE] = "156"
      params[Meowth::Constant::TXN_AMT] = txn_amt
      params[Meowth::Constant::FRONT_URL] = Meowth::Config.config['front_url']
      params[Meowth::Constant::BACK_URL] = Meowth::Config.config['back_url']
      Meowth::Util.sign(params)
    end

    # 代付产品 实名认证 参数
    def self.create_pay_params(mer_id, order_id, txn_amt, acc_no, certif_id, customer_nm, phone_no)
      params = {}
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "12"
      params[Meowth::Constant::TXN_SUB_TYPE] = "00"
      params[Meowth::Constant::BIZ_TYPE] = "000401"
      params[Meowth::Constant::CHANNEL_TYPE] = "07"
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::MER_ID] = mer_id
      params[Meowth::Constant::BACK_URL] = Meowth::Config.config['back_url']
      params[Meowth::Constant::ORDER_ID] = order_id
      params[Meowth::Constant::CURRENCY_CODE] = "156"
      params[Meowth::Constant::TXN_AMT] = txn_amt
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      params[Meowth::Constant::ACC_TYPE] = "01"
      params[Meowth::Constant::ACC_NO] = Meowth::Util.encrypt(acc_no)
      encrypted_info = Meowth::Util.encrypt("phoneNo=#{phone_no}")
      params[Meowth::Constant::CUSTOMER_INFO] = Base64.strict_encode64("{certifId=#{certif_id}&certifTp=01&customerNm=#{customer_nm}&encryptedInfo=#{encrypted_info}}")
      params[Meowth::Constant::ENCRYPT_CERT_ID] = Meowth::Config.encrypt_cert_id
      Meowth::Util.sign(params)
    end

    # 代付产品 实名认证 参数
    def self.create_real_name_params(mer_id, order_id, acc_no, certif_id, customer_nm, phone_no)
      params = {}
      params[Meowth::Constant::VERSION] = "5.0.0"
      params[Meowth::Constant::ENCODING] = "UTF-8"
      params[Meowth::Constant::SIGN_METHOD] = "01"
      params[Meowth::Constant::TXN_TYPE] = "72"
      params[Meowth::Constant::TXN_SUB_TYPE] = "01"
      params[Meowth::Constant::BIZ_TYPE] = "000401"
      params[Meowth::Constant::CHANNEL_TYPE] = "07"
      params[Meowth::Constant::ACCESS_TYPE] = "0"
      params[Meowth::Constant::MER_ID] = mer_id
      params[Meowth::Constant::BACK_URL] = Meowth::Config.config['back_url']
      params[Meowth::Constant::ORDER_ID] = order_id
      params[Meowth::Constant::TXN_TIME] = Time.now.strftime('%Y%m%d%H%M%S')
      params[Meowth::Constant::ACC_TYPE] = "01"
      params[Meowth::Constant::ACC_NO] = Meowth::Util.encrypt(acc_no)
      encrypted_info = Meowth::Util.encrypt("phoneNo=#{phone_no}")
      params[Meowth::Constant::CUSTOMER_INFO] = Base64.strict_encode64("{certifId=#{certif_id}&certifTp=01&customerNm=#{customer_nm}&encryptedInfo=#{encrypted_info}}")
      params[Meowth::Constant::ENCRYPT_CERT_ID] = Meowth::Config.encrypt_cert_id
      Meowth::Util.sign(params)
    end
  end
end
