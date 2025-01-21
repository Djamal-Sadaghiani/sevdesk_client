require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::ModelVoucherTaxRule
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::ModelVoucherTaxRule do
  let(:instance) { OpenapiClient::ModelVoucherTaxRule.new }

  describe 'test an instance of ModelVoucherTaxRule' do
    it 'should create an instance of ModelVoucherTaxRule' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenapiClient::ModelVoucherTaxRule)
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["1", "2", "3", "4", "5", "11"])
      # validator.allowable_values.each do |value|
      #   expect { instance.id = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "object_name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TaxRule"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object_name = value }.not_to raise_error
      # end
    end
  end

end
