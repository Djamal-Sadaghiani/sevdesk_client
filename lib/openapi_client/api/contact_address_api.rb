require 'cgi'

module OpenapiClient
  class ContactAddressApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find contact address by ID
    # Returns a single contact address
    # @param contact_address_id [Integer] ID of contact address to return
    # @param [Hash] opts the optional parameters
    # @return [GetContactAddresses200Response]
    def contact_address_id(contact_address_id, opts = {})
      data, _status_code, _headers = contact_address_id_with_http_info(contact_address_id, opts)
      data
    end

    # Find contact address by ID
    # Returns a single contact address
    # @param contact_address_id [Integer] ID of contact address to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactAddresses200Response, Integer, Hash)>] GetContactAddresses200Response data, response status code and response headers
    def contact_address_id_with_http_info(contact_address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactAddressApi.contact_address_id ...'
      end
      # verify the required parameter 'contact_address_id' is set
      if @api_client.config.client_side_validation && contact_address_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_address_id' when calling ContactAddressApi.contact_address_id"
      end
      # resource path
      local_var_path = '/ContactAddress/{contactAddressId}'.sub('{' + 'contactAddressId' + '}', CGI.escape(contact_address_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetContactAddresses200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactAddressApi.contact_address_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactAddressApi#contact_address_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new contact address
    # Creates a new contact address.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactAddress] :model_contact_address Creation data
    # @return [ModelContactAddressResponse]
    def create_contact_address(opts = {})
      data, _status_code, _headers = create_contact_address_with_http_info(opts)
      data
    end

    # Create a new contact address
    # Creates a new contact address.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactAddress] :model_contact_address Creation data
    # @return [Array<(ModelContactAddressResponse, Integer, Hash)>] ModelContactAddressResponse data, response status code and response headers
    def create_contact_address_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactAddressApi.create_contact_address ...'
      end
      # resource path
      local_var_path = '/ContactAddress'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact_address'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelContactAddressResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactAddressApi.create_contact_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactAddressApi#create_contact_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a contact address
    # @param contact_address_id [Integer] Id of contact address resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_contact_address(contact_address_id, opts = {})
      data, _status_code, _headers = delete_contact_address_with_http_info(contact_address_id, opts)
      data
    end

    # Deletes a contact address
    # @param contact_address_id [Integer] Id of contact address resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_contact_address_with_http_info(contact_address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactAddressApi.delete_contact_address ...'
      end
      # verify the required parameter 'contact_address_id' is set
      if @api_client.config.client_side_validation && contact_address_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_address_id' when calling ContactAddressApi.delete_contact_address"
      end
      # resource path
      local_var_path = '/ContactAddress/{contactAddressId}'.sub('{' + 'contactAddressId' + '}', CGI.escape(contact_address_id.to_s))

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
        :operation => :"ContactAddressApi.delete_contact_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactAddressApi#delete_contact_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve contact addresses
    # Retrieve all contact addresses
    # @param [Hash] opts the optional parameters
    # @return [GetContactAddresses200Response]
    def get_contact_addresses(opts = {})
      data, _status_code, _headers = get_contact_addresses_with_http_info(opts)
      data
    end

    # Retrieve contact addresses
    # Retrieve all contact addresses
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactAddresses200Response, Integer, Hash)>] GetContactAddresses200Response data, response status code and response headers
    def get_contact_addresses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactAddressApi.get_contact_addresses ...'
      end
      # resource path
      local_var_path = '/ContactAddress'

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
      return_type = opts[:debug_return_type] || 'GetContactAddresses200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactAddressApi.get_contact_addresses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactAddressApi#get_contact_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update a existing contact address
    # update a existing contact address.
    # @param contact_address_id [Integer] ID of contact address to return
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactAddressUpdate] :model_contact_address_update Creation data
    # @return [ModelContactAddressResponse]
    def update_contact_address(contact_address_id, opts = {})
      data, _status_code, _headers = update_contact_address_with_http_info(contact_address_id, opts)
      data
    end

    # update a existing contact address
    # update a existing contact address.
    # @param contact_address_id [Integer] ID of contact address to return
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactAddressUpdate] :model_contact_address_update Creation data
    # @return [Array<(ModelContactAddressResponse, Integer, Hash)>] ModelContactAddressResponse data, response status code and response headers
    def update_contact_address_with_http_info(contact_address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactAddressApi.update_contact_address ...'
      end
      # verify the required parameter 'contact_address_id' is set
      if @api_client.config.client_side_validation && contact_address_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_address_id' when calling ContactAddressApi.update_contact_address"
      end
      # resource path
      local_var_path = '/ContactAddress/{contactAddressId}'.sub('{' + 'contactAddressId' + '}', CGI.escape(contact_address_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact_address_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelContactAddressResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactAddressApi.update_contact_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactAddressApi#update_contact_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
