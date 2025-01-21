require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::CheckAccountTransactionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CheckAccountTransactionApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::CheckAccountTransactionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CheckAccountTransactionApi' do
    it 'should create an instance of CheckAccountTransactionApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::CheckAccountTransactionApi)
    end
  end

  # unit tests for check_account_transaction_enshrine
  # Enshrine
  # Sets the current date and time as a value for the property &#x60;enshrined&#x60;.&lt;br&gt; This operation is only possible if the status is \&quot;Linked\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;) or higher.  Linked invoices, credit notes or vouchers cannot be changed when the transaction is enshrined. 
  # @param check_account_transaction_id ID of the transaction to enshrine
  # @param [Hash] opts the optional parameters
  # @return [CheckAccountTransactionEnshrine200Response]
  describe 'check_account_transaction_enshrine test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_transaction
  # Create a new transaction
  # Creates a new transaction on a check account.
  # @param [Hash] opts the optional parameters
  # @option opts [ModelCheckAccountTransaction] :model_check_account_transaction Creation data. Please be aware, that you need to provide at least all required parameter      of the CheckAccountTransaction model!
  # @return [ModelCheckAccountTransactionResponse]
  describe 'create_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_check_account_transaction
  # Deletes a check account transaction
  # @param check_account_transaction_id Id of check account transaction to delete
  # @param [Hash] opts the optional parameters
  # @return [DeleteCheckAccount200Response]
  describe 'delete_check_account_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_check_account_transaction_by_id
  # Find check account transaction by ID
  # Retrieve an existing check account transaction
  # @param check_account_transaction_id ID of check account transaction
  # @param [Hash] opts the optional parameters
  # @return [GetTransactions200Response]
  describe 'get_check_account_transaction_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_transactions
  # Retrieve transactions
  # Retrieve all transactions depending on the filters defined in the query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :check_account_id Retrieve all transactions on this check account. Must be provided with checkAccount[objectName]
  # @option opts [String] :check_account_object_name Only required if checkAccount[id] was provided. &#39;CheckAccount&#39; should be used as value.
  # @option opts [Boolean] :is_booked Only retrieve booked transactions
  # @option opts [String] :paymt_purpose Only retrieve transactions with this payment purpose
  # @option opts [Time] :start_date Only retrieve transactions from this date on
  # @option opts [Time] :end_date Only retrieve transactions up to this date
  # @option opts [String] :payee_payer_name Only retrieve transactions with this payee / payer
  # @option opts [Boolean] :only_credit Only retrieve credit transactions
  # @option opts [Boolean] :only_debit Only retrieve debit transactions
  # @return [GetTransactions200Response]
  describe 'get_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_check_account_transaction
  # Update an existing check account transaction
  # Update a check account transaction
  # @param check_account_transaction_id ID of check account to update transaction
  # @param [Hash] opts the optional parameters
  # @option opts [ModelCheckAccountTransactionUpdate] :model_check_account_transaction_update Update data
  # @return [ModelCheckAccountTransactionResponse]
  describe 'update_check_account_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
