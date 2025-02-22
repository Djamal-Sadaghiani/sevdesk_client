require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::CreditNoteSendByRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::CreditNoteSendByRequest do
  let(:instance) { OpenapiClient::CreditNoteSendByRequest.new }

  describe 'test an instance of CreditNoteSendByRequest' do
    it 'should create an instance of CreditNoteSendByRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenapiClient::CreditNoteSendByRequest)
    end
  end

  describe 'test attribute "send_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["VPR", "VP", "VM", "VPDF"])
      # validator.allowable_values.each do |value|
      #   expect { instance.send_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "send_draft"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
