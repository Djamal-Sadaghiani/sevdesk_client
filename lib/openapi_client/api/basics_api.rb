require 'cgi'

module OpenapiClient
  class BasicsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve bookkeeping system version
    # To check if you already received the update to version 2.0 you can use this endpoint.
    # @param [Hash] opts the optional parameters
    # @return [BookkeepingSystemVersion200Response]
    def bookkeeping_system_version(opts = {})
      data, _status_code, _headers = bookkeeping_system_version_with_http_info(opts)
      data
    end

    # Retrieve bookkeeping system version
    # To check if you already received the update to version 2.0 you can use this endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BookkeepingSystemVersion200Response, Integer, Hash)>] BookkeepingSystemVersion200Response data, response status code and response headers
    def bookkeeping_system_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BasicsApi.bookkeeping_system_version ...'
      end
      # resource path
      local_var_path = '/Tools/bookkeepingSystemVersion'

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
      return_type = opts[:debug_return_type] || 'BookkeepingSystemVersion200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"BasicsApi.bookkeeping_system_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BasicsApi#bookkeeping_system_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
