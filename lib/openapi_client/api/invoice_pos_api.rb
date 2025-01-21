require 'cgi'

module OpenapiClient
  class InvoicePosApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve InvoicePos
    # There are a multitude of parameter which can be used to filter.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :id Retrieve all InvoicePos with this InvoicePos id
    # @option opts [Float] :invoice_id Retrieve all invoices positions with this invoice. Must be provided with invoice[objectName]
    # @option opts [String] :invoice_object_name Only required if invoice[id] was provided. &#39;Invoice&#39; should be used as value.
    # @option opts [Float] :part_id Retrieve all invoices positions with this part. Must be provided with part[objectName]
    # @option opts [String] :part_object_name Only required if part[id] was provided. &#39;Part&#39; should be used as value.
    # @return [GetInvoicePositionsById200Response]
    def get_invoice_pos(opts = {})
      data, _status_code, _headers = get_invoice_pos_with_http_info(opts)
      data
    end

    # Retrieve InvoicePos
    # There are a multitude of parameter which can be used to filter.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :id Retrieve all InvoicePos with this InvoicePos id
    # @option opts [Float] :invoice_id Retrieve all invoices positions with this invoice. Must be provided with invoice[objectName]
    # @option opts [String] :invoice_object_name Only required if invoice[id] was provided. &#39;Invoice&#39; should be used as value.
    # @option opts [Float] :part_id Retrieve all invoices positions with this part. Must be provided with part[objectName]
    # @option opts [String] :part_object_name Only required if part[id] was provided. &#39;Part&#39; should be used as value.
    # @return [Array<(GetInvoicePositionsById200Response, Integer, Hash)>] GetInvoicePositionsById200Response data, response status code and response headers
    def get_invoice_pos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicePosApi.get_invoice_pos ...'
      end
      # resource path
      local_var_path = '/InvoicePos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'invoice[id]'] = opts[:'invoice_id'] if !opts[:'invoice_id'].nil?
      query_params[:'invoice[objectName]'] = opts[:'invoice_object_name'] if !opts[:'invoice_object_name'].nil?
      query_params[:'part[id]'] = opts[:'part_id'] if !opts[:'part_id'].nil?
      query_params[:'part[objectName]'] = opts[:'part_object_name'] if !opts[:'part_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetInvoicePositionsById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoicePosApi.get_invoice_pos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicePosApi#get_invoice_pos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
