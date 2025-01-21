require 'cgi'

module OpenapiClient
  class OrderPosApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes an order Position
    # @param order_pos_id [Integer] Id of order position resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_order_pos(order_pos_id, opts = {})
      data, _status_code, _headers = delete_order_pos_with_http_info(order_pos_id, opts)
      data
    end

    # Deletes an order Position
    # @param order_pos_id [Integer] Id of order position resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_order_pos_with_http_info(order_pos_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderPosApi.delete_order_pos ...'
      end
      # verify the required parameter 'order_pos_id' is set
      if @api_client.config.client_side_validation && order_pos_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_pos_id' when calling OrderPosApi.delete_order_pos"
      end
      # resource path
      local_var_path = '/OrderPos/{orderPosId}'.sub('{' + 'orderPosId' + '}', CGI.escape(order_pos_id.to_s))

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
        :operation => :"OrderPosApi.delete_order_pos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderPosApi#delete_order_pos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find order position by ID
    # Returns a single order position
    # @param order_pos_id [Integer] ID of order position to return
    # @param [Hash] opts the optional parameters
    # @return [GetOrderPositionsById200Response]
    def get_order_position_by_id(order_pos_id, opts = {})
      data, _status_code, _headers = get_order_position_by_id_with_http_info(order_pos_id, opts)
      data
    end

    # Find order position by ID
    # Returns a single order position
    # @param order_pos_id [Integer] ID of order position to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetOrderPositionsById200Response, Integer, Hash)>] GetOrderPositionsById200Response data, response status code and response headers
    def get_order_position_by_id_with_http_info(order_pos_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderPosApi.get_order_position_by_id ...'
      end
      # verify the required parameter 'order_pos_id' is set
      if @api_client.config.client_side_validation && order_pos_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_pos_id' when calling OrderPosApi.get_order_position_by_id"
      end
      # resource path
      local_var_path = '/OrderPos/{orderPosId}'.sub('{' + 'orderPosId' + '}', CGI.escape(order_pos_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetOrderPositionsById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderPosApi.get_order_position_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderPosApi#get_order_position_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve order positions
    # Retrieve all order positions depending on the filters defined in the query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :order_id Retrieve all order positions belonging to this order. Must be provided with voucher[objectName]
    # @option opts [String] :order_object_name Only required if order[id] was provided. &#39;Order&#39; should be used as value.
    # @return [GetOrderPositionsById200Response]
    def get_order_positions(opts = {})
      data, _status_code, _headers = get_order_positions_with_http_info(opts)
      data
    end

    # Retrieve order positions
    # Retrieve all order positions depending on the filters defined in the query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :order_id Retrieve all order positions belonging to this order. Must be provided with voucher[objectName]
    # @option opts [String] :order_object_name Only required if order[id] was provided. &#39;Order&#39; should be used as value.
    # @return [Array<(GetOrderPositionsById200Response, Integer, Hash)>] GetOrderPositionsById200Response data, response status code and response headers
    def get_order_positions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderPosApi.get_order_positions ...'
      end
      # resource path
      local_var_path = '/OrderPos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'order[id]'] = opts[:'order_id'] if !opts[:'order_id'].nil?
      query_params[:'order[objectName]'] = opts[:'order_object_name'] if !opts[:'order_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetOrderPositionsById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderPosApi.get_order_positions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderPosApi#get_order_positions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing order position
    # Update an order position
    # @param order_pos_id [Integer] ID of order position to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelOrderPosUpdate] :model_order_pos_update Update data
    # @return [ModelOrderPosResponse]
    def update_order_position(order_pos_id, opts = {})
      data, _status_code, _headers = update_order_position_with_http_info(order_pos_id, opts)
      data
    end

    # Update an existing order position
    # Update an order position
    # @param order_pos_id [Integer] ID of order position to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelOrderPosUpdate] :model_order_pos_update Update data
    # @return [Array<(ModelOrderPosResponse, Integer, Hash)>] ModelOrderPosResponse data, response status code and response headers
    def update_order_position_with_http_info(order_pos_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderPosApi.update_order_position ...'
      end
      # verify the required parameter 'order_pos_id' is set
      if @api_client.config.client_side_validation && order_pos_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_pos_id' when calling OrderPosApi.update_order_position"
      end
      # resource path
      local_var_path = '/OrderPos/{orderPosId}'.sub('{' + 'orderPosId' + '}', CGI.escape(order_pos_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_order_pos_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelOrderPosResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderPosApi.update_order_position",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderPosApi#update_order_position\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
