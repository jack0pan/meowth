require 'openssl'


module Meowth
  module Config
    def self.config
      self.init unless @config
      @config
    end

    def self.sign_cert_id
      self.init unless @sign_cert
      @sign_cert.certificate.serial.to_s
    end

    def self.sign_cert_private_key
      self.init unless @sign_cert
      @sign_cert.key
    end

    def self.verify_sign_cert_id
      self.init unless @verify_sign_cert
      @verify_sign_cert.serial.to_s
    end

    def self.verify_sign_cert_public_key
      self.init unless @verify_sign_cert
      @verify_sign_cert.public_key
    end

    def self.encrypt_cert_public_key
      self.init unless @encrypt_cert
      @encrypt_cert.public_key
    end

    def self.encrypt_cert_id
      self.init unless @encrypt_cert
      @encrypt_cert.serial.to_s
    end

    def self.init
      self.init_constant
      self.init_sign_cert
      self.init_verify_sign_cert
      self.init_encrypt_cert
    end

    def self.init_sign_cert
      @sign_cert = OpenSSL::PKCS12.new(File.read(@config['sign_cert_path']), @config['sign_cert_password'])
    end

    def self.init_verify_sign_cert
      @verify_sign_cert = OpenSSL::X509::Certificate.new(File.read(@config['verify_sign_cert_path']))
    end

    def self.init_encrypt_cert
      @encrypt_cert = OpenSSL::X509::Certificate.new(File.read(@config['encrypt_cert_path']))
    end

    def self.init_constant
      if defined?(::Rails) and Rails.root
        config_file = Rails.root.join('config/meowth.yml')
        @config = YAML.load(ERB.new(File.read(config_file)).result)[Rails.env] if File.exist?(config_file)
      else
        require "yaml"
        rails_config_file = File.join(Dir.getwd, 'config/meowth.yml')
        if File.exist?(rails_config_file)
          rails_env = ENV['RAILS_ENV'] || 'default'
          @config = YAML.load(ERB.new(File.read(rails_config_file)).result)[rails_env] if File.exist?(rails_config_file)
        end
      end
    end
  end
end
