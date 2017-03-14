require 'digest/sha1'
require 'base64'
require 'meowth/config'
require 'meowth/constant'


module Meowth
  module Util
    # 请求报文签名（sha1摘要算法）
    # 插入certId字段，计算签名，再插入签名，最后返回整个请求报文
    def self.sign(params)
      params[Meowth::Constant::CERT_ID] = Meowth::Config.sign_cert_id
      data = params.sort.map{ |k, v| "#{k}=#{v}" }.join('&')
      digest = Digest::SHA1.hexdigest(data)
      key = Meowth::Config.sign_cert_private_key
      sign = Base64.strict_encode64(key.sign('sha1', digest))
      params[Meowth::Constant::SIGNATURE] = sign
      params
    end

    # 对响应报文签名验证（sha1摘要算法）
    def self.verify(params)
      sign = params[Meowth::Constant::SIGNATURE]
      params.delete(Meowth::Constant::SIGNATURE)
      data = params.sort.map{ |k, v| "#{k}=#{v}" }.join('&')
      digest = Digest::SHA1.hexdigest(data)
      key = Meowth::Config.verify_sign_cert_public_key
      key.verify('sha1', Base64.strict_decode64(sign), digest)
    end


    def self.encrypt_pin(pin, card)
      len = "%02d" % pin.length
      tmp = len + pin + "F" * (14 - pin.length)
      pin_byte = [tmp].pack("H*")
      card_no = "0" * (13 - card.length) + card
      tmp = "0000" + card_no[0..11]
      card_byte = [tmp].pack("H*")
      c = pin_byte.bytes.zip(card_byte.bytes).map{ |a, b| a ^ b }.pack('c*')
      public_key = Meowth::Config.encrypt_cert_public_key
      Base64.strict_encode64(public_key.public_encrypt(c))
    end

    def self.encrypt(plain_text)
      public_key = Meowth::Config.encrypt_cert_public_key
      Base64.strict_encode64(public_key.public_encrypt(plain_text))
    end

    def self.decrypt(ciper_text)
      private_key = Meowth::Config.sign_cert_private_key
      private_key.private_decrypt(Base64.strict_decode64(ciper_text))
    end
  end
end
