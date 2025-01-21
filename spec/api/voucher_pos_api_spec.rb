require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::VoucherPosApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VoucherPosApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::VoucherPosApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VoucherPosApi' do
    it 'should create an instance of VoucherPosApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::VoucherPosApi)
    end
  end

  # unit tests for get_voucher_positions
  # Retrieve voucher positions
  # Retrieve all voucher positions depending on the filters defined in the query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :voucher_id Retrieve all vouchers positions belonging to this voucher. Must be provided with voucher[objectName]
  # @option opts [String] :voucher_object_name Only required if voucher[id] was provided. &#39;Voucher&#39; should be used as value.
  # @return [GetVoucherPositions200Response]
  describe 'get_voucher_positions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
