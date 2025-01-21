require 'cgi'

module OpenapiClient
  class TagApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new tag
    # Create a new tag
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTagRequest] :create_tag_request 
    # @return [ModelTagCreateResponse]
    def create_tag(opts = {})
      data, _status_code, _headers = create_tag_with_http_info(opts)
      data
    end

    # Create a new tag
    # Create a new tag
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTagRequest] :create_tag_request 
    # @return [Array<(ModelTagCreateResponse, Integer, Hash)>] ModelTagCreateResponse data, response status code and response headers
    def create_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.create_tag ...'
      end
      # resource path
      local_var_path = '/Tag/Factory/create'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_tag_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelTagCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"TagApi.create_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#create_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a tag
    # @param tag_id [Integer] Id of tag to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def delete_tag(tag_id, opts = {})
      data, _status_code, _headers = delete_tag_with_http_info(tag_id, opts)
      data
    end

    # Deletes a tag
    # @param tag_id [Integer] Id of tag to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def delete_tag_with_http_info(tag_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.delete_tag ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TagApi.delete_tag"
      end
      # resource path
      local_var_path = '/Tag/{tagId}'.sub('{' + 'tagId' + '}', CGI.escape(tag_id.to_s))

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
        :operation => :"TagApi.delete_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#delete_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find tag by ID
    # Returns a single tag
    # @param tag_id [Integer] ID of tag to return
    # @param [Hash] opts the optional parameters
    # @return [GetTags200Response]
    def get_tag_by_id(tag_id, opts = {})
      data, _status_code, _headers = get_tag_by_id_with_http_info(tag_id, opts)
      data
    end

    # Find tag by ID
    # Returns a single tag
    # @param tag_id [Integer] ID of tag to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetTags200Response, Integer, Hash)>] GetTags200Response data, response status code and response headers
    def get_tag_by_id_with_http_info(tag_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.get_tag_by_id ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TagApi.get_tag_by_id"
      end
      # resource path
      local_var_path = '/Tag/{tagId}'.sub('{' + 'tagId' + '}', CGI.escape(tag_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetTags200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"TagApi.get_tag_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#get_tag_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve tag relations
    # Retrieve all tag relations
    # @param [Hash] opts the optional parameters
    # @return [GetTagRelations200Response]
    def get_tag_relations(opts = {})
      data, _status_code, _headers = get_tag_relations_with_http_info(opts)
      data
    end

    # Retrieve tag relations
    # Retrieve all tag relations
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetTagRelations200Response, Integer, Hash)>] GetTagRelations200Response data, response status code and response headers
    def get_tag_relations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.get_tag_relations ...'
      end
      # resource path
      local_var_path = '/TagRelation'

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
      return_type = opts[:debug_return_type] || 'GetTagRelations200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"TagApi.get_tag_relations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#get_tag_relations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve tags
    # Retrieve all tags
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :id ID of the Tag
    # @option opts [String] :name Name of the Tag
    # @return [GetTags200Response]
    def get_tags(opts = {})
      data, _status_code, _headers = get_tags_with_http_info(opts)
      data
    end

    # Retrieve tags
    # Retrieve all tags
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :id ID of the Tag
    # @option opts [String] :name Name of the Tag
    # @return [Array<(GetTags200Response, Integer, Hash)>] GetTags200Response data, response status code and response headers
    def get_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.get_tags ...'
      end
      # resource path
      local_var_path = '/Tag'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
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
      return_type = opts[:debug_return_type] || 'GetTags200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"TagApi.get_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#get_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update tag
    # Update an existing tag
    # @param tag_id [Integer] ID of tag you want to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateTagRequest] :update_tag_request 
    # @return [ModelTagResponse]
    def update_tag(tag_id, opts = {})
      data, _status_code, _headers = update_tag_with_http_info(tag_id, opts)
      data
    end

    # Update tag
    # Update an existing tag
    # @param tag_id [Integer] ID of tag you want to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateTagRequest] :update_tag_request 
    # @return [Array<(ModelTagResponse, Integer, Hash)>] ModelTagResponse data, response status code and response headers
    def update_tag_with_http_info(tag_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.update_tag ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TagApi.update_tag"
      end
      # resource path
      local_var_path = '/Tag/{tagId}'.sub('{' + 'tagId' + '}', CGI.escape(tag_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_tag_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelTagResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"TagApi.update_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#update_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
