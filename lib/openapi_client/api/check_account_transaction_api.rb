require 'cgi'

module OpenapiClient
  class CheckAccountTransactionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Enshrine
    # Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Linked\" (`\"status\": \"200\"`) or higher.  Linked invoices, credit notes or vouchers cannot be changed when the transaction is enshrined. 
    # @param check_account_transaction_id [Integer] ID of the transaction to enshrine
    # @param [Hash] opts the optional parameters
    # @return [CheckAccountTransactionEnshrine200Response]
    def check_account_transaction_enshrine(check_account_transaction_id, opts = {})
      data, _status_code, _headers = check_account_transaction_enshrine_with_http_info(check_account_transaction_id, opts)
      data
    end

    # Enshrine
    # Sets the current date and time as a value for the property &#x60;enshrined&#x60;.&lt;br&gt; This operation is only possible if the status is \&quot;Linked\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;) or higher.  Linked invoices, credit notes or vouchers cannot be changed when the transaction is enshrined. 
    # @param check_account_transaction_id [Integer] ID of the transaction to enshrine
    # @param [Hash] opts the optional parameters
    # @return [Array<(CheckAccountTransactionEnshrine200Response, Integer, Hash)>] CheckAccountTransactionEnshrine200Response data, response status code and response headers
    def check_account_transaction_enshrine_with_http_info(check_account_transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountTransactionApi.check_account_transaction_enshrine ...'
      end
      # verify the required parameter 'check_account_transaction_id' is set
      if @api_client.config.client_side_validation && check_account_transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_transaction_id' when calling CheckAccountTransactionApi.check_account_transaction_enshrine"
      end
      # resource path
      local_var_path = '/CheckAccountTransaction/{checkAccountTransactionId}/enshrine'.sub('{' + 'checkAccountTransactionId' + '}', CGI.escape(check_account_transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CheckAccountTransactionEnshrine200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountTransactionApi.check_account_transaction_enshrine",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountTransactionApi#check_account_transaction_enshrine\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new transaction
    # Creates a new transaction on a check account.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCheckAccountTransaction] :model_check_account_transaction Creation data. Please be aware, that you need to provide at least all required parameter      of the CheckAccountTransaction model!
    # @return [ModelCheckAccountTransactionResponse]
    def create_transaction(opts = {})
      data, _status_code, _headers = create_transaction_with_http_info(opts)
      data
    end

    # Create a new transaction
    # Creates a new transaction on a check account.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCheckAccountTransaction] :model_check_account_transaction Creation data. Please be aware, that you need to provide at least all required parameter      of the CheckAccountTransaction model!
    # @return [Array<(ModelCheckAccountTransactionResponse, Integer, Hash)>] ModelCheckAccountTransactionResponse data, response status code and response headers
    def create_transaction_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountTransactionApi.create_transaction ...'
      end
      # resource path
      local_var_path = '/CheckAccountTransaction'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_check_account_transaction'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCheckAccountTransactionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountTransactionApi.create_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountTransactionApi#create_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a check account transaction
    # @param check_account_transaction_id [Integer] Id of check account transaction to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_check_account_transaction(check_account_transaction_id, opts = {})
      data, _status_code, _headers = delete_check_account_transaction_with_http_info(check_account_transaction_id, opts)
      data
    end

    # Deletes a check account transaction
    # @param check_account_transaction_id [Integer] Id of check account transaction to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_check_account_transaction_with_http_info(check_account_transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountTransactionApi.delete_check_account_transaction ...'
      end
      # verify the required parameter 'check_account_transaction_id' is set
      if @api_client.config.client_side_validation && check_account_transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_transaction_id' when calling CheckAccountTransactionApi.delete_check_account_transaction"
      end
      # resource path
      local_var_path = '/CheckAccountTransaction/{checkAccountTransactionId}'.sub('{' + 'checkAccountTransactionId' + '}', CGI.escape(check_account_transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteCheckAccount200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountTransactionApi.delete_check_account_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountTransactionApi#delete_check_account_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find check account transaction by ID
    # Retrieve an existing check account transaction
    # @param check_account_transaction_id [Integer] ID of check account transaction
    # @param [Hash] opts the optional parameters
    # @return [GetTransactions200Response]
    def get_check_account_transaction_by_id(check_account_transaction_id, opts = {})
      data, _status_code, _headers = get_check_account_transaction_by_id_with_http_info(check_account_transaction_id, opts)
      data
    end

    # Find check account transaction by ID
    # Retrieve an existing check account transaction
    # @param check_account_transaction_id [Integer] ID of check account transaction
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetTransactions200Response, Integer, Hash)>] GetTransactions200Response data, response status code and response headers
    def get_check_account_transaction_by_id_with_http_info(check_account_transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountTransactionApi.get_check_account_transaction_by_id ...'
      end
      # verify the required parameter 'check_account_transaction_id' is set
      if @api_client.config.client_side_validation && check_account_transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_transaction_id' when calling CheckAccountTransactionApi.get_check_account_transaction_by_id"
      end
      # resource path
      local_var_path = '/CheckAccountTransaction/{checkAccountTransactionId}'.sub('{' + 'checkAccountTransactionId' + '}', CGI.escape(check_account_transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTransactions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountTransactionApi.get_check_account_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountTransactionApi#get_check_account_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def get_transactions(opts = {})
      data, _status_code, _headers = get_transactions_with_http_info(opts)
      data
    end

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
    # @return [Array<(GetTransactions200Response, Integer, Hash)>] GetTransactions200Response data, response status code and response headers
    def get_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountTransactionApi.get_transactions ...'
      end
      # resource path
      local_var_path = '/CheckAccountTransaction'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'checkAccount[id]'] = opts[:'check_account_id'] if !opts[:'check_account_id'].nil?
      query_params[:'checkAccount[objectName]'] = opts[:'check_account_object_name'] if !opts[:'check_account_object_name'].nil?
      query_params[:'isBooked'] = opts[:'is_booked'] if !opts[:'is_booked'].nil?
      query_params[:'paymtPurpose'] = opts[:'paymt_purpose'] if !opts[:'paymt_purpose'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'payeePayerName'] = opts[:'payee_payer_name'] if !opts[:'payee_payer_name'].nil?
      query_params[:'onlyCredit'] = opts[:'only_credit'] if !opts[:'only_credit'].nil?
      query_params[:'onlyDebit'] = opts[:'only_debit'] if !opts[:'only_debit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTransactions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountTransactionApi.get_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountTransactionApi#get_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing check account transaction
    # Update a check account transaction
    # @param check_account_transaction_id [Integer] ID of check account to update transaction
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCheckAccountTransactionUpdate] :model_check_account_transaction_update Update data
    # @return [ModelCheckAccountTransactionResponse]
    def update_check_account_transaction(check_account_transaction_id, opts = {})
      data, _status_code, _headers = update_check_account_transaction_with_http_info(check_account_transaction_id, opts)
      data
    end

    # Update an existing check account transaction
    # Update a check account transaction
    # @param check_account_transaction_id [Integer] ID of check account to update transaction
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCheckAccountTransactionUpdate] :model_check_account_transaction_update Update data
    # @return [Array<(ModelCheckAccountTransactionResponse, Integer, Hash)>] ModelCheckAccountTransactionResponse data, response status code and response headers
    def update_check_account_transaction_with_http_info(check_account_transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountTransactionApi.update_check_account_transaction ...'
      end
      # verify the required parameter 'check_account_transaction_id' is set
      if @api_client.config.client_side_validation && check_account_transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_transaction_id' when calling CheckAccountTransactionApi.update_check_account_transaction"
      end
      # resource path
      local_var_path = '/CheckAccountTransaction/{checkAccountTransactionId}'.sub('{' + 'checkAccountTransactionId' + '}', CGI.escape(check_account_transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_check_account_transaction_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCheckAccountTransactionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountTransactionApi.update_check_account_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountTransactionApi#update_check_account_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
