require 'cgi'

module OpenapiClient
  class CommunicationWayApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new contact communication way
    # Creates a new contact communication way.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCommunicationWay] :model_communication_way Creation data
    # @return [ModelCommunicationWayResponse]
    def create_communication_way(opts = {})
      data, _status_code, _headers = create_communication_way_with_http_info(opts)
      data
    end

    # Create a new contact communication way
    # Creates a new contact communication way.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCommunicationWay] :model_communication_way Creation data
    # @return [Array<(ModelCommunicationWayResponse, Integer, Hash)>] ModelCommunicationWayResponse data, response status code and response headers
    def create_communication_way_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationWayApi.create_communication_way ...'
      end
      # resource path
      local_var_path = '/CommunicationWay'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_communication_way'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCommunicationWayResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CommunicationWayApi.create_communication_way",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationWayApi#create_communication_way\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a communication way
    # @param communication_way_id [Integer] Id of communication way resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_communication_way(communication_way_id, opts = {})
      data, _status_code, _headers = delete_communication_way_with_http_info(communication_way_id, opts)
      data
    end

    # Deletes a communication way
    # @param communication_way_id [Integer] Id of communication way resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_communication_way_with_http_info(communication_way_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationWayApi.delete_communication_way ...'
      end
      # verify the required parameter 'communication_way_id' is set
      if @api_client.config.client_side_validation && communication_way_id.nil?
        fail ArgumentError, "Missing the required parameter 'communication_way_id' when calling CommunicationWayApi.delete_communication_way"
      end
      # resource path
      local_var_path = '/CommunicationWay/{communicationWayId}'.sub('{' + 'communicationWayId' + '}', CGI.escape(communication_way_id.to_s))

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
        :operation => :"CommunicationWayApi.delete_communication_way",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationWayApi#delete_communication_way\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find communication way by ID
    # Returns a single communication way
    # @param communication_way_id [Integer] ID of communication way to return
    # @param [Hash] opts the optional parameters
    # @return [GetCommunicationWays200Response]
    def get_communication_way_by_id(communication_way_id, opts = {})
      data, _status_code, _headers = get_communication_way_by_id_with_http_info(communication_way_id, opts)
      data
    end

    # Find communication way by ID
    # Returns a single communication way
    # @param communication_way_id [Integer] ID of communication way to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCommunicationWays200Response, Integer, Hash)>] GetCommunicationWays200Response data, response status code and response headers
    def get_communication_way_by_id_with_http_info(communication_way_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationWayApi.get_communication_way_by_id ...'
      end
      # verify the required parameter 'communication_way_id' is set
      if @api_client.config.client_side_validation && communication_way_id.nil?
        fail ArgumentError, "Missing the required parameter 'communication_way_id' when calling CommunicationWayApi.get_communication_way_by_id"
      end
      # resource path
      local_var_path = '/CommunicationWay/{communicationWayId}'.sub('{' + 'communicationWayId' + '}', CGI.escape(communication_way_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetCommunicationWays200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CommunicationWayApi.get_communication_way_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationWayApi#get_communication_way_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve communication way keys
    # Returns all communication way keys.
    # @param [Hash] opts the optional parameters
    # @return [GetCommunicationWayKeys200Response]
    def get_communication_way_keys(opts = {})
      data, _status_code, _headers = get_communication_way_keys_with_http_info(opts)
      data
    end

    # Retrieve communication way keys
    # Returns all communication way keys.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCommunicationWayKeys200Response, Integer, Hash)>] GetCommunicationWayKeys200Response data, response status code and response headers
    def get_communication_way_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationWayApi.get_communication_way_keys ...'
      end
      # resource path
      local_var_path = '/CommunicationWayKey'

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
      return_type = opts[:debug_return_type] || 'GetCommunicationWayKeys200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CommunicationWayApi.get_communication_way_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationWayApi#get_communication_way_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve communication ways
    # Returns all communication ways which have been added up until now. Filters can be added.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :contact_id ID of contact for which you want the communication ways.
    # @option opts [String] :contact_object_name Object name. Only needed if you also defined the ID of a contact.
    # @option opts [String] :type Type of the communication ways you want to get.
    # @option opts [String] :main Define if you only want the main communication way.
    # @return [GetCommunicationWays200Response]
    def get_communication_ways(opts = {})
      data, _status_code, _headers = get_communication_ways_with_http_info(opts)
      data
    end

    # Retrieve communication ways
    # Returns all communication ways which have been added up until now. Filters can be added.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :contact_id ID of contact for which you want the communication ways.
    # @option opts [String] :contact_object_name Object name. Only needed if you also defined the ID of a contact.
    # @option opts [String] :type Type of the communication ways you want to get.
    # @option opts [String] :main Define if you only want the main communication way.
    # @return [Array<(GetCommunicationWays200Response, Integer, Hash)>] GetCommunicationWays200Response data, response status code and response headers
    def get_communication_ways_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationWayApi.get_communication_ways ...'
      end
      allowable_values = ["PHONE", "EMAIL", "WEB", "MOBILE"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      allowable_values = ["0", "1"]
      if @api_client.config.client_side_validation && opts[:'main'] && !allowable_values.include?(opts[:'main'])
        fail ArgumentError, "invalid value for \"main\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/CommunicationWay'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'contact[id]'] = opts[:'contact_id'] if !opts[:'contact_id'].nil?
      query_params[:'contact[objectName]'] = opts[:'contact_object_name'] if !opts[:'contact_object_name'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'main'] = opts[:'main'] if !opts[:'main'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCommunicationWays200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CommunicationWayApi.get_communication_ways",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationWayApi#get_communication_ways\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a existing communication way
    # Update a communication way
    # @param communication_way_id [Integer] ID of CommunicationWay to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCommunicationWayUpdate] :model_communication_way_update Update data
    # @return [ModelCommunicationWayResponse]
    def update_communication_way(communication_way_id, opts = {})
      data, _status_code, _headers = update_communication_way_with_http_info(communication_way_id, opts)
      data
    end

    # Update a existing communication way
    # Update a communication way
    # @param communication_way_id [Integer] ID of CommunicationWay to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCommunicationWayUpdate] :model_communication_way_update Update data
    # @return [Array<(ModelCommunicationWayResponse, Integer, Hash)>] ModelCommunicationWayResponse data, response status code and response headers
    def update_communication_way_with_http_info(communication_way_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationWayApi.update_communication_way ...'
      end
      # verify the required parameter 'communication_way_id' is set
      if @api_client.config.client_side_validation && communication_way_id.nil?
        fail ArgumentError, "Missing the required parameter 'communication_way_id' when calling CommunicationWayApi.update_communication_way"
      end
      # resource path
      local_var_path = '/CommunicationWay/{communicationWayId}'.sub('{' + 'communicationWayId' + '}', CGI.escape(communication_way_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_communication_way_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCommunicationWayResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CommunicationWayApi.update_communication_way",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationWayApi#update_communication_way\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
