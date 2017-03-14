require 'spec_helper'
require 'meowth/config'


describe Meowth::Config do
  before do
    # Meowth::Config.init
    @config = Meowth::Config.config
  end

  it 'has sign certificate path' do
    expect(@config['sign_cert_path']).not_to eq(nil)
  end

  it 'has sign certificate password' do
    expect(@config['sign_cert_password']).not_to eq(nil)
  end

  it 'verifies sign certificate id' do
    expect(Meowth::Config.sign_cert_id).to eq(68759663125)
  end

  it 'has sign certificate private key' do
    expect(Meowth::Config.sign_cert_private_key).not_to eq(nil)
  end

  it 'has verify sign certificate public key' do
    expect(Meowth::Config.verify_sign_cert_public_key).not_to eq(nil)
  end
end
