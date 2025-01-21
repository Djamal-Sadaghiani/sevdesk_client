require 'cgi'

module OpenapiClient
  class AccountingContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new accounting contact
    # Creates a new accounting contact.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelAccountingContact] :model_accounting_contact Creation data
    # @return [ModelAccountingContactResponse]
    def create_accounting_contact(opts = {})
      data, _status_code, _headers = create_accounting_contact_with_http_info(opts)
      data
    end

    # Create a new accounting contact
    # Creates a new accounting contact.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelAccountingContact] :model_accounting_contact Creation data
    # @return [Array<(ModelAccountingContactResponse, Integer, Hash)>] ModelAccountingContactResponse data, response status code and response headers
    def create_accounting_contact_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountingContactApi.create_accounting_contact ...'
      end
      # resource path
      local_var_path = '/AccountingContact'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_accounting_contact'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelAccountingContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AccountingContactApi.create_accounting_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingContactApi#create_accounting_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an accounting contact
    # Attention, deleting an existing AccountingContact can lead to **booking errors**, especially in the **DATEV export**. Compatibility of sevdesk with DATEV is no longer guaranteed.
    # @param accounting_contact_id [Integer] Id of accounting contact resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_accounting_contact(accounting_contact_id, opts = {})
      data, _status_code, _headers = delete_accounting_contact_with_http_info(accounting_contact_id, opts)
      data
    end

    # Deletes an accounting contact
    # Attention, deleting an existing AccountingContact can lead to **booking errors**, especially in the **DATEV export**. Compatibility of sevdesk with DATEV is no longer guaranteed.
    # @param accounting_contact_id [Integer] Id of accounting contact resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_accounting_contact_with_http_info(accounting_contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountingContactApi.delete_accounting_contact ...'
      end
      # verify the required parameter 'accounting_contact_id' is set
      if @api_client.config.client_side_validation && accounting_contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'accounting_contact_id' when calling AccountingContactApi.delete_accounting_contact"
      end
      # resource path
      local_var_path = '/AccountingContact/{accountingContactId}'.sub('{' + 'accountingContactId' + '}', CGI.escape(accounting_contact_id.to_s))

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
        :operation => :"AccountingContactApi.delete_accounting_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingContactApi#delete_accounting_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve accounting contact
    # Returns all accounting contact which have been added up until now. Filters can be added.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :contact_id ID of contact for which you want the accounting contact.
    # @option opts [String] :contact_object_name Object name. Only needed if you also defined the ID of a contact.
    # @return [GetAccountingContact200Response]
    def get_accounting_contact(opts = {})
      data, _status_code, _headers = get_accounting_contact_with_http_info(opts)
      data
    end

    # Retrieve accounting contact
    # Returns all accounting contact which have been added up until now. Filters can be added.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :contact_id ID of contact for which you want the accounting contact.
    # @option opts [String] :contact_object_name Object name. Only needed if you also defined the ID of a contact.
    # @return [Array<(GetAccountingContact200Response, Integer, Hash)>] GetAccountingContact200Response data, response status code and response headers
    def get_accounting_contact_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountingContactApi.get_accounting_contact ...'
      end
      # resource path
      local_var_path = '/AccountingContact'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'contact[id]'] = opts[:'contact_id'] if !opts[:'contact_id'].nil?
      query_params[:'contact[objectName]'] = opts[:'contact_object_name'] if !opts[:'contact_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAccountingContact200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AccountingContactApi.get_accounting_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingContactApi#get_accounting_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find accounting contact by ID
    # Returns a single accounting contac
    # @param accounting_contact_id [Integer] ID of accounting contact to return
    # @param [Hash] opts the optional parameters
    # @return [GetAccountingContact200Response]
    def get_accounting_contact_by_id(accounting_contact_id, opts = {})
      data, _status_code, _headers = get_accounting_contact_by_id_with_http_info(accounting_contact_id, opts)
      data
    end

    # Find accounting contact by ID
    # Returns a single accounting contac
    # @param accounting_contact_id [Integer] ID of accounting contact to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccountingContact200Response, Integer, Hash)>] GetAccountingContact200Response data, response status code and response headers
    def get_accounting_contact_by_id_with_http_info(accounting_contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountingContactApi.get_accounting_contact_by_id ...'
      end
      # verify the required parameter 'accounting_contact_id' is set
      if @api_client.config.client_side_validation && accounting_contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'accounting_contact_id' when calling AccountingContactApi.get_accounting_contact_by_id"
      end
      # resource path
      local_var_path = '/AccountingContact/{accountingContactId}'.sub('{' + 'accountingContactId' + '}', CGI.escape(accounting_contact_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetAccountingContact200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AccountingContactApi.get_accounting_contact_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingContactApi#get_accounting_contact_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing accounting contact
    # Attention, updating an existing AccountingContact can lead to **booking errors**, especially in the **DATEV export**. Compatibility of sevdesk with DATEV is no longer guaranteed.
    # @param accounting_contact_id [Integer] ID of accounting contact to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelAccountingContactUpdate] :model_accounting_contact_update Update data
    # @return [ModelAccountingContactResponse]
    def update_accounting_contact(accounting_contact_id, opts = {})
      data, _status_code, _headers = update_accounting_contact_with_http_info(accounting_contact_id, opts)
      data
    end

    # Update an existing accounting contact
    # Attention, updating an existing AccountingContact can lead to **booking errors**, especially in the **DATEV export**. Compatibility of sevdesk with DATEV is no longer guaranteed.
    # @param accounting_contact_id [Integer] ID of accounting contact to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelAccountingContactUpdate] :model_accounting_contact_update Update data
    # @return [Array<(ModelAccountingContactResponse, Integer, Hash)>] ModelAccountingContactResponse data, response status code and response headers
    def update_accounting_contact_with_http_info(accounting_contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountingContactApi.update_accounting_contact ...'
      end
      # verify the required parameter 'accounting_contact_id' is set
      if @api_client.config.client_side_validation && accounting_contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'accounting_contact_id' when calling AccountingContactApi.update_accounting_contact"
      end
      # resource path
      local_var_path = '/AccountingContact/{accountingContactId}'.sub('{' + 'accountingContactId' + '}', CGI.escape(accounting_contact_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_accounting_contact_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelAccountingContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AccountingContactApi.update_accounting_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingContactApi#update_accounting_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
