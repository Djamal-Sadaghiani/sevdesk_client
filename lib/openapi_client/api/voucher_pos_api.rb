require 'cgi'

module OpenapiClient
  class VoucherPosApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve voucher positions
    # Retrieve all voucher positions depending on the filters defined in the query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :voucher_id Retrieve all vouchers positions belonging to this voucher. Must be provided with voucher[objectName]
    # @option opts [String] :voucher_object_name Only required if voucher[id] was provided. &#39;Voucher&#39; should be used as value.
    # @return [GetVoucherPositions200Response]
    def get_voucher_positions(opts = {})
      data, _status_code, _headers = get_voucher_positions_with_http_info(opts)
      data
    end

    # Retrieve voucher positions
    # Retrieve all voucher positions depending on the filters defined in the query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :voucher_id Retrieve all vouchers positions belonging to this voucher. Must be provided with voucher[objectName]
    # @option opts [String] :voucher_object_name Only required if voucher[id] was provided. &#39;Voucher&#39; should be used as value.
    # @return [Array<(GetVoucherPositions200Response, Integer, Hash)>] GetVoucherPositions200Response data, response status code and response headers
    def get_voucher_positions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherPosApi.get_voucher_positions ...'
      end
      # resource path
      local_var_path = '/VoucherPos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'voucher[id]'] = opts[:'voucher_id'] if !opts[:'voucher_id'].nil?
      query_params[:'voucher[objectName]'] = opts[:'voucher_object_name'] if !opts[:'voucher_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetVoucherPositions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherPosApi.get_voucher_positions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherPosApi#get_voucher_positions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
