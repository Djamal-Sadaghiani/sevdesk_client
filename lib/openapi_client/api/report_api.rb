require 'cgi'

module OpenapiClient
  class ReportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export contact list
    # Export contact list
    # @param sev_query [ReportContactSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ReportContact200Response]
    def report_contact(sev_query, opts = {})
      data, _status_code, _headers = report_contact_with_http_info(sev_query, opts)
      data
    end

    # Export contact list
    # Export contact list
    # @param sev_query [ReportContactSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ReportContact200Response, Integer, Hash)>] ReportContact200Response data, response status code and response headers
    def report_contact_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportApi.report_contact ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ReportApi.report_contact"
      end
      # resource path
      local_var_path = '/Report/contactlist'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sevQuery'] = sev_query
      query_params[:'download'] = opts[:'download'] if !opts[:'download'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReportContact200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ReportApi.report_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportApi#report_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export invoice list
    # Export invoice list
    # @param view [String] 
    # @param sev_query [ReportInvoiceSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ReportInvoice200Response]
    def report_invoice(view, sev_query, opts = {})
      data, _status_code, _headers = report_invoice_with_http_info(view, sev_query, opts)
      data
    end

    # Export invoice list
    # Export invoice list
    # @param view [String] 
    # @param sev_query [ReportInvoiceSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ReportInvoice200Response, Integer, Hash)>] ReportInvoice200Response data, response status code and response headers
    def report_invoice_with_http_info(view, sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportApi.report_invoice ...'
      end
      # verify the required parameter 'view' is set
      if @api_client.config.client_side_validation && view.nil?
        fail ArgumentError, "Missing the required parameter 'view' when calling ReportApi.report_invoice"
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ReportApi.report_invoice"
      end
      # resource path
      local_var_path = '/Report/invoicelist'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'view'] = view
      query_params[:'sevQuery'] = sev_query
      query_params[:'download'] = opts[:'download'] if !opts[:'download'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReportInvoice200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ReportApi.report_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportApi#report_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export order list
    # Export order list
    # @param view [String] 
    # @param sev_query [ReportOrderSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ReportOrder200Response]
    def report_order(view, sev_query, opts = {})
      data, _status_code, _headers = report_order_with_http_info(view, sev_query, opts)
      data
    end

    # Export order list
    # Export order list
    # @param view [String] 
    # @param sev_query [ReportOrderSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ReportOrder200Response, Integer, Hash)>] ReportOrder200Response data, response status code and response headers
    def report_order_with_http_info(view, sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportApi.report_order ...'
      end
      # verify the required parameter 'view' is set
      if @api_client.config.client_side_validation && view.nil?
        fail ArgumentError, "Missing the required parameter 'view' when calling ReportApi.report_order"
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ReportApi.report_order"
      end
      # resource path
      local_var_path = '/Report/orderlist'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'view'] = view
      query_params[:'sevQuery'] = sev_query
      query_params[:'download'] = opts[:'download'] if !opts[:'download'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReportOrder200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ReportApi.report_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportApi#report_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export voucher list
    # Export voucher list
    # @param sev_query [ReportVoucherSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ReportVoucher200Response]
    def report_voucher(sev_query, opts = {})
      data, _status_code, _headers = report_voucher_with_http_info(sev_query, opts)
      data
    end

    # Export voucher list
    # Export voucher list
    # @param sev_query [ReportVoucherSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ReportVoucher200Response, Integer, Hash)>] ReportVoucher200Response data, response status code and response headers
    def report_voucher_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportApi.report_voucher ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ReportApi.report_voucher"
      end
      # resource path
      local_var_path = '/Report/voucherlist'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sevQuery'] = sev_query
      query_params[:'download'] = opts[:'download'] if !opts[:'download'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReportVoucher200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ReportApi.report_voucher",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportApi#report_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
