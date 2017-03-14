require 'spec_helper'
require 'meowth/util'


describe Meowth::Util do
  before do
    @request_params = {}
    @request_params['version'] = '5.0.0'
    @signature = 'chf3be1FaY9z115Xn1B4vwAV2ZdgEpIEHMpn7FN4lyyNGPW0FAyBo61kMGt0d1E9lTQXDkhIVsgjwxQ+a5jiSSRbA8bRsrAl8KtWDTHsvcKkK+nfCS/8CpmUOjFCFVYGeapdM7efxDoKTRQXMeSMe1JmzrEdEGnsqmLpfBqlcNXKW/KIekp4GnrdvcAsB/oksCyFTzX4f7lyLg2YBF/Hx6MV3uGFo4vl6AFPD54cJkiY+NAoud8IMzkfb3Z+ISqSbiNCEdiG1Xmdu7zNv1nxxDYxnXvWb6iRJFrwlkn6UFlZEhRu0ig6o85bJ+k9dyIb1LNG/xug4x5Dd/HMQGb6sw=='
    @respone_params = {
      "accessType"=>"0",
      "bizType"=>"000201",
      "certId"=>"68759585097",
      "currencyCode"=>"156",
      "encoding"=>"UTF-8",
      "merId"=>"898111948160512",
      "orderId"=>"0ea93832ab6f90b4226028dc7dcbb48ce583",
      "queryId"=>"201609281654262163208",
      "respCode"=>"00",
      "respMsg"=>"Success!",
      "settleAmt"=>"40000",
      "settleCurrencyCode"=>"156",
      "settleDate"=>"0928",
      "signMethod"=>"01",
      "traceNo"=>"216320",
      "traceTime"=>"0928165426",
      "txnAmt"=>"40000",
      "txnSubType"=>"01",
      "txnTime"=>"20160928165426",
      "txnType"=>"01",
      "version"=>"5.0.0",
      "signature"=>"UjBVDdqGWrmrAgjSI+dAWhI0m00yRL4tsm8hyjgRmkeHOMzdddlDnz6fbjJ0YQgJPhBE47kmiz6CEGlWy3IRKfuC5WtVNtnQmGlcYiMtj9mohzRjbVqG17jXQRVBEVypl/YK5pN0KzgUlHG9wzwEgypnHSKrpeLzOEYPRSEw1xz24D+uFUs5NpJbEBXBYfrIwKxCFks91zsFW7wmAsfhJ9+NGe68jILxxTdb/gvT6wmTKedzxTmspfJvrdJsVVwOKj7RScNuGuq8nJQmtuSwrRco2WcIj1tfLdyEQrB0ttswB7sHhZBH279V8177SnIAAoo1pOQd9BHglk87Qhcjzw=="
    }
  end

  it 'signs params use sign cert' do
    params = Meowth::Util.sign(@request_params)
    expect(params['signature']).to eq(@signature)
  end

  it 'verify params using verify sign cert' do
    expect(Meowth::Util.verify(@respone_params)).to eq(true)
  end

  it 'encrypt pin' do
    data = Meowth::Util.encrypt_pin('11111', '12345678901')
  end
end
