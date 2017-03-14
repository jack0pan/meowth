require 'spec_helper'
require 'meowth/service'
require 'rest-client'
require 'cgi'


describe Meowth::Service do
  before do
    @mer_id = "777290058136630"
    @acc_no = "6216261000000000018"
    @certif_id = "341126197709218366"
    @customer_nm = "全渠道"
    @phone_no = "13552535506"
  end

  it 'can create gate consume params' do
    order_id = Time.now.strftime('%Y%m%d%H%M%S%L').to_s
    params = Meowth::Service.create_gate_consume_params(@mer_id, order_id, 100)
    expect(params['signature']).not_to eq(nil)
  end

  it 'can create pay params' do
    order_id = Time.now.strftime('%Y%m%d%H%M%S%L').to_s
    params = Meowth::Service.create_pay_params(@mer_id, order_id, 100, @acc_no, @certif_id, @customer_nm, @phone_no)
    response = RestClient.post('https://gateway.test.95516.com/gateway/api/backTransReq.do', params)
    result = CGI::parse(response.body)
    resp_code = result['respCode'].first
    if resp_code != '00'
      puts "[-]  resposne message: %s." % result['respMsg'].first
    else
      puts "[-]  query id: %s." % result['queryId'].first
    end
    expect(resp_code).to eq("00")
  end

  it 'can create real name params' do
    order_id = Time.now.strftime('%Y%m%d%H%M%S%L').to_s
    params = Meowth::Service.create_real_name_params(@mer_id, order_id, @acc_no, @certif_id, @customer_nm, @phone_no)
    response = RestClient.post('https://gateway.test.95516.com/gateway/api/backTransReq.do', params)
    result = CGI::parse(response.body)
    resp_code = result['respCode'].first
    if resp_code != '00'
      puts "[-]  resposne message: %s." % result['respMsg'].first
    else
      puts "[+]  pay card type: %s." % result['payCardType'].first
      puts "[+]  iss ins code: %s." % result['issInsCode'].first
    end
    expect(resp_code).to eq("00")
  end
end
