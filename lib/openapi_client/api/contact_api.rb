require 'cgi'

module OpenapiClient
  class ContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check if a customer number is available
    # Checks if a given customer number is available or already used.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :customer_number The customer number to be checked.
    # @return [ContactCustomerNumberAvailabilityCheck200Response]
    def contact_customer_number_availability_check(opts = {})
      data, _status_code, _headers = contact_customer_number_availability_check_with_http_info(opts)
      data
    end

    # Check if a customer number is available
    # Checks if a given customer number is available or already used.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :customer_number The customer number to be checked.
    # @return [Array<(ContactCustomerNumberAvailabilityCheck200Response, Integer, Hash)>] ContactCustomerNumberAvailabilityCheck200Response data, response status code and response headers
    def contact_customer_number_availability_check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.contact_customer_number_availability_check ...'
      end
      # resource path
      local_var_path = '/Contact/Mapper/checkCustomerNumberAvailability'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'customerNumber'] = opts[:'customer_number'] if !opts[:'customer_number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ContactCustomerNumberAvailabilityCheck200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.contact_customer_number_availability_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#contact_customer_number_availability_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new contact
    # Creates a new contact.<br>       For adding addresses and communication ways, you will need to use the ContactAddress and CommunicationWay endpoints.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContact] :model_contact Creation data
    # @return [ModelContactResponse]
    def create_contact(opts = {})
      data, _status_code, _headers = create_contact_with_http_info(opts)
      data
    end

    # Create a new contact
    # Creates a new contact.&lt;br&gt;       For adding addresses and communication ways, you will need to use the ContactAddress and CommunicationWay endpoints.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContact] :model_contact Creation data
    # @return [Array<(ModelContactResponse, Integer, Hash)>] ModelContactResponse data, response status code and response headers
    def create_contact_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.create_contact ...'
      end
      # resource path
      local_var_path = '/Contact'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.create_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a contact
    # @param contact_id [Integer] Id of contact resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_contact(contact_id, opts = {})
      data, _status_code, _headers = delete_contact_with_http_info(contact_id, opts)
      data
    end

    # Deletes a contact
    # @param contact_id [Integer] Id of contact resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_contact_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.delete_contact ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.delete_contact"
      end
      # resource path
      local_var_path = '/Contact/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

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
        :operation => :"ContactApi.delete_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find contacts by custom field value
    # Returns an array of contacts having a certain custom field value set.
    # @param value [String] The value to be checked.
    # @param custom_field_name [String] The ContactCustomFieldSetting name, if no ContactCustomFieldSetting is provided.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :custom_field_setting_id ID of ContactCustomFieldSetting for which the value has to be checked.
    # @option opts [String] :custom_field_setting_object_name Object name. Only needed if you also defined the ID of a ContactCustomFieldSetting.
    # @return [FindContactsByCustomFieldValue200Response]
    def find_contacts_by_custom_field_value(value, custom_field_name, opts = {})
      data, _status_code, _headers = find_contacts_by_custom_field_value_with_http_info(value, custom_field_name, opts)
      data
    end

    # Find contacts by custom field value
    # Returns an array of contacts having a certain custom field value set.
    # @param value [String] The value to be checked.
    # @param custom_field_name [String] The ContactCustomFieldSetting name, if no ContactCustomFieldSetting is provided.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :custom_field_setting_id ID of ContactCustomFieldSetting for which the value has to be checked.
    # @option opts [String] :custom_field_setting_object_name Object name. Only needed if you also defined the ID of a ContactCustomFieldSetting.
    # @return [Array<(FindContactsByCustomFieldValue200Response, Integer, Hash)>] FindContactsByCustomFieldValue200Response data, response status code and response headers
    def find_contacts_by_custom_field_value_with_http_info(value, custom_field_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.find_contacts_by_custom_field_value ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling ContactApi.find_contacts_by_custom_field_value"
      end
      # verify the required parameter 'custom_field_name' is set
      if @api_client.config.client_side_validation && custom_field_name.nil?
        fail ArgumentError, "Missing the required parameter 'custom_field_name' when calling ContactApi.find_contacts_by_custom_field_value"
      end
      # resource path
      local_var_path = '/Contact/Factory/findContactsByCustomFieldValue'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'value'] = value
      query_params[:'customFieldName'] = custom_field_name
      query_params[:'customFieldSetting[id]'] = opts[:'custom_field_setting_id'] if !opts[:'custom_field_setting_id'].nil?
      query_params[:'customFieldSetting[objectName]'] = opts[:'custom_field_setting_object_name'] if !opts[:'custom_field_setting_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FindContactsByCustomFieldValue200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.find_contacts_by_custom_field_value",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#find_contacts_by_custom_field_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find contact by ID
    # Returns a single contact
    # @param contact_id [Integer] ID of contact to return
    # @param [Hash] opts the optional parameters
    # @return [FindContactsByCustomFieldValue200Response]
    def get_contact_by_id(contact_id, opts = {})
      data, _status_code, _headers = get_contact_by_id_with_http_info(contact_id, opts)
      data
    end

    # Find contact by ID
    # Returns a single contact
    # @param contact_id [Integer] ID of contact to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(FindContactsByCustomFieldValue200Response, Integer, Hash)>] FindContactsByCustomFieldValue200Response data, response status code and response headers
    def get_contact_by_id_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contact_by_id ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.get_contact_by_id"
      end
      # resource path
      local_var_path = '/Contact/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FindContactsByCustomFieldValue200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.get_contact_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contact_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get number of all items
    # Get number of all invoices, orders, etc. of a specified contact
    # @param contact_id [Integer] ID of contact to return
    # @param [Hash] opts the optional parameters
    # @return [GetContactTabsItemCountById200Response]
    def get_contact_tabs_item_count_by_id(contact_id, opts = {})
      data, _status_code, _headers = get_contact_tabs_item_count_by_id_with_http_info(contact_id, opts)
      data
    end

    # Get number of all items
    # Get number of all invoices, orders, etc. of a specified contact
    # @param contact_id [Integer] ID of contact to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactTabsItemCountById200Response, Integer, Hash)>] GetContactTabsItemCountById200Response data, response status code and response headers
    def get_contact_tabs_item_count_by_id_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contact_tabs_item_count_by_id ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.get_contact_tabs_item_count_by_id"
      end
      # resource path
      local_var_path = '/Contact/{contactId}/getTabsItemCount'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetContactTabsItemCountById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.get_contact_tabs_item_count_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contact_tabs_item_count_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve contacts
    # There are a multitude of parameter which can be used to filter.<br>       A few of them are attached but       for a complete list please check out <a href='#tag/Contact/How-to-filter-for-certain-contacts'>this</a> list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :depth Defines if both organizations &lt;b&gt;and&lt;/b&gt; persons should be returned.&lt;br&gt;       &#39;0&#39; -&gt; only organizations, &#39;1&#39; -&gt; organizations and persons
    # @option opts [String] :customer_number Retrieve all contacts with this customer number
    # @return [FindContactsByCustomFieldValue200Response]
    def get_contacts(opts = {})
      data, _status_code, _headers = get_contacts_with_http_info(opts)
      data
    end

    # Retrieve contacts
    # There are a multitude of parameter which can be used to filter.&lt;br&gt;       A few of them are attached but       for a complete list please check out &lt;a href&#x3D;&#39;#tag/Contact/How-to-filter-for-certain-contacts&#39;&gt;this&lt;/a&gt; list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :depth Defines if both organizations &lt;b&gt;and&lt;/b&gt; persons should be returned.&lt;br&gt;       &#39;0&#39; -&gt; only organizations, &#39;1&#39; -&gt; organizations and persons
    # @option opts [String] :customer_number Retrieve all contacts with this customer number
    # @return [Array<(FindContactsByCustomFieldValue200Response, Integer, Hash)>] FindContactsByCustomFieldValue200Response data, response status code and response headers
    def get_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contacts ...'
      end
      allowable_values = ["0", "1"]
      if @api_client.config.client_side_validation && opts[:'depth'] && !allowable_values.include?(opts[:'depth'])
        fail ArgumentError, "invalid value for \"depth\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/Contact'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?
      query_params[:'customerNumber'] = opts[:'customer_number'] if !opts[:'customer_number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FindContactsByCustomFieldValue200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.get_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get next free customer number
    # Retrieves the next available customer number. Avoids duplicates.
    # @param [Hash] opts the optional parameters
    # @return [GetNextCustomerNumber200Response]
    def get_next_customer_number(opts = {})
      data, _status_code, _headers = get_next_customer_number_with_http_info(opts)
      data
    end

    # Get next free customer number
    # Retrieves the next available customer number. Avoids duplicates.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetNextCustomerNumber200Response, Integer, Hash)>] GetNextCustomerNumber200Response data, response status code and response headers
    def get_next_customer_number_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_next_customer_number ...'
      end
      # resource path
      local_var_path = '/Contact/Factory/getNextCustomerNumber'

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
      return_type = opts[:debug_return_type] || 'GetNextCustomerNumber200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.get_next_customer_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_next_customer_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a existing contact
    # Update a contact
    # @param contact_id [Integer] ID of contact to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactUpdate] :model_contact_update Update data
    # @return [ModelContactResponse]
    def update_contact(contact_id, opts = {})
      data, _status_code, _headers = update_contact_with_http_info(contact_id, opts)
      data
    end

    # Update a existing contact
    # Update a contact
    # @param contact_id [Integer] ID of contact to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelContactUpdate] :model_contact_update Update data
    # @return [Array<(ModelContactResponse, Integer, Hash)>] ModelContactResponse data, response status code and response headers
    def update_contact_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.update_contact ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.update_contact"
      end
      # resource path
      local_var_path = '/Contact/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_contact_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ContactApi.update_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#update_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
