require 'cgi'

module OpenapiClient
  class ContactFieldApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create contact field
    # Create contact field
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomField] :model_contact_custom_field 
    # @return [ModelContactCustomFieldResponse]
    def create_contact_field(opts = {})
      data, _status_code, _headers = create_contact_field_with_http_info(opts)
      data
    end

    # Create contact field
    # Create contact field
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomField] :model_contact_custom_field 
    # @return [Array<(ModelContactCustomFieldResponse, Integer, Hash)>] ModelContactCustomFieldResponse data, response status code and response headers
    def create_contact_field_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.create_contact_field ...'
      end
      # resource path
      local_var_path = '/ContactCustomField'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact_custom_field'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelContactCustomFieldResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.create_contact_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#create_contact_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create contact field setting
    # Create contact field setting
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomFieldSetting] :model_contact_custom_field_setting 
    # @return [GetContactFieldSettings200Response]
    def create_contact_field_setting(opts = {})
      data, _status_code, _headers = create_contact_field_setting_with_http_info(opts)
      data
    end

    # Create contact field setting
    # Create contact field setting
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomFieldSetting] :model_contact_custom_field_setting 
    # @return [Array<(GetContactFieldSettings200Response, Integer, Hash)>] GetContactFieldSettings200Response data, response status code and response headers
    def create_contact_field_setting_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.create_contact_field_setting ...'
      end
      # resource path
      local_var_path = '/ContactCustomFieldSetting'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact_custom_field_setting'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetContactFieldSettings200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.create_contact_field_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#create_contact_field_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete a contact field
    # @param contact_custom_field_id [Integer] Id of contact field
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_contact_custom_field_id(contact_custom_field_id, opts = {})
      data, _status_code, _headers = delete_contact_custom_field_id_with_http_info(contact_custom_field_id, opts)
      data
    end

    # delete a contact field
    # @param contact_custom_field_id [Integer] Id of contact field
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_contact_custom_field_id_with_http_info(contact_custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.delete_contact_custom_field_id ...'
      end
      # verify the required parameter 'contact_custom_field_id' is set
      if @api_client.config.client_side_validation && contact_custom_field_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_custom_field_id' when calling ContactFieldApi.delete_contact_custom_field_id"
      end
      # resource path
      local_var_path = '/ContactCustomField/{contactCustomFieldId}'.sub('{' + 'contactCustomFieldId' + '}', CGI.escape(contact_custom_field_id.to_s))

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
        :operation => :"ContactFieldApi.delete_contact_custom_field_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#delete_contact_custom_field_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a contact field setting
    # @param contact_custom_field_setting_id [Integer] Id of contact field to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_contact_field_setting(contact_custom_field_setting_id, opts = {})
      data, _status_code, _headers = delete_contact_field_setting_with_http_info(contact_custom_field_setting_id, opts)
      data
    end

    # Deletes a contact field setting
    # @param contact_custom_field_setting_id [Integer] Id of contact field to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_contact_field_setting_with_http_info(contact_custom_field_setting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.delete_contact_field_setting ...'
      end
      # verify the required parameter 'contact_custom_field_setting_id' is set
      if @api_client.config.client_side_validation && contact_custom_field_setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_custom_field_setting_id' when calling ContactFieldApi.delete_contact_field_setting"
      end
      # resource path
      local_var_path = '/ContactCustomFieldSetting/{contactCustomFieldSettingId}'.sub('{' + 'contactCustomFieldSettingId' + '}', CGI.escape(contact_custom_field_setting_id.to_s))

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
        :operation => :"ContactFieldApi.delete_contact_field_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#delete_contact_field_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find contact field setting by ID
    # Returns a single contact field setting
    # @param contact_custom_field_setting_id [Integer] ID of contact field to return
    # @param [Hash] opts the optional parameters
    # @return [GetContactFieldSettings200Response]
    def get_contact_field_setting_by_id(contact_custom_field_setting_id, opts = {})
      data, _status_code, _headers = get_contact_field_setting_by_id_with_http_info(contact_custom_field_setting_id, opts)
      data
    end

    # Find contact field setting by ID
    # Returns a single contact field setting
    # @param contact_custom_field_setting_id [Integer] ID of contact field to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactFieldSettings200Response, Integer, Hash)>] GetContactFieldSettings200Response data, response status code and response headers
    def get_contact_field_setting_by_id_with_http_info(contact_custom_field_setting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.get_contact_field_setting_by_id ...'
      end
      # verify the required parameter 'contact_custom_field_setting_id' is set
      if @api_client.config.client_side_validation && contact_custom_field_setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_custom_field_setting_id' when calling ContactFieldApi.get_contact_field_setting_by_id"
      end
      # resource path
      local_var_path = '/ContactCustomFieldSetting/{contactCustomFieldSettingId}'.sub('{' + 'contactCustomFieldSettingId' + '}', CGI.escape(contact_custom_field_setting_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetContactFieldSettings200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.get_contact_field_setting_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#get_contact_field_setting_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve contact field settings
    # Retrieve all contact field settings
    # @param [Hash] opts the optional parameters
    # @return [GetContactFieldSettings200Response]
    def get_contact_field_settings(opts = {})
      data, _status_code, _headers = get_contact_field_settings_with_http_info(opts)
      data
    end

    # Retrieve contact field settings
    # Retrieve all contact field settings
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactFieldSettings200Response, Integer, Hash)>] GetContactFieldSettings200Response data, response status code and response headers
    def get_contact_field_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.get_contact_field_settings ...'
      end
      # resource path
      local_var_path = '/ContactCustomFieldSetting'

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
      return_type = opts[:debug_return_type] || 'GetContactFieldSettings200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.get_contact_field_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#get_contact_field_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve contact fields
    # Retrieve all contact fields
    # @param [Hash] opts the optional parameters
    # @return [GetContactFields200Response]
    def get_contact_fields(opts = {})
      data, _status_code, _headers = get_contact_fields_with_http_info(opts)
      data
    end

    # Retrieve contact fields
    # Retrieve all contact fields
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactFields200Response, Integer, Hash)>] GetContactFields200Response data, response status code and response headers
    def get_contact_fields_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.get_contact_fields ...'
      end
      # resource path
      local_var_path = '/ContactCustomField'

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
      return_type = opts[:debug_return_type] || 'GetContactFields200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.get_contact_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#get_contact_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve contact fields
    # Retrieve all contact fields
    # @param contact_custom_field_id [Float] id of the contact field
    # @param [Hash] opts the optional parameters
    # @return [GetContactFields200Response]
    def get_contact_fields_by_id(contact_custom_field_id, opts = {})
      data, _status_code, _headers = get_contact_fields_by_id_with_http_info(contact_custom_field_id, opts)
      data
    end

    # Retrieve contact fields
    # Retrieve all contact fields
    # @param contact_custom_field_id [Float] id of the contact field
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactFields200Response, Integer, Hash)>] GetContactFields200Response data, response status code and response headers
    def get_contact_fields_by_id_with_http_info(contact_custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.get_contact_fields_by_id ...'
      end
      # verify the required parameter 'contact_custom_field_id' is set
      if @api_client.config.client_side_validation && contact_custom_field_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_custom_field_id' when calling ContactFieldApi.get_contact_fields_by_id"
      end
      # resource path
      local_var_path = '/ContactCustomField/{contactCustomFieldId}'.sub('{' + 'contactCustomFieldId' + '}', CGI.escape(contact_custom_field_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetContactFields200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.get_contact_fields_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#get_contact_fields_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Placeholders
    # Retrieve all Placeholders
    # @param object_name [String] Model name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sub_object_name Sub model name, required if you have \&quot;Email\&quot; at objectName
    # @return [GetPlaceholder200Response]
    def get_placeholder(object_name, opts = {})
      data, _status_code, _headers = get_placeholder_with_http_info(object_name, opts)
      data
    end

    # Retrieve Placeholders
    # Retrieve all Placeholders
    # @param object_name [String] Model name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sub_object_name Sub model name, required if you have \&quot;Email\&quot; at objectName
    # @return [Array<(GetPlaceholder200Response, Integer, Hash)>] GetPlaceholder200Response data, response status code and response headers
    def get_placeholder_with_http_info(object_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.get_placeholder ...'
      end
      # verify the required parameter 'object_name' is set
      if @api_client.config.client_side_validation && object_name.nil?
        fail ArgumentError, "Missing the required parameter 'object_name' when calling ContactFieldApi.get_placeholder"
      end
      # verify enum value
      allowable_values = ["Invoice", "CreditNote", "Order", "Contact", "Letter", "Email"]
      if @api_client.config.client_side_validation && !allowable_values.include?(object_name)
        fail ArgumentError, "invalid value for \"object_name\", must be one of #{allowable_values}"
      end
      allowable_values = ["Invoice", "CreditNote", "Order", "Contact", "Letter"]
      if @api_client.config.client_side_validation && opts[:'sub_object_name'] && !allowable_values.include?(opts[:'sub_object_name'])
        fail ArgumentError, "invalid value for \"sub_object_name\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/Textparser/fetchDictionaryEntriesByType'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'objectName'] = object_name
      query_params[:'subObjectName'] = opts[:'sub_object_name'] if !opts[:'sub_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetPlaceholder200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.get_placeholder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#get_placeholder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Receive count reference
    # Receive count reference
    # @param contact_custom_field_setting_id [Integer] ID of contact field you want to get the reference count
    # @param [Hash] opts the optional parameters
    # @return [GetReferenceCount200Response]
    def get_reference_count(contact_custom_field_setting_id, opts = {})
      data, _status_code, _headers = get_reference_count_with_http_info(contact_custom_field_setting_id, opts)
      data
    end

    # Receive count reference
    # Receive count reference
    # @param contact_custom_field_setting_id [Integer] ID of contact field you want to get the reference count
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetReferenceCount200Response, Integer, Hash)>] GetReferenceCount200Response data, response status code and response headers
    def get_reference_count_with_http_info(contact_custom_field_setting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.get_reference_count ...'
      end
      # verify the required parameter 'contact_custom_field_setting_id' is set
      if @api_client.config.client_side_validation && contact_custom_field_setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_custom_field_setting_id' when calling ContactFieldApi.get_reference_count"
      end
      # resource path
      local_var_path = '/ContactCustomFieldSetting/{contactCustomFieldSettingId}/getReferenceCount'.sub('{' + 'contactCustomFieldSettingId' + '}', CGI.escape(contact_custom_field_setting_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetReferenceCount200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.get_reference_count",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#get_reference_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update contact field setting
    # Update an existing contact field  setting
    # @param contact_custom_field_setting_id [Integer] ID of contact field setting you want to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomFieldSettingUpdate] :model_contact_custom_field_setting_update 
    # @return [ModelContactCustomFieldSettingResponse]
    def update_contact_field_setting(contact_custom_field_setting_id, opts = {})
      data, _status_code, _headers = update_contact_field_setting_with_http_info(contact_custom_field_setting_id, opts)
      data
    end

    # Update contact field setting
    # Update an existing contact field  setting
    # @param contact_custom_field_setting_id [Integer] ID of contact field setting you want to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomFieldSettingUpdate] :model_contact_custom_field_setting_update 
    # @return [Array<(ModelContactCustomFieldSettingResponse, Integer, Hash)>] ModelContactCustomFieldSettingResponse data, response status code and response headers
    def update_contact_field_setting_with_http_info(contact_custom_field_setting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.update_contact_field_setting ...'
      end
      # verify the required parameter 'contact_custom_field_setting_id' is set
      if @api_client.config.client_side_validation && contact_custom_field_setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_custom_field_setting_id' when calling ContactFieldApi.update_contact_field_setting"
      end
      # resource path
      local_var_path = '/ContactCustomFieldSetting/{contactCustomFieldSettingId}'.sub('{' + 'contactCustomFieldSettingId' + '}', CGI.escape(contact_custom_field_setting_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact_custom_field_setting_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelContactCustomFieldSettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.update_contact_field_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#update_contact_field_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a contact field
    # Update a contact field
    # @param contact_custom_field_id [Float] id of the contact field
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomFieldUpdate] :model_contact_custom_field_update Update data
    # @return [ModelContactCustomFieldResponse]
    def update_contactfield(contact_custom_field_id, opts = {})
      data, _status_code, _headers = update_contactfield_with_http_info(contact_custom_field_id, opts)
      data
    end

    # Update a contact field
    # Update a contact field
    # @param contact_custom_field_id [Float] id of the contact field
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactCustomFieldUpdate] :model_contact_custom_field_update Update data
    # @return [Array<(ModelContactCustomFieldResponse, Integer, Hash)>] ModelContactCustomFieldResponse data, response status code and response headers
    def update_contactfield_with_http_info(contact_custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactFieldApi.update_contactfield ...'
      end
      # verify the required parameter 'contact_custom_field_id' is set
      if @api_client.config.client_side_validation && contact_custom_field_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_custom_field_id' when calling ContactFieldApi.update_contactfield"
      end
      # resource path
      local_var_path = '/ContactCustomField/{contactCustomFieldId}'.sub('{' + 'contactCustomFieldId' + '}', CGI.escape(contact_custom_field_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact_custom_field_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelContactCustomFieldResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactFieldApi.update_contactfield",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactFieldApi#update_contactfield\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
