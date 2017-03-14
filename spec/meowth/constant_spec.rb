require 'spec_helper'
require 'meowth/constant'


describe Meowth::Constant do
  it "has version" do
    expect(Meowth::Constant::VERSION).to eq("version")
  end

  it "has cert id" do
    expect(Meowth::Constant::CERT_ID).to eq("certId")
  end

  it "has signature" do
    expect(Meowth::Constant::SIGNATURE).to eq("signature")
  end

  it "has encoding" do
    expect(Meowth::Constant::ENCODING).to eq("encoding")
  end

  it "has txn type" do
    expect(Meowth::Constant::TXN_TYPE).to eq("txnType")
  end

  it "has txn sub type" do
    expect(Meowth::Constant::TXN_SUB_TYPE).to eq("txnSubType")
  end

  it "has biz type" do
    expect(Meowth::Constant::BIZ_TYPE).to eq("bizType")
  end

  it "has front url" do
    expect(Meowth::Constant::FRONT_URL).to eq("frontUrl")
  end

  it "has back url" do
    expect(Meowth::Constant::BACK_URL).to eq("backUrl")
  end

  it "has access type" do
    expect(Meowth::Constant::ACCESS_TYPE).to eq("accessType")
  end

  it "has acq ins code" do
    expect(Meowth::Constant::ACQ_INS_CODE).to eq("acqInsCode")
  end

  it "has mer cat code" do
    expect(Meowth::Constant::MER_CAT_CODE).to eq("merCatCode")
  end

  it "has mer type" do
    expect(Meowth::Constant::MER_TYPE).to eq("merType")
  end

  it "has mer id" do
    expect(Meowth::Constant::MER_ID).to eq("merId")
  end

  it "has mer name" do
    expect(Meowth::Constant::MER_NAME).to eq("merName")
  end

  it "has mer abbr" do
    expect(Meowth::Constant::MER_ABBR).to eq("merAbbr")
  end

  it "has sub mer id" do
    expect(Meowth::Constant::SUB_MER_ID).to eq("subMerId")
  end

  it "has sub mer name" do
    expect(Meowth::Constant::SUB_MER_NAME).to eq("subMerName")
  end

  it "has sub mer abbr" do
    expect(Meowth::Constant::SUB_MER_ABBR).to eq("subMerAbbr")
  end

  it "has cs mer id" do
    expect(Meowth::Constant::CS_MER_ID).to eq("csMerId")
  end

  it "has order id" do
    expect(Meowth::Constant::ORDER_ID).to eq("orderId")
  end

  it "has txn time" do
    expect(Meowth::Constant::TXN_TIME).to eq("txnTime")
  end

  it "has txn send time" do
    expect(Meowth::Constant::TXN_SEND_TIME).to eq("txnSendTime")
  end

  it "has order timeout interval" do
    expect(Meowth::Constant::ORDER_TIMEOUT_INTERVAL).to eq("orderTimeoutInterval")
  end

  it "has pay timeout time" do
    expect(Meowth::Constant::PAY_TIMEOUT_TIME).to eq("payTimeoutTime")
  end

  it "has default pay type" do
    expect(Meowth::Constant::DEFAULT_PAY_TYPE).to eq("defaultPayType")
  end

  it "has sub pay type" do
    expect(Meowth::Constant::SUP_PAY_TYPE).to eq("supPayType")
  end

  it "has pay type" do
    expect(Meowth::Constant::PAY_TYPE).to eq("payType")
  end

  it "has custom pay type" do
    expect(Meowth::Constant::CUSTOM_PAY_TYPE).to eq("customPayType")
  end

  it "has shipping flag" do
    expect(Meowth::Constant::SHIPPING_FLAG).to eq("shippingFlag")
  end

  it "has shipping country code" do
    expect(Meowth::Constant::SHIPPING_COUNTRY_CODE).to eq("shippingCountryCode")
  end

  it "has shipping province code" do
    expect(Meowth::Constant::SHIPPING_PROVINCE_CODE).to eq("shippingProvinceCode")
  end

  it "has shipping city code" do
    expect(Meowth::Constant::SHIPPING_CITY_CODE).to eq("shippingCityCode")
  end

  it "has shipping strict code" do
    expect(Meowth::Constant::SHIPPING_DISTRICT_CODE).to eq("shippingDistrictCode")
  end

  it "has shipping street" do
    expect(Meowth::Constant::SHIPPING_STREET).to eq("shippingStreet")
  end

  it "has commodity category" do
    expect(Meowth::Constant::COMMODITY_CATEGORY).to eq("commodityCategory")
  end

  it "has commodity name" do
    expect(Meowth::Constant::COMMODITY_NAME).to eq("commodityName")
  end

  it "has commodity url" do
    expect(Meowth::Constant::COMMODITY_URL).to eq("commodityUrl")
  end

  it "has commodity unit price" do
    expect(Meowth::Constant::COMMODITY_UNIT_PRICE).to eq("commodityUnitPrice")
  end

  it "has commodity qty" do
    expect(Meowth::Constant::COMMODITY_QTY).to eq("commodityQty")
  end

  it "has is pre auth" do
    expect(Meowth::Constant::IS_PRE_AUTH).to eq("isPreAuth")
  end

  it "has currency code" do
    expect(Meowth::Constant::CURRENCY_CODE).to eq("currencyCode")
  end

  it "has acc type" do
    expect(Meowth::Constant::ACC_TYPE).to eq("accType")
  end

  it "has acc no" do
    expect(Meowth::Constant::ACC_NO).to eq("accNo")
  end

  it "has pay card type" do
    expect(Meowth::Constant::PAY_CARD_TYPE).to eq("payCardType")
  end

  it "has iss ins code" do
    expect(Meowth::Constant::ISS_INS_CODE).to eq("issInsCode")
  end

  it "has customer info" do
    expect(Meowth::Constant::CUSTOMER_INFO).to eq("customerInfo")
  end

  it "has txn amt" do
    expect(Meowth::Constant::TXN_AMT).to eq("txnAmt")
  end

  it "has balance" do
    expect(Meowth::Constant::BALANCE).to eq("balance")
  end

  it "has district code" do
    expect(Meowth::Constant::DISTRICT_CODE).to eq("districtCode")
  end

  it "has additional district code" do
    expect(Meowth::Constant::ADDITIONAL_DISTRICT_CODE).to eq("additionalDistrictCode")
  end

  it "has bill type" do
    expect(Meowth::Constant::BILL_TYPE).to eq("billType")
  end

  it "has bill no" do
    expect(Meowth::Constant::BILL_NO).to eq("billNo")
  end

  it "has bill month" do
    expect(Meowth::Constant::BILL_MONTH).to eq("billMonth")
  end

  it "has bill query info" do
    expect(Meowth::Constant::BILL_QUERY_INFO).to eq("billQueryInfo")
  end

  it "has bill detail info" do
    expect(Meowth::Constant::BILL_DETAIL_INFO).to eq("billDetailInfo")
  end

  it "has bill amt" do
    expect(Meowth::Constant::BILL_AMT).to eq("billAmt")
  end

  it "has bill amt sign" do
    expect(Meowth::Constant::BILL_AMT_SIGN).to eq("billAmtSign")
  end

  it "has bind id" do
    expect(Meowth::Constant::BIND_ID).to eq("bindId")
  end

  it "has risk level" do
    expect(Meowth::Constant::RISK_LEVEL).to eq("riskLevel")
  end

  it "has bind info qty" do
    expect(Meowth::Constant::BIND_INFO_QTY).to eq("bindInfoQty")
  end

  it "has bind info list" do
    expect(Meowth::Constant::BIND_INFO_LIST).to eq("bindInfoList")
  end

  it "has batch no" do
    expect(Meowth::Constant::BATCH_NO).to eq("batchNo")
  end

  it "has total qty" do
    expect(Meowth::Constant::TOTAL_QTY).to eq("totalQty")
  end

  it "has total amt" do
    expect(Meowth::Constant::TOTAL_AMT).to eq("totalAmt")
  end

  it "has file type" do
    expect(Meowth::Constant::FILE_TYPE).to eq("fileType")
  end

  it "has file name" do
    expect(Meowth::Constant::FILE_NAME).to eq("fileName")
  end

  it "has file content" do
    expect(Meowth::Constant::FILE_CONTENT).to eq("fileContent")
  end

  it "has mer note" do
    expect(Meowth::Constant::MER_NOTE).to eq("merNote")
  end

  it "has req reserved" do
    expect(Meowth::Constant::REQ_RESERVED).to eq("reqReserved")
  end

  it "has reserved" do
    expect(Meowth::Constant::RESERVED).to eq("reserved")
  end

  it "has term id" do
    expect(Meowth::Constant::TERM_ID).to eq("termId")
  end

  it "has term type" do
    expect(Meowth::Constant::TERM_TYPE).to eq("termType")
  end

  it "has interact mode" do
    expect(Meowth::Constant::INTERACT_MODE).to eq("interactMode")
  end

  it "has issuer identify mode" do
    expect(Meowth::Constant::ISSUER_IDENTIFY_MODE).to eq("issuerIdentifyMode")
  end

  it "has mer user id" do
    expect(Meowth::Constant::MER_USER_ID).to eq("merUserId")
  end

  it "has customer ip" do
    expect(Meowth::Constant::CUSTOMER_IP).to eq("customerIp")
  end

  it "has query id" do
    expect(Meowth::Constant::QUERY_ID).to eq("queryId")
  end

  it "has orig qry id" do
    expect(Meowth::Constant::ORIG_QRY_ID).to eq("origQryId")
  end

  it "has trace no" do
    expect(Meowth::Constant::TRACE_NO).to eq("traceNo")
  end

  it "has trace time" do
    expect(Meowth::Constant::TRACE_TIME).to eq("traceTime")
  end

  it "has settle date" do
    expect(Meowth::Constant::SETTLE_DATE).to eq("settleDate")
  end

  it "has settle currency code" do
    expect(Meowth::Constant::SETTLE_CURRENCY_CODE).to eq("settleCurrencyCode")
  end

  it "has settle amt" do
    expect(Meowth::Constant::SETTLE_AMT).to eq("settleAmt")
  end

  it "has exchange rate" do
    expect(Meowth::Constant::EXCHANGE_RATE).to eq("exchangeRate")
  end

  it "has exchange date" do
    expect(Meowth::Constant::EXCHANGE_DATE).to eq("exchangeDate")
  end

  it "has resp time" do
    expect(Meowth::Constant::RESP_TIME).to eq("respTime")
  end

  it "has orig resp code" do
    expect(Meowth::Constant::ORIG_RESP_CODE).to eq("origRespCode")
  end

  it "has orig resp msg" do
    expect(Meowth::Constant::ORIG_RESP_MSG).to eq("origRespMsg")
  end

  it "has resp code" do
    expect(Meowth::Constant::RESP_CODE).to eq("respCode")
  end

  it "has resp msg" do
    expect(Meowth::Constant::RESP_MSG).to eq("respMsg")
  end

  it "has mer user reg dt" do
    expect(Meowth::Constant::MER_USER_REG_DT).to eq("merUserRegDt")
  end

  it "has mer user email" do
    expect(Meowth::Constant::MER_USER_EMAIL).to eq("merUserEmail")
  end

  it "has check flag" do
    expect(Meowth::Constant::CHECK_FLAG).to eq("checkFlag")
  end

  it "has active status" do
    expect(Meowth::Constant::ACTIVATE_STATUS).to eq("activateStatus")
  end

  it "has encrypt cert id" do
    expect(Meowth::Constant::ENCRYPT_CERT_ID).to eq("encryptCertId")
  end

  it "has user mac" do
    expect(Meowth::Constant::USER_MAC).to eq("userMac")
  end

  it "has sms type" do
    expect(Meowth::Constant::SMS_TYPE).to eq("smsType")
  end

  it "has risk ctrl info" do
    expect(Meowth::Constant::RISK_CTRL_INFO).to eq("riskCtrlInfo")
  end

  it "has ic trans data" do
    expect(Meowth::Constant::IC_TRANS_DATA).to eq("ICTransData")
  end

  it "has vpc trans data" do
    expect(Meowth::Constant::VPC_TRANS_DATA).to eq("VPCTransData")
  end

  it "has security type" do
    expect(Meowth::Constant::SECURITY_TYPE).to eq("securityType")
  end

  it "has tn" do
    expect(Meowth::Constant::TN).to eq("tn")
  end

  it "has instal rate" do
    expect(Meowth::Constant::INSTAL_RATE).to eq("instalRate")
  end

  it "has mchnt fee subsidy" do
    expect(Meowth::Constant::MCHNT_FEE_SUBSIDY).to eq("mchntFeeSubsidy")
  end

end
