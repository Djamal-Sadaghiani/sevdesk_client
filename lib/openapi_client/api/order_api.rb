require 'cgi'

module OpenapiClient
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create contract note from order
    # Create contract note from order
    # @param order_id [Integer] the id of the order
    # @param order_object_name [String] Model name, which is &#39;Order&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreatePackingListFromOrder] :model_create_packing_list_from_order Create contract note
    # @return [ModelOrderResponse]
    def create_contract_note_from_order(order_id, order_object_name, opts = {})
      data, _status_code, _headers = create_contract_note_from_order_with_http_info(order_id, order_object_name, opts)
      data
    end

    # Create contract note from order
    # Create contract note from order
    # @param order_id [Integer] the id of the order
    # @param order_object_name [String] Model name, which is &#39;Order&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreatePackingListFromOrder] :model_create_packing_list_from_order Create contract note
    # @return [Array<(ModelOrderResponse, Integer, Hash)>] ModelOrderResponse data, response status code and response headers
    def create_contract_note_from_order_with_http_info(order_id, order_object_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.create_contract_note_from_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.create_contract_note_from_order"
      end
      # verify the required parameter 'order_object_name' is set
      if @api_client.config.client_side_validation && order_object_name.nil?
        fail ArgumentError, "Missing the required parameter 'order_object_name' when calling OrderApi.create_contract_note_from_order"
      end
      # resource path
      local_var_path = '/Order/Factory/createContractNoteFromOrder'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'order[id]'] = order_id
      query_params[:'order[objectName]'] = order_object_name

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_create_packing_list_from_order'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.create_contract_note_from_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#create_contract_note_from_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new order
    # Creates an order to which positions can be added later.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveOrder] :save_order Creation data. Please be aware, that you need to provide at least all required parameter      of the order model!
    # @return [SaveOrderResponse]
    def create_order(opts = {})
      data, _status_code, _headers = create_order_with_http_info(opts)
      data
    end

    # Create a new order
    # Creates an order to which positions can be added later.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveOrder] :save_order Creation data. Please be aware, that you need to provide at least all required parameter      of the order model!
    # @return [Array<(SaveOrderResponse, Integer, Hash)>] SaveOrderResponse data, response status code and response headers
    def create_order_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.create_order ...'
      end
      # resource path
      local_var_path = '/Order/Factory/saveOrder'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'save_order'])

      # return_type
      return_type = opts[:debug_return_type] || 'SaveOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.create_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#create_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create packing list from order
    # Create packing list from order
    # @param order_id [Integer] the id of the order
    # @param order_object_name [String] Model name, which is &#39;Order&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreatePackingListFromOrder] :model_create_packing_list_from_order Create packing list
    # @return [ModelOrderResponse]
    def create_packing_list_from_order(order_id, order_object_name, opts = {})
      data, _status_code, _headers = create_packing_list_from_order_with_http_info(order_id, order_object_name, opts)
      data
    end

    # Create packing list from order
    # Create packing list from order
    # @param order_id [Integer] the id of the order
    # @param order_object_name [String] Model name, which is &#39;Order&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreatePackingListFromOrder] :model_create_packing_list_from_order Create packing list
    # @return [Array<(ModelOrderResponse, Integer, Hash)>] ModelOrderResponse data, response status code and response headers
    def create_packing_list_from_order_with_http_info(order_id, order_object_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.create_packing_list_from_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.create_packing_list_from_order"
      end
      # verify the required parameter 'order_object_name' is set
      if @api_client.config.client_side_validation && order_object_name.nil?
        fail ArgumentError, "Missing the required parameter 'order_object_name' when calling OrderApi.create_packing_list_from_order"
      end
      # resource path
      local_var_path = '/Order/Factory/createPackingListFromOrder'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'order[id]'] = order_id
      query_params[:'order[objectName]'] = order_object_name

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_create_packing_list_from_order'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.create_packing_list_from_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#create_packing_list_from_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an order
    # @param order_id [Integer] Id of order resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_order(order_id, opts = {})
      data, _status_code, _headers = delete_order_with_http_info(order_id, opts)
      data
    end

    # Deletes an order
    # @param order_id [Integer] Id of order resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_order_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.delete_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.delete_order"
      end
      # resource path
      local_var_path = '/Order/{orderId}'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

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
        :operation => :"OrderApi.delete_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#delete_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find order discounts
    # Returns all discounts of an order
    # @param order_id [Integer] ID of order to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limits the number of entries returned
    # @option opts [Integer] :offset set the index where the returned entries start
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [GetDiscounts200Response]
    def get_discounts(order_id, opts = {})
      data, _status_code, _headers = get_discounts_with_http_info(order_id, opts)
      data
    end

    # Find order discounts
    # Returns all discounts of an order
    # @param order_id [Integer] ID of order to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limits the number of entries returned
    # @option opts [Integer] :offset set the index where the returned entries start
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [Array<(GetDiscounts200Response, Integer, Hash)>] GetDiscounts200Response data, response status code and response headers
    def get_discounts_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.get_discounts ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.get_discounts"
      end
      # resource path
      local_var_path = '/Order/{orderId}/getDiscounts'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'embed'] = @api_client.build_collection_param(opts[:'embed'], :multi) if !opts[:'embed'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDiscounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.get_discounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#get_discounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find order by ID
    # Returns a single order
    # @param order_id [Integer] ID of order to return
    # @param [Hash] opts the optional parameters
    # @return [GetOrders200Response]
    def get_order_by_id(order_id, opts = {})
      data, _status_code, _headers = get_order_by_id_with_http_info(order_id, opts)
      data
    end

    # Find order by ID
    # Returns a single order
    # @param order_id [Integer] ID of order to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetOrders200Response, Integer, Hash)>] GetOrders200Response data, response status code and response headers
    def get_order_by_id_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.get_order_by_id ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.get_order_by_id"
      end
      # resource path
      local_var_path = '/Order/{orderId}'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetOrders200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.get_order_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#get_order_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find order positions
    # Returns all positions of an order
    # @param order_id [Integer] ID of order to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limits the number of entries returned
    # @option opts [Integer] :offset set the index where the returned entries start
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [GetOrderPositionsById200Response]
    def get_order_positions_by_id(order_id, opts = {})
      data, _status_code, _headers = get_order_positions_by_id_with_http_info(order_id, opts)
      data
    end

    # Find order positions
    # Returns all positions of an order
    # @param order_id [Integer] ID of order to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limits the number of entries returned
    # @option opts [Integer] :offset set the index where the returned entries start
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [Array<(GetOrderPositionsById200Response, Integer, Hash)>] GetOrderPositionsById200Response data, response status code and response headers
    def get_order_positions_by_id_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.get_order_positions_by_id ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.get_order_positions_by_id"
      end
      # resource path
      local_var_path = '/Order/{orderId}/getPositions'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'embed'] = @api_client.build_collection_param(opts[:'embed'], :multi) if !opts[:'embed'].nil?

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
        :operation => :"OrderApi.get_order_positions_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#get_order_positions_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve orders
    # There are a multitude of parameter which can be used to filter. A few of them are attached but      for a complete list please check out <a href='#tag/Order/How-to-filter-for-certain-orders'>this</a> list
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :status Status of the order
    # @option opts [String] :order_number Retrieve all orders with this order number
    # @option opts [Integer] :start_date Retrieve all orders with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all orders with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all orders with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [GetOrders200Response]
    def get_orders(opts = {})
      data, _status_code, _headers = get_orders_with_http_info(opts)
      data
    end

    # Retrieve orders
    # There are a multitude of parameter which can be used to filter. A few of them are attached but      for a complete list please check out &lt;a href&#x3D;&#39;#tag/Order/How-to-filter-for-certain-orders&#39;&gt;this&lt;/a&gt; list
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :status Status of the order
    # @option opts [String] :order_number Retrieve all orders with this order number
    # @option opts [Integer] :start_date Retrieve all orders with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all orders with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all orders with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [Array<(GetOrders200Response, Integer, Hash)>] GetOrders200Response data, response status code and response headers
    def get_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.get_orders ...'
      end
      allowable_values = [100, 200, 300, 500, 750, 1000]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/Order'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'orderNumber'] = opts[:'order_number'] if !opts[:'order_number'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
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
      return_type = opts[:debug_return_type] || 'GetOrders200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.get_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#get_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find related objects
    # Get related objects of a specified order
    # @param order_id [Integer] ID of order to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_itself Define if the related objects include the order itself
    # @option opts [Boolean] :sort_by_type Define if you want the related objects sorted by type
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [GetOrderPositionsById200Response]
    def get_related_objects(order_id, opts = {})
      data, _status_code, _headers = get_related_objects_with_http_info(order_id, opts)
      data
    end

    # Find related objects
    # Get related objects of a specified order
    # @param order_id [Integer] ID of order to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_itself Define if the related objects include the order itself
    # @option opts [Boolean] :sort_by_type Define if you want the related objects sorted by type
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [Array<(GetOrderPositionsById200Response, Integer, Hash)>] GetOrderPositionsById200Response data, response status code and response headers
    def get_related_objects_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.get_related_objects ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.get_related_objects"
      end
      # resource path
      local_var_path = '/Order/{orderId}/getRelatedObjects'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeItself'] = opts[:'include_itself'] if !opts[:'include_itself'].nil?
      query_params[:'sortByType'] = opts[:'sort_by_type'] if !opts[:'sort_by_type'].nil?
      query_params[:'embed'] = @api_client.build_collection_param(opts[:'embed'], :multi) if !opts[:'embed'].nil?

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
        :operation => :"OrderApi.get_related_objects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#get_related_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve pdf document of an order
    # Retrieves the pdf document of an order with additional metadata and commit the order.
    # @param order_id [Integer] ID of order from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the order.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the order.
    # @return [OrderGetPdf200Response]
    def order_get_pdf(order_id, opts = {})
      data, _status_code, _headers = order_get_pdf_with_http_info(order_id, opts)
      data
    end

    # Retrieve pdf document of an order
    # Retrieves the pdf document of an order with additional metadata and commit the order.
    # @param order_id [Integer] ID of order from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the order.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the order.
    # @return [Array<(OrderGetPdf200Response, Integer, Hash)>] OrderGetPdf200Response data, response status code and response headers
    def order_get_pdf_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_get_pdf ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.order_get_pdf"
      end
      # resource path
      local_var_path = '/Order/{orderId}/getPdf'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'download'] = opts[:'download'] if !opts[:'download'].nil?
      query_params[:'preventSendBy'] = opts[:'prevent_send_by'] if !opts[:'prevent_send_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OrderGetPdf200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.order_get_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_get_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark order as sent
    # Marks an order as sent by a chosen send type.
    # @param order_id [Integer] ID of order to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [OrderSendByRequest] :order_send_by_request Specify the send type
    # @return [ModelOrderResponse]
    def order_send_by(order_id, opts = {})
      data, _status_code, _headers = order_send_by_with_http_info(order_id, opts)
      data
    end

    # Mark order as sent
    # Marks an order as sent by a chosen send type.
    # @param order_id [Integer] ID of order to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [OrderSendByRequest] :order_send_by_request Specify the send type
    # @return [Array<(ModelOrderResponse, Integer, Hash)>] ModelOrderResponse data, response status code and response headers
    def order_send_by_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_send_by ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.order_send_by"
      end
      # resource path
      local_var_path = '/Order/{orderId}/sendBy'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'order_send_by_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.order_send_by",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_send_by\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send order via email
    # This endpoint sends the specified order to a customer via email.<br>      This will automatically mark the order as sent.<br>      Please note, that in production an order is not allowed to be changed after this happened!
    # @param order_id [Integer] ID of order to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendorderViaEMailRequest] :sendorder_via_e_mail_request Mail data
    # @return [SendorderViaEMail201Response]
    def sendorder_via_e_mail(order_id, opts = {})
      data, _status_code, _headers = sendorder_via_e_mail_with_http_info(order_id, opts)
      data
    end

    # Send order via email
    # This endpoint sends the specified order to a customer via email.&lt;br&gt;      This will automatically mark the order as sent.&lt;br&gt;      Please note, that in production an order is not allowed to be changed after this happened!
    # @param order_id [Integer] ID of order to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendorderViaEMailRequest] :sendorder_via_e_mail_request Mail data
    # @return [Array<(SendorderViaEMail201Response, Integer, Hash)>] SendorderViaEMail201Response data, response status code and response headers
    def sendorder_via_e_mail_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.sendorder_via_e_mail ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.sendorder_via_e_mail"
      end
      # resource path
      local_var_path = '/Order/{orderId}/sendViaEmail'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'sendorder_via_e_mail_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SendorderViaEMail201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.sendorder_via_e_mail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#sendorder_via_e_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing order
    # Update an order
    # @param order_id [Integer] ID of order to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelOrderUpdate] :model_order_update Update data
    # @return [ModelOrderResponse]
    def update_order(order_id, opts = {})
      data, _status_code, _headers = update_order_with_http_info(order_id, opts)
      data
    end

    # Update an existing order
    # Update an order
    # @param order_id [Integer] ID of order to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelOrderUpdate] :model_order_update Update data
    # @return [Array<(ModelOrderResponse, Integer, Hash)>] ModelOrderResponse data, response status code and response headers
    def update_order_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.update_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.update_order"
      end
      # resource path
      local_var_path = '/Order/{orderId}'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_order_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"OrderApi.update_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#update_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
