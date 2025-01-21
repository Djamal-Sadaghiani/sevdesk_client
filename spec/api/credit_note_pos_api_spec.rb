require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::CreditNotePosApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CreditNotePosApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::CreditNotePosApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreditNotePosApi' do
    it 'should create an instance of CreditNotePosApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::CreditNotePosApi)
    end
  end

  # unit tests for getcredit_note_positions
  # Retrieve creditNote positions
  # Retrieve all creditNote positions depending on the filters defined in the query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :credit_note_id Retrieve all creditNote positions belonging to this creditNote. Must be provided with creditNote[objectName]
  # @option opts [String] :credit_note_object_name Only required if creditNote[id] was provided. &#39;creditNote&#39; should be used as value.
  # @return [GetcreditNotePositions200Response]
  describe 'getcredit_note_positions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
