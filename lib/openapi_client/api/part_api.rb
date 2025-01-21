require 'cgi'

module OpenapiClient
  class PartApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new part
    # Creates a part in your sevdesk inventory.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelPart] :model_part Creation data. Please be aware, that you need to provide at least all required parameter      of the part model!
    # @return [ModelPart]
    def create_part(opts = {})
      data, _status_code, _headers = create_part_with_http_info(opts)
      data
    end

    # Create a new part
    # Creates a part in your sevdesk inventory.
    # @param [Hash] opts the optional parameters
    # @option opts [ModelPart] :model_part Creation data. Please be aware, that you need to provide at least all required parameter      of the part model!
    # @return [Array<(ModelPart, Integer, Hash)>] ModelPart data, response status code and response headers
    def create_part_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartApi.create_part ...'
      end
      # resource path
      local_var_path = '/Part'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_part'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelPart'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PartApi.create_part",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartApi#create_part\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find part by ID
    # Returns a single part
    # @param part_id [Integer] ID of part to return
    # @param [Hash] opts the optional parameters
    # @return [GetParts200Response]
    def get_part_by_id(part_id, opts = {})
      data, _status_code, _headers = get_part_by_id_with_http_info(part_id, opts)
      data
    end

    # Find part by ID
    # Returns a single part
    # @param part_id [Integer] ID of part to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetParts200Response, Integer, Hash)>] GetParts200Response data, response status code and response headers
    def get_part_by_id_with_http_info(part_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartApi.get_part_by_id ...'
      end
      # verify the required parameter 'part_id' is set
      if @api_client.config.client_side_validation && part_id.nil?
        fail ArgumentError, "Missing the required parameter 'part_id' when calling PartApi.get_part_by_id"
      end
      # resource path
      local_var_path = '/Part/{partId}'.sub('{' + 'partId' + '}', CGI.escape(part_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetParts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PartApi.get_part_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartApi#get_part_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve parts
    # Retrieve all parts in your sevdesk inventory according to the applied filters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :part_number Retrieve all parts with this part number
    # @option opts [String] :name Retrieve all parts with this name
    # @return [GetParts200Response]
    def get_parts(opts = {})
      data, _status_code, _headers = get_parts_with_http_info(opts)
      data
    end

    # Retrieve parts
    # Retrieve all parts in your sevdesk inventory according to the applied filters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :part_number Retrieve all parts with this part number
    # @option opts [String] :name Retrieve all parts with this name
    # @return [Array<(GetParts200Response, Integer, Hash)>] GetParts200Response data, response status code and response headers
    def get_parts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartApi.get_parts ...'
      end
      # resource path
      local_var_path = '/Part'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'partNumber'] = opts[:'part_number'] if !opts[:'part_number'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetParts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PartApi.get_parts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartApi#get_parts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get stock of a part
    # Returns the current stock amount of the given part.
    # @param part_id [Integer] ID of part for which you want the current stock.
    # @param [Hash] opts the optional parameters
    # @return [PartGetStock200Response]
    def part_get_stock(part_id, opts = {})
      data, _status_code, _headers = part_get_stock_with_http_info(part_id, opts)
      data
    end

    # Get stock of a part
    # Returns the current stock amount of the given part.
    # @param part_id [Integer] ID of part for which you want the current stock.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartGetStock200Response, Integer, Hash)>] PartGetStock200Response data, response status code and response headers
    def part_get_stock_with_http_info(part_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartApi.part_get_stock ...'
      end
      # verify the required parameter 'part_id' is set
      if @api_client.config.client_side_validation && part_id.nil?
        fail ArgumentError, "Missing the required parameter 'part_id' when calling PartApi.part_get_stock"
      end
      # resource path
      local_var_path = '/Part/{partId}/getStock'.sub('{' + 'partId' + '}', CGI.escape(part_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PartGetStock200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PartApi.part_get_stock",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartApi#part_get_stock\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing part
    # Update a part
    # @param part_id [Integer] ID of part to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelPartUpdate] :model_part_update Update data
    # @return [ModelPart]
    def update_part(part_id, opts = {})
      data, _status_code, _headers = update_part_with_http_info(part_id, opts)
      data
    end

    # Update an existing part
    # Update a part
    # @param part_id [Integer] ID of part to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelPartUpdate] :model_part_update Update data
    # @return [Array<(ModelPart, Integer, Hash)>] ModelPart data, response status code and response headers
    def update_part_with_http_info(part_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartApi.update_part ...'
      end
      # verify the required parameter 'part_id' is set
      if @api_client.config.client_side_validation && part_id.nil?
        fail ArgumentError, "Missing the required parameter 'part_id' when calling PartApi.update_part"
      end
      # resource path
      local_var_path = '/Part/{partId}'.sub('{' + 'partId' + '}', CGI.escape(part_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_part_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelPart'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PartApi.update_part",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartApi#update_part\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
