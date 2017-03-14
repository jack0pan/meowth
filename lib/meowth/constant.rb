module Meowth
  module Constant
    # 版本号.
    VERSION = "version";
    # 证书ID.
    CERT_ID = "certId";
    # 签名.
    SIGNATURE = "signature";
    # 编码方式.
    ENCODING = "encoding";
    # 交易类型.
    TXN_TYPE = "txnType";
    # 交易子类.
    TXN_SUB_TYPE = "txnSubType";
    # 业务类型.
    BIZ_TYPE = "bizType";
    # 前台通知地址 .
    FRONT_URL = "frontUrl";
    # 后台通知地址.
    BACK_URL = "backUrl";
    # 接入类型.
    ACCESS_TYPE = "accessType";
    # 收单机构代码.
    ACQ_INS_CODE = "acqInsCode";
    # 商户类别.
    MER_CAT_CODE = "merCatCode";
    # 商户类型.
    MER_TYPE = "merType";
    # 商户代码.
    MER_ID = "merId";
    # 商户名称.
    MER_NAME = "merName";
    # 商户简称.
    MER_ABBR = "merAbbr";
    # 二级商户代码.
    SUB_MER_ID = "subMerId";
    # 二级商户名称.
    SUB_MER_NAME = "subMerName";
    # 二级商户简称.
    SUB_MER_ABBR = "subMerAbbr";
    # Cupsecure 商户代码.
    CS_MER_ID = "csMerId";
    # 商户订单号.
    ORDER_ID = "orderId";
    # 交易时间.
    TXN_TIME = "txnTime";
    # 发送时间.
    TXN_SEND_TIME = "txnSendTime";
    # 订单超时时间间隔.
    ORDER_TIMEOUT_INTERVAL = "orderTimeoutInterval";
    # 支付超时时间.
    PAY_TIMEOUT_TIME = "payTimeoutTime";
    # 默认支付方式.
    DEFAULT_PAY_TYPE = "defaultPayType";
    # 支持支付方式.
    SUP_PAY_TYPE = "supPayType";
    # 支付方式.
    PAY_TYPE = "payType";
    # 自定义支付方式.
    CUSTOM_PAY_TYPE = "customPayType";
    # 物流标识.
    SHIPPING_FLAG = "shippingFlag";
    # 收货地址-国家.
    SHIPPING_COUNTRY_CODE = "shippingCountryCode";
    # 收货地址-省.
    SHIPPING_PROVINCE_CODE = "shippingProvinceCode";
    # 收货地址-市.
    SHIPPING_CITY_CODE = "shippingCityCode";
    # 收货地址-地区.
    SHIPPING_DISTRICT_CODE = "shippingDistrictCode";
    # 收货地址-详细.
    SHIPPING_STREET = "shippingStreet";
    # 商品总类.
    COMMODITY_CATEGORY = "commodityCategory";
    # 商品名称.
    COMMODITY_NAME = "commodityName";
    # 商品URL.
    COMMODITY_URL = "commodityUrl";
    # 商品单价.
    COMMODITY_UNIT_PRICE = "commodityUnitPrice";
    # 商品数量.
    COMMODITY_QTY = "commodityQty";
    # 是否预授权.
    IS_PRE_AUTH = "isPreAuth";
    # 币种.
    CURRENCY_CODE = "currencyCode";
    # 账户类型.
    ACC_TYPE = "accType";
    # 账号.
    ACC_NO = "accNo";
    # 支付卡类型.
    PAY_CARD_TYPE = "payCardType";
    # 发卡机构代码.
    ISS_INS_CODE = "issInsCode";
    # 持卡人信息.
    CUSTOMER_INFO = "customerInfo";
    # 手机号.
    PHONE_NO = "phoneNo";
    # CVN2
    CVN2 = "cvn2";
    # 有效期
    EXPIRED = "expired";
    # 加密信息域
    ENCRYPTED_INFO = "encryptedInfo";
    # 交易金额.
    TXN_AMT = "txnAmt";
    # 余额.
    BALANCE = "balance";
    # 地区代码.
    DISTRICT_CODE = "districtCode";
    # 附加地区代码.
    ADDITIONAL_DISTRICT_CODE = "additionalDistrictCode";
    # 账单类型.
    BILL_TYPE = "billType";
    # 账单号码.
    BILL_NO = "billNo";
    # 账单月份.
    BILL_MONTH = "billMonth";
    # 账单查询要素.
    BILL_QUERY_INFO = "billQueryInfo";
    # 账单详情.
    BILL_DETAIL_INFO = "billDetailInfo";
    # 账单金额.
    BILL_AMT = "billAmt";
    # 账单金额符号.
    BILL_AMT_SIGN = "billAmtSign";
    # 绑定标识号.
    BIND_ID = "bindId";
    # 风险级别.
    RISK_LEVEL = "riskLevel";
    # 绑定信息条数.
    BIND_INFO_QTY = "bindInfoQty";
    # 绑定信息集.
    BIND_INFO_LIST = "bindInfoList";
    # 批次号.
    BATCH_NO = "batchNo";
    # 总笔数.
    TOTAL_QTY = "totalQty";
    # 总金额.
    TOTAL_AMT = "totalAmt";
    # 文件类型.
    FILE_TYPE = "fileType";
    # 文件名称.
    FILE_NAME = "fileName";
    # 批量文件内容.
    FILE_CONTENT = "fileContent";
    # 商户摘要.
    MER_NOTE = "merNote";
    # 商户自定义域.
    # merReserved = "merReserved";#接口变更删除
    # 请求方保留域.
    REQ_RESERVED = "reqReserved";# 新增接口
    # 保留域.
    RESERVED = "reserved";
    # 终端号.
    TERM_ID = "termId";
    # 终端类型.
    TERM_TYPE = "termType";
    # 交互模式.
    INTERACT_MODE = "interactMode";
    # 发卡机构识别模式.
    # recognitionMode = "recognitionMode";
    ISSUER_IDENTIFY_MODE = "issuerIdentifyMode";# 接口名称变更
    # 商户端用户号.
    MER_USER_ID = "merUserId";
    # 持卡人IP.
    CUSTOMER_IP = "customerIp";
    # 查询流水号.
    QUERY_ID = "queryId";
    # 原交易查询流水号.
    ORIG_QRY_ID = "origQryId";
    # 系统跟踪号.
    TRACE_NO = "traceNo";
    # 交易传输时间.
    TRACE_TIME = "traceTime";
    # 清算日期.
    SETTLE_DATE = "settleDate";
    # 清算币种.
    SETTLE_CURRENCY_CODE = "settleCurrencyCode";
    # 清算金额.
    SETTLE_AMT = "settleAmt";
    # 清算汇率.
    EXCHANGE_RATE = "exchangeRate";
    # 兑换日期.
    EXCHANGE_DATE = "exchangeDate";
    # 响应时间.
    RESP_TIME = "respTime";
    # 原交易应答码.
    ORIG_RESP_CODE = "origRespCode";
    # 原交易应答信息.
    ORIG_RESP_MSG = "origRespMsg";
    # 应答码.
    RESP_CODE = "respCode";
    # 应答码信息.
    RESP_MSG = "respMsg";
    # 新增四个报文字段merUserRegDt merUserEmail checkFlag activateStatus
    # 商户端用户注册时间.
    MER_USER_REG_DT = "merUserRegDt";
    # 商户端用户注册邮箱.
    MER_USER_EMAIL = "merUserEmail";
    # 验证标识.
    CHECK_FLAG = "checkFlag";
    # 开通状态.
    ACTIVATE_STATUS = "activateStatus";
    # 加密证书ID.
    ENCRYPT_CERT_ID = "encryptCertId";
    # 用户MAC、IMEI串号、SSID.
    USER_MAC = "userMac";
    # 关联交易.
    # relationTxnType = "relationTxnType";
    # 短信类型
    SMS_TYPE = "smsType";
    # 风控信息域
    RISK_CTRL_INFO = "riskCtrlInfo";
    # IC卡交易信息域
    IC_TRANS_DATA = "ICTransData";
    # VPC交易信息域
    VPC_TRANS_DATA = "VPCTransData";
    # 安全类型
    SECURITY_TYPE = "securityType";
    # 银联订单号
    TN = "tn";
    # 分期付款手续费率
    INSTAL_RATE = "instalRate";
    # 分期付款手续费率
    MCHNT_FEE_SUBSIDY = "mchntFeeSubsidy";
    # 签名方法
    SIGN_METHOD = "signMethod"
    # 渠道类型
    CHANNEL_TYPE = "channelType"
  end
end

