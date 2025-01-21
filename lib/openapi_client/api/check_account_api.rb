require 'cgi'

module OpenapiClient
  class CheckAccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new clearing account
    # Creates a new clearing account.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateClearingAccount] :create_clearing_account Data to create a clearning account
    # @return [CreateClearingAccount201Response]
    def create_clearing_account(opts = {})
      data, _status_code, _headers = create_clearing_account_with_http_info(opts)
      data
    end

    # Create a new clearing account
    # Creates a new clearing account.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateClearingAccount] :create_clearing_account Data to create a clearning account
    # @return [Array<(CreateClearingAccount201Response, Integer, Hash)>] CreateClearingAccount201Response data, response status code and response headers
    def create_clearing_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountApi.create_clearing_account ...'
      end
      # resource path
      local_var_path = '/CheckAccount/Factory/clearingAccount'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_clearing_account'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateClearingAccount201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountApi.create_clearing_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountApi#create_clearing_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new file import account
    # Creates a new banking account for file imports (CSV, MT940).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateFileImportAccount] :create_file_import_account Data to create a file import account
    # @return [CreateFileImportAccount201Response]
    def create_file_import_account(opts = {})
      data, _status_code, _headers = create_file_import_account_with_http_info(opts)
      data
    end

    # Create a new file import account
    # Creates a new banking account for file imports (CSV, MT940).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateFileImportAccount] :create_file_import_account Data to create a file import account
    # @return [Array<(CreateFileImportAccount201Response, Integer, Hash)>] CreateFileImportAccount201Response data, response status code and response headers
    def create_file_import_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountApi.create_file_import_account ...'
      end
      # resource path
      local_var_path = '/CheckAccount/Factory/fileImportAccount'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_file_import_account'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateFileImportAccount201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountApi.create_file_import_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountApi#create_file_import_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a check account
    # @param check_account_id [Integer] Id of check account to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_check_account(check_account_id, opts = {})
      data, _status_code, _headers = delete_check_account_with_http_info(check_account_id, opts)
      data
    end

    # Deletes a check account
    # @param check_account_id [Integer] Id of check account to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_check_account_with_http_info(check_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountApi.delete_check_account ...'
      end
      # verify the required parameter 'check_account_id' is set
      if @api_client.config.client_side_validation && check_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_id' when calling CheckAccountApi.delete_check_account"
      end
      # resource path
      local_var_path = '/CheckAccount/{checkAccountId}'.sub('{' + 'checkAccountId' + '}', CGI.escape(check_account_id.to_s))

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
        :operation => :"CheckAccountApi.delete_check_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountApi#delete_check_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the balance at a given date
    # Get the balance, calculated as the sum of all transactions sevdesk knows, up to and including the given date. Note that this balance does not have to be the actual bank account balance, e.g. if sevdesk did not import old transactions.
    # @param check_account_id [Integer] ID of check account
    # @param date [Date] Only consider transactions up to this date at 23:59:59
    # @param [Hash] opts the optional parameters
    # @return [GetBalanceAtDate200Response]
    def get_balance_at_date(check_account_id, date, opts = {})
      data, _status_code, _headers = get_balance_at_date_with_http_info(check_account_id, date, opts)
      data
    end

    # Get the balance at a given date
    # Get the balance, calculated as the sum of all transactions sevdesk knows, up to and including the given date. Note that this balance does not have to be the actual bank account balance, e.g. if sevdesk did not import old transactions.
    # @param check_account_id [Integer] ID of check account
    # @param date [Date] Only consider transactions up to this date at 23:59:59
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetBalanceAtDate200Response, Integer, Hash)>] GetBalanceAtDate200Response data, response status code and response headers
    def get_balance_at_date_with_http_info(check_account_id, date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountApi.get_balance_at_date ...'
      end
      # verify the required parameter 'check_account_id' is set
      if @api_client.config.client_side_validation && check_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_id' when calling CheckAccountApi.get_balance_at_date"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling CheckAccountApi.get_balance_at_date"
      end
      # resource path
      local_var_path = '/CheckAccount/{checkAccountId}/getBalanceAtDate'.sub('{' + 'checkAccountId' + '}', CGI.escape(check_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'date'] = date

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetBalanceAtDate200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountApi.get_balance_at_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountApi#get_balance_at_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find check account by ID
    # Retrieve an existing check account
    # @param check_account_id [Integer] ID of check account
    # @param [Hash] opts the optional parameters
    # @return [GetCheckAccounts200Response]
    def get_check_account_by_id(check_account_id, opts = {})
      data, _status_code, _headers = get_check_account_by_id_with_http_info(check_account_id, opts)
      data
    end

    # Find check account by ID
    # Retrieve an existing check account
    # @param check_account_id [Integer] ID of check account
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCheckAccounts200Response, Integer, Hash)>] GetCheckAccounts200Response data, response status code and response headers
    def get_check_account_by_id_with_http_info(check_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountApi.get_check_account_by_id ...'
      end
      # verify the required parameter 'check_account_id' is set
      if @api_client.config.client_side_validation && check_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_id' when calling CheckAccountApi.get_check_account_by_id"
      end
      # resource path
      local_var_path = '/CheckAccount/{checkAccountId}'.sub('{' + 'checkAccountId' + '}', CGI.escape(check_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetCheckAccounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountApi.get_check_account_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountApi#get_check_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve check accounts
    # Retrieve all check accounts
    # @param [Hash] opts the optional parameters
    # @return [GetCheckAccounts200Response]
    def get_check_accounts(opts = {})
      data, _status_code, _headers = get_check_accounts_with_http_info(opts)
      data
    end

    # Retrieve check accounts
    # Retrieve all check accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCheckAccounts200Response, Integer, Hash)>] GetCheckAccounts200Response data, response status code and response headers
    def get_check_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountApi.get_check_accounts ...'
      end
      # resource path
      local_var_path = '/CheckAccount'

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
      return_type = opts[:debug_return_type] || 'GetCheckAccounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountApi.get_check_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountApi#get_check_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing check account
    # Update a check account
    # @param check_account_id [Integer] ID of check account to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCheckAccountUpdate] :model_check_account_update Update data
    # @return [ModelCheckAccountResponse]
    def update_check_account(check_account_id, opts = {})
      data, _status_code, _headers = update_check_account_with_http_info(check_account_id, opts)
      data
    end

    # Update an existing check account
    # Update a check account
    # @param check_account_id [Integer] ID of check account to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCheckAccountUpdate] :model_check_account_update Update data
    # @return [Array<(ModelCheckAccountResponse, Integer, Hash)>] ModelCheckAccountResponse data, response status code and response headers
    def update_check_account_with_http_info(check_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckAccountApi.update_check_account ...'
      end
      # verify the required parameter 'check_account_id' is set
      if @api_client.config.client_side_validation && check_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_id' when calling CheckAccountApi.update_check_account"
      end
      # resource path
      local_var_path = '/CheckAccount/{checkAccountId}'.sub('{' + 'checkAccountId' + '}', CGI.escape(check_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_check_account_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCheckAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CheckAccountApi.update_check_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckAccountApi#update_check_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
