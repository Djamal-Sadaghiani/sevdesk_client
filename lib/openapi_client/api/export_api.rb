require 'cgi'

module OpenapiClient
  class ExportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export contact
    # Contact export as csv
    # @param sev_query [ExportContactSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ExportContact200Response]
    def export_contact(sev_query, opts = {})
      data, _status_code, _headers = export_contact_with_http_info(sev_query, opts)
      data
    end

    # Export contact
    # Contact export as csv
    # @param sev_query [ExportContactSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ExportContact200Response, Integer, Hash)>] ExportContact200Response data, response status code and response headers
    def export_contact_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_contact ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ExportApi.export_contact"
      end
      # resource path
      local_var_path = '/Export/contactListCsv'

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
      return_type = opts[:debug_return_type] || 'ExportContact200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export creditNote
    # Export all credit notes as csv
    # @param sev_query [ExportCreditNoteSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ExportCreditNote200Response]
    def export_credit_note(sev_query, opts = {})
      data, _status_code, _headers = export_credit_note_with_http_info(sev_query, opts)
      data
    end

    # Export creditNote
    # Export all credit notes as csv
    # @param sev_query [ExportCreditNoteSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ExportCreditNote200Response, Integer, Hash)>] ExportCreditNote200Response data, response status code and response headers
    def export_credit_note_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_credit_note ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ExportApi.export_credit_note"
      end
      # resource path
      local_var_path = '/Export/creditNoteCsv'

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
      return_type = opts[:debug_return_type] || 'ExportCreditNote200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export datev
    # Datev export as zip with csv´s. Before you can perform the datev export, you must first set the \"accountingYearBegin\". To do this, you must use the <a href='#tag/Export/operation/updateExportConfig'>updateExportConfig</a> endpoint.
    # @param start_date [Integer] the start date of the export as timestamp
    # @param end_date [Integer] the end date of the export as timestamp
    # @param scope [String] Define what you want to include in the datev export. This parameter takes a string of 5 letters. Each stands for a model that should be included. Possible letters are: ‘E’ (Earnings), ‘X’ (Expenditure), ‘T’ (Transactions), ‘C’ (Cashregister), ‘D’ (Assets). By providing one of those letter you specify that it should be included in the datev export. Some combinations are: ‘EXTCD’, ‘EXTD’ …
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download Specifies if the document is downloaded
    # @option opts [Boolean] :with_unpaid_documents include unpaid documents
    # @option opts [Boolean] :with_enshrined_documents include enshrined documents
    # @option opts [Boolean] :enshrine Specify if you want to enshrine all models which were included in the export
    # @return [Object]
    def export_datev(start_date, end_date, scope, opts = {})
      data, _status_code, _headers = export_datev_with_http_info(start_date, end_date, scope, opts)
      data
    end

    # Export datev
    # Datev export as zip with csv´s. Before you can perform the datev export, you must first set the \&quot;accountingYearBegin\&quot;. To do this, you must use the &lt;a href&#x3D;&#39;#tag/Export/operation/updateExportConfig&#39;&gt;updateExportConfig&lt;/a&gt; endpoint.
    # @param start_date [Integer] the start date of the export as timestamp
    # @param end_date [Integer] the end date of the export as timestamp
    # @param scope [String] Define what you want to include in the datev export. This parameter takes a string of 5 letters. Each stands for a model that should be included. Possible letters are: ‘E’ (Earnings), ‘X’ (Expenditure), ‘T’ (Transactions), ‘C’ (Cashregister), ‘D’ (Assets). By providing one of those letter you specify that it should be included in the datev export. Some combinations are: ‘EXTCD’, ‘EXTD’ …
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download Specifies if the document is downloaded
    # @option opts [Boolean] :with_unpaid_documents include unpaid documents
    # @option opts [Boolean] :with_enshrined_documents include enshrined documents
    # @option opts [Boolean] :enshrine Specify if you want to enshrine all models which were included in the export
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def export_datev_with_http_info(start_date, end_date, scope, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_datev ...'
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ExportApi.export_datev"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ExportApi.export_datev"
      end
      # verify the required parameter 'scope' is set
      if @api_client.config.client_side_validation && scope.nil?
        fail ArgumentError, "Missing the required parameter 'scope' when calling ExportApi.export_datev"
      end
      # resource path
      local_var_path = '/Export/datevCSV'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startDate'] = start_date
      query_params[:'endDate'] = end_date
      query_params[:'scope'] = scope
      query_params[:'Download'] = opts[:'download'] if !opts[:'download'].nil?
      query_params[:'withUnpaidDocuments'] = opts[:'with_unpaid_documents'] if !opts[:'with_unpaid_documents'].nil?
      query_params[:'withEnshrinedDocuments'] = opts[:'with_enshrined_documents'] if !opts[:'with_enshrined_documents'].nil?
      query_params[:'enshrine'] = opts[:'enshrine'] if !opts[:'enshrine'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_datev",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_datev\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export invoice
    # Export all invoices as csv
    # @param sev_query [ExportInvoiceSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ExportInvoice200Response]
    def export_invoice(sev_query, opts = {})
      data, _status_code, _headers = export_invoice_with_http_info(sev_query, opts)
      data
    end

    # Export invoice
    # Export all invoices as csv
    # @param sev_query [ExportInvoiceSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ExportInvoice200Response, Integer, Hash)>] ExportInvoice200Response data, response status code and response headers
    def export_invoice_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_invoice ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ExportApi.export_invoice"
      end
      # resource path
      local_var_path = '/Export/invoiceCsv'

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
      return_type = opts[:debug_return_type] || 'ExportInvoice200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export Invoice as zip
    # Export all invoices as zip
    # @param sev_query [ExportInvoiceZipSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ExportInvoiceZip200Response]
    def export_invoice_zip(sev_query, opts = {})
      data, _status_code, _headers = export_invoice_zip_with_http_info(sev_query, opts)
      data
    end

    # Export Invoice as zip
    # Export all invoices as zip
    # @param sev_query [ExportInvoiceZipSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ExportInvoiceZip200Response, Integer, Hash)>] ExportInvoiceZip200Response data, response status code and response headers
    def export_invoice_zip_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_invoice_zip ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ExportApi.export_invoice_zip"
      end
      # resource path
      local_var_path = '/Export/invoiceZip'

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
      return_type = opts[:debug_return_type] || 'ExportInvoiceZip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_invoice_zip",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_invoice_zip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export transaction
    # Export all transactions as csv
    # @param sev_query [ExportTransactionsSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ExportTransactions200Response]
    def export_transactions(sev_query, opts = {})
      data, _status_code, _headers = export_transactions_with_http_info(sev_query, opts)
      data
    end

    # Export transaction
    # Export all transactions as csv
    # @param sev_query [ExportTransactionsSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ExportTransactions200Response, Integer, Hash)>] ExportTransactions200Response data, response status code and response headers
    def export_transactions_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_transactions ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ExportApi.export_transactions"
      end
      # resource path
      local_var_path = '/Export/transactionsCsv'

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
      return_type = opts[:debug_return_type] || 'ExportTransactions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export voucher as zip
    # Export all vouchers as zip
    # @param sev_query [ExportVoucherSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ExportVoucher200Response]
    def export_voucher(sev_query, opts = {})
      data, _status_code, _headers = export_voucher_with_http_info(sev_query, opts)
      data
    end

    # Export voucher as zip
    # Export all vouchers as zip
    # @param sev_query [ExportVoucherSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ExportVoucher200Response, Integer, Hash)>] ExportVoucher200Response data, response status code and response headers
    def export_voucher_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_voucher ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ExportApi.export_voucher"
      end
      # resource path
      local_var_path = '/Export/voucherListCsv'

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
      return_type = opts[:debug_return_type] || 'ExportVoucher200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_voucher",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export voucher zip
    # export all vouchers as zip
    # @param sev_query [ExportVoucherZipSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [ExportVoucherZip200Response]
    def export_voucher_zip(sev_query, opts = {})
      data, _status_code, _headers = export_voucher_zip_with_http_info(sev_query, opts)
      data
    end

    # Export voucher zip
    # export all vouchers as zip
    # @param sev_query [ExportVoucherZipSevQueryParameter] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download 
    # @return [Array<(ExportVoucherZip200Response, Integer, Hash)>] ExportVoucherZip200Response data, response status code and response headers
    def export_voucher_zip_with_http_info(sev_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.export_voucher_zip ...'
      end
      # verify the required parameter 'sev_query' is set
      if @api_client.config.client_side_validation && sev_query.nil?
        fail ArgumentError, "Missing the required parameter 'sev_query' when calling ExportApi.export_voucher_zip"
      end
      # resource path
      local_var_path = '/Export/voucherZip'

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
      return_type = opts[:debug_return_type] || 'ExportVoucherZip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.export_voucher_zip",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_voucher_zip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update export config
    # Update export config to export datev CSV
    # @param sev_client_id [Float] id of sevClient
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateExportConfigRequest] :update_export_config_request Specify the update
    # @return [CheckAccountTransactionEnshrine200Response]
    def update_export_config(sev_client_id, opts = {})
      data, _status_code, _headers = update_export_config_with_http_info(sev_client_id, opts)
      data
    end

    # Update export config
    # Update export config to export datev CSV
    # @param sev_client_id [Float] id of sevClient
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateExportConfigRequest] :update_export_config_request Specify the update
    # @return [Array<(CheckAccountTransactionEnshrine200Response, Integer, Hash)>] CheckAccountTransactionEnshrine200Response data, response status code and response headers
    def update_export_config_with_http_info(sev_client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportApi.update_export_config ...'
      end
      # verify the required parameter 'sev_client_id' is set
      if @api_client.config.client_side_validation && sev_client_id.nil?
        fail ArgumentError, "Missing the required parameter 'sev_client_id' when calling ExportApi.update_export_config"
      end
      # resource path
      local_var_path = '/SevClient/{SevClientId}/updateExportConfig'.sub('{' + 'SevClientId' + '}', CGI.escape(sev_client_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_export_config_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CheckAccountTransactionEnshrine200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExportApi.update_export_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#update_export_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
