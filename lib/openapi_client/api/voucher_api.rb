require 'cgi'

module OpenapiClient
  class VoucherApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Book a voucher
    # Booking the voucher with a transaction is probably the most important part in the bookkeeping process.<br> There are several ways on correctly booking a voucher, all by using the same endpoint.<br> Conveniently, the booking process is exactly the same as the process for invoices.<br> For this reason, you can have a look at it <a href='#tag/Voucher/How-to-filter-for-certain-vouchers'>here</a> and all you need to to is to change \"Invoice\" into \"Voucher\" in the URL.
    # @param voucher_id [Integer] ID of voucher to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookVoucherRequest] :book_voucher_request Booking data
    # @return [BookVoucher200Response]
    def book_voucher(voucher_id, opts = {})
      data, _status_code, _headers = book_voucher_with_http_info(voucher_id, opts)
      data
    end

    # Book a voucher
    # Booking the voucher with a transaction is probably the most important part in the bookkeeping process.&lt;br&gt; There are several ways on correctly booking a voucher, all by using the same endpoint.&lt;br&gt; Conveniently, the booking process is exactly the same as the process for invoices.&lt;br&gt; For this reason, you can have a look at it &lt;a href&#x3D;&#39;#tag/Voucher/How-to-filter-for-certain-vouchers&#39;&gt;here&lt;/a&gt; and all you need to to is to change \&quot;Invoice\&quot; into \&quot;Voucher\&quot; in the URL.
    # @param voucher_id [Integer] ID of voucher to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookVoucherRequest] :book_voucher_request Booking data
    # @return [Array<(BookVoucher200Response, Integer, Hash)>] BookVoucher200Response data, response status code and response headers
    def book_voucher_with_http_info(voucher_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.book_voucher ...'
      end
      # verify the required parameter 'voucher_id' is set
      if @api_client.config.client_side_validation && voucher_id.nil?
        fail ArgumentError, "Missing the required parameter 'voucher_id' when calling VoucherApi.book_voucher"
      end
      # resource path
      local_var_path = '/Voucher/{voucherId}/bookAmount'.sub('{' + 'voucherId' + '}', CGI.escape(voucher_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'book_voucher_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BookVoucher200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.book_voucher",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#book_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get guidance by account number
    # You can use this endpoint to get additional information about the account that you may want to use.
    # @param account_number [Integer] The datev account number you want to get additional information of
    # @param [Hash] opts the optional parameters
    # @return [ForAllAccounts200Response]
    def for_account_number(account_number, opts = {})
      data, _status_code, _headers = for_account_number_with_http_info(account_number, opts)
      data
    end

    # Get guidance by account number
    # You can use this endpoint to get additional information about the account that you may want to use.
    # @param account_number [Integer] The datev account number you want to get additional information of
    # @param [Hash] opts the optional parameters
    # @return [Array<(ForAllAccounts200Response, Integer, Hash)>] ForAllAccounts200Response data, response status code and response headers
    def for_account_number_with_http_info(account_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.for_account_number ...'
      end
      # verify the required parameter 'account_number' is set
      if @api_client.config.client_side_validation && account_number.nil?
        fail ArgumentError, "Missing the required parameter 'account_number' when calling VoucherApi.for_account_number"
      end
      # resource path
      local_var_path = '/ReceiptGuidance/forAccountNumber'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'accountNumber'] = account_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ForAllAccounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.for_account_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#for_account_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all account guides
    # You can use this endpoint to help you decide which accounts you can use when creating a voucher
    # @param [Hash] opts the optional parameters
    # @return [ForAllAccounts200Response]
    def for_all_accounts(opts = {})
      data, _status_code, _headers = for_all_accounts_with_http_info(opts)
      data
    end

    # Get all account guides
    # You can use this endpoint to help you decide which accounts you can use when creating a voucher
    # @param [Hash] opts the optional parameters
    # @return [Array<(ForAllAccounts200Response, Integer, Hash)>] ForAllAccounts200Response data, response status code and response headers
    def for_all_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.for_all_accounts ...'
      end
      # resource path
      local_var_path = '/ReceiptGuidance/forAllAccounts'

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
      return_type = opts[:debug_return_type] || 'ForAllAccounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.for_all_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#for_all_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get guidance for expense accounts
    # Provides all possible combinations for expense accounts to be used with expense receipts/vouchers.
    # @param [Hash] opts the optional parameters
    # @return [ForAllAccounts200Response]
    def for_expense(opts = {})
      data, _status_code, _headers = for_expense_with_http_info(opts)
      data
    end

    # Get guidance for expense accounts
    # Provides all possible combinations for expense accounts to be used with expense receipts/vouchers.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ForAllAccounts200Response, Integer, Hash)>] ForAllAccounts200Response data, response status code and response headers
    def for_expense_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.for_expense ...'
      end
      # resource path
      local_var_path = '/ReceiptGuidance/forExpense'

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
      return_type = opts[:debug_return_type] || 'ForAllAccounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.for_expense",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#for_expense\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get guidance for revenue accounts
    # Provides all possible combinations for revenue accounts to be used with revenue receipts/vouchers.
    # @param [Hash] opts the optional parameters
    # @return [ForAllAccounts200Response]
    def for_revenue(opts = {})
      data, _status_code, _headers = for_revenue_with_http_info(opts)
      data
    end

    # Get guidance for revenue accounts
    # Provides all possible combinations for revenue accounts to be used with revenue receipts/vouchers.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ForAllAccounts200Response, Integer, Hash)>] ForAllAccounts200Response data, response status code and response headers
    def for_revenue_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.for_revenue ...'
      end
      # resource path
      local_var_path = '/ReceiptGuidance/forRevenue'

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
      return_type = opts[:debug_return_type] || 'ForAllAccounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.for_revenue",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#for_revenue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get guidance by Tax Rule
    # You can use this endpoint to get additional information about the tax rule (for example, USTPFL_UMS_EINN) that you may want to use.
    # @param tax_rule [String] The code of the tax rule you want to get guidance for.
    # @param [Hash] opts the optional parameters
    # @return [ForAllAccounts200Response]
    def for_tax_rule(tax_rule, opts = {})
      data, _status_code, _headers = for_tax_rule_with_http_info(tax_rule, opts)
      data
    end

    # Get guidance by Tax Rule
    # You can use this endpoint to get additional information about the tax rule (for example, USTPFL_UMS_EINN) that you may want to use.
    # @param tax_rule [String] The code of the tax rule you want to get guidance for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ForAllAccounts200Response, Integer, Hash)>] ForAllAccounts200Response data, response status code and response headers
    def for_tax_rule_with_http_info(tax_rule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.for_tax_rule ...'
      end
      # verify the required parameter 'tax_rule' is set
      if @api_client.config.client_side_validation && tax_rule.nil?
        fail ArgumentError, "Missing the required parameter 'tax_rule' when calling VoucherApi.for_tax_rule"
      end
      # resource path
      local_var_path = '/ReceiptGuidance/forTaxRule'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'taxRule'] = tax_rule

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ForAllAccounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.for_tax_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#for_tax_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find voucher by ID
    # Returns a single voucher
    # @param voucher_id [Integer] ID of voucher to return
    # @param [Hash] opts the optional parameters
    # @return [GetVouchers200Response]
    def get_voucher_by_id(voucher_id, opts = {})
      data, _status_code, _headers = get_voucher_by_id_with_http_info(voucher_id, opts)
      data
    end

    # Find voucher by ID
    # Returns a single voucher
    # @param voucher_id [Integer] ID of voucher to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetVouchers200Response, Integer, Hash)>] GetVouchers200Response data, response status code and response headers
    def get_voucher_by_id_with_http_info(voucher_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.get_voucher_by_id ...'
      end
      # verify the required parameter 'voucher_id' is set
      if @api_client.config.client_side_validation && voucher_id.nil?
        fail ArgumentError, "Missing the required parameter 'voucher_id' when calling VoucherApi.get_voucher_by_id"
      end
      # resource path
      local_var_path = '/Voucher/{voucherId}'.sub('{' + 'voucherId' + '}', CGI.escape(voucher_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetVouchers200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.get_voucher_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#get_voucher_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve vouchers
    # There are a multitude of parameter which can be used to filter. A few of them are attached but      for a complete list please check out <a href='#tag/Voucher/How-to-filter-for-certain-vouchers'>this</a> list
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :status Status of the vouchers to retrieve.
    # @option opts [String] :credit_debit Define if you only want credit or debit vouchers.
    # @option opts [String] :description_like Retrieve all vouchers with a description like this.
    # @option opts [Integer] :start_date Retrieve all vouchers with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all vouchers with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all vouchers with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [GetVouchers200Response]
    def get_vouchers(opts = {})
      data, _status_code, _headers = get_vouchers_with_http_info(opts)
      data
    end

    # Retrieve vouchers
    # There are a multitude of parameter which can be used to filter. A few of them are attached but      for a complete list please check out &lt;a href&#x3D;&#39;#tag/Voucher/How-to-filter-for-certain-vouchers&#39;&gt;this&lt;/a&gt; list
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :status Status of the vouchers to retrieve.
    # @option opts [String] :credit_debit Define if you only want credit or debit vouchers.
    # @option opts [String] :description_like Retrieve all vouchers with a description like this.
    # @option opts [Integer] :start_date Retrieve all vouchers with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all vouchers with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all vouchers with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [Array<(GetVouchers200Response, Integer, Hash)>] GetVouchers200Response data, response status code and response headers
    def get_vouchers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.get_vouchers ...'
      end
      allowable_values = [50, 100, 1000]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      allowable_values = ["C", "D"]
      if @api_client.config.client_side_validation && opts[:'credit_debit'] && !allowable_values.include?(opts[:'credit_debit'])
        fail ArgumentError, "invalid value for \"credit_debit\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/Voucher'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'creditDebit'] = opts[:'credit_debit'] if !opts[:'credit_debit'].nil?
      query_params[:'descriptionLike'] = opts[:'description_like'] if !opts[:'description_like'].nil?
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
      return_type = opts[:debug_return_type] || 'GetVouchers200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.get_vouchers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#get_vouchers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing voucher
    # Update a draft voucher using this method if you want to change simple values like the description. Complex changes like adding a position should use /Voucher/Factory/saveVoucher.<br> You can not change the status using this endpoint.
    # @param voucher_id [Integer] ID of voucher to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelVoucherUpdate] :model_voucher_update Update data
    # @return [ModelVoucherResponse]
    def update_voucher(voucher_id, opts = {})
      data, _status_code, _headers = update_voucher_with_http_info(voucher_id, opts)
      data
    end

    # Update an existing voucher
    # Update a draft voucher using this method if you want to change simple values like the description. Complex changes like adding a position should use /Voucher/Factory/saveVoucher.&lt;br&gt; You can not change the status using this endpoint.
    # @param voucher_id [Integer] ID of voucher to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelVoucherUpdate] :model_voucher_update Update data
    # @return [Array<(ModelVoucherResponse, Integer, Hash)>] ModelVoucherResponse data, response status code and response headers
    def update_voucher_with_http_info(voucher_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.update_voucher ...'
      end
      # verify the required parameter 'voucher_id' is set
      if @api_client.config.client_side_validation && voucher_id.nil?
        fail ArgumentError, "Missing the required parameter 'voucher_id' when calling VoucherApi.update_voucher"
      end
      # resource path
      local_var_path = '/Voucher/{voucherId}'.sub('{' + 'voucherId' + '}', CGI.escape(voucher_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_voucher_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelVoucherResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.update_voucher",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#update_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enshrine
    # Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Open\" (`\"status\": \"100\"`) or higher.  Enshrined vouchers cannot be changed. This operation cannot be undone. 
    # @param voucher_id [Integer] ID of the voucher to enshrine
    # @param [Hash] opts the optional parameters
    # @return [CheckAccountTransactionEnshrine200Response]
    def voucher_enshrine(voucher_id, opts = {})
      data, _status_code, _headers = voucher_enshrine_with_http_info(voucher_id, opts)
      data
    end

    # Enshrine
    # Sets the current date and time as a value for the property &#x60;enshrined&#x60;.&lt;br&gt; This operation is only possible if the status is \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;100\&quot;&#x60;) or higher.  Enshrined vouchers cannot be changed. This operation cannot be undone. 
    # @param voucher_id [Integer] ID of the voucher to enshrine
    # @param [Hash] opts the optional parameters
    # @return [Array<(CheckAccountTransactionEnshrine200Response, Integer, Hash)>] CheckAccountTransactionEnshrine200Response data, response status code and response headers
    def voucher_enshrine_with_http_info(voucher_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.voucher_enshrine ...'
      end
      # verify the required parameter 'voucher_id' is set
      if @api_client.config.client_side_validation && voucher_id.nil?
        fail ArgumentError, "Missing the required parameter 'voucher_id' when calling VoucherApi.voucher_enshrine"
      end
      # resource path
      local_var_path = '/Voucher/{voucherId}/enshrine'.sub('{' + 'voucherId' + '}', CGI.escape(voucher_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CheckAccountTransactionEnshrine200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.voucher_enshrine",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#voucher_enshrine\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new voucher
    # Bundles the creation or updating of voucher and voucher position.<br> The list of parameters starts with the voucher model.<br> This contains all required attributes for a complete voucher.<br> Most of the attributes are covered in the voucher attribute list, there are only two parameters standing out, namely <b>mapAll</b> and <b>objectName</b>.<br> These are just needed for our system and you always need to provide them.<br><br> The list of parameters then continues with the voucher position array.<br> With this array you have the possibility to add multiple positions at once.<br> In the example it only contains one position, again together with the parameters <b>mapAll</b> and <b>objectName</b>, however, you can add more voucher positions by extending the array.<br> So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \\\"1\\\" instead of \\\"0\\\".<br><br> The list ends with the two parameters voucherPosDelete and filename.<br> We will shortly explain what they can do.<br> With voucherPosDelete you can delete voucher positions as this request can also be used to update draft vouchers.<br> With filename you can attach a file to the voucher.<br> For most of our customers this is a really important step, as they need to digitize their receipts.<br> Finally, after covering all parameters, the only important information left, is that the order of the last two attributes always needs to be kept. <br><br> The only valid status values for this endpoint are 50 (draft) and 100 (open). You can only update draft vouchers. If you have to, you can downgrade the status by calling resetToOpen (from paid) and resetToDraft (from open).
    # @param [Hash] opts the optional parameters
    # @option opts [SaveVoucher] :save_voucher Creation data. Please be aware, that you need to provide at least all required parameters of the voucher and voucher position model!
    # @return [SaveVoucherResponse]
    def voucher_factory_save_voucher(opts = {})
      data, _status_code, _headers = voucher_factory_save_voucher_with_http_info(opts)
      data
    end

    # Create a new voucher
    # Bundles the creation or updating of voucher and voucher position.&lt;br&gt; The list of parameters starts with the voucher model.&lt;br&gt; This contains all required attributes for a complete voucher.&lt;br&gt; Most of the attributes are covered in the voucher attribute list, there are only two parameters standing out, namely &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;.&lt;br&gt; These are just needed for our system and you always need to provide them.&lt;br&gt;&lt;br&gt; The list of parameters then continues with the voucher position array.&lt;br&gt; With this array you have the possibility to add multiple positions at once.&lt;br&gt; In the example it only contains one position, again together with the parameters &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;, however, you can add more voucher positions by extending the array.&lt;br&gt; So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \\\&quot;1\\\&quot; instead of \\\&quot;0\\\&quot;.&lt;br&gt;&lt;br&gt; The list ends with the two parameters voucherPosDelete and filename.&lt;br&gt; We will shortly explain what they can do.&lt;br&gt; With voucherPosDelete you can delete voucher positions as this request can also be used to update draft vouchers.&lt;br&gt; With filename you can attach a file to the voucher.&lt;br&gt; For most of our customers this is a really important step, as they need to digitize their receipts.&lt;br&gt; Finally, after covering all parameters, the only important information left, is that the order of the last two attributes always needs to be kept. &lt;br&gt;&lt;br&gt; The only valid status values for this endpoint are 50 (draft) and 100 (open). You can only update draft vouchers. If you have to, you can downgrade the status by calling resetToOpen (from paid) and resetToDraft (from open).
    # @param [Hash] opts the optional parameters
    # @option opts [SaveVoucher] :save_voucher Creation data. Please be aware, that you need to provide at least all required parameters of the voucher and voucher position model!
    # @return [Array<(SaveVoucherResponse, Integer, Hash)>] SaveVoucherResponse data, response status code and response headers
    def voucher_factory_save_voucher_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.voucher_factory_save_voucher ...'
      end
      # resource path
      local_var_path = '/Voucher/Factory/saveVoucher'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'save_voucher'])

      # return_type
      return_type = opts[:debug_return_type] || 'SaveVoucherResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.voucher_factory_save_voucher",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#voucher_factory_save_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to draft
    # Resets the status \"Draft\" (`\"status\": \"50\"`). Linked payments will be unlinked. Created asset depreciation will be reset.<br> This is not possible if the voucher is already enshrined!  You can only change the status from higher to lower (\"Open\" to \"Draft\").<br> To change to higher status use [/Voucher/Factory/saveVoucher](#tag/Voucher/operation/voucherFactorySaveVoucher). 
    # @param voucher_id [Integer] ID of the voucher to reset
    # @param [Hash] opts the optional parameters
    # @return [VoucherResetToOpen200Response]
    def voucher_reset_to_draft(voucher_id, opts = {})
      data, _status_code, _headers = voucher_reset_to_draft_with_http_info(voucher_id, opts)
      data
    end

    # Reset status to draft
    # Resets the status \&quot;Draft\&quot; (&#x60;\&quot;status\&quot;: \&quot;50\&quot;&#x60;). Linked payments will be unlinked. Created asset depreciation will be reset.&lt;br&gt; This is not possible if the voucher is already enshrined!  You can only change the status from higher to lower (\&quot;Open\&quot; to \&quot;Draft\&quot;).&lt;br&gt; To change to higher status use [/Voucher/Factory/saveVoucher](#tag/Voucher/operation/voucherFactorySaveVoucher). 
    # @param voucher_id [Integer] ID of the voucher to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(VoucherResetToOpen200Response, Integer, Hash)>] VoucherResetToOpen200Response data, response status code and response headers
    def voucher_reset_to_draft_with_http_info(voucher_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.voucher_reset_to_draft ...'
      end
      # verify the required parameter 'voucher_id' is set
      if @api_client.config.client_side_validation && voucher_id.nil?
        fail ArgumentError, "Missing the required parameter 'voucher_id' when calling VoucherApi.voucher_reset_to_draft"
      end
      # resource path
      local_var_path = '/Voucher/{voucherId}/resetToDraft'.sub('{' + 'voucherId' + '}', CGI.escape(voucher_id.to_s))

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
      return_type = opts[:debug_return_type] || 'VoucherResetToOpen200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.voucher_reset_to_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#voucher_reset_to_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to open
    # Resets the status to \"Open\" (`\"status\": \"100\"`). Linked payments will be unlinked. Created asset depreciation will be reset.<br> This is not possible if the voucher is already enshrined!  This endpoint can not be used to increase the status from \"Draft\" to \"Open\".<br> You can only change the status from higher to lower (\"Open\" to \"Draft\").<br> To change to higher status use [Voucher/{voucherId}/bookAmount](#tag/Voucher/operation/bookVoucher). To change to lower status use [Voucher/{voucherId}/resetToDraft](#tag/Voucher/operation/voucherResetToDraft). 
    # @param voucher_id [Integer] ID of the voucher to reset
    # @param [Hash] opts the optional parameters
    # @return [VoucherResetToOpen200Response]
    def voucher_reset_to_open(voucher_id, opts = {})
      data, _status_code, _headers = voucher_reset_to_open_with_http_info(voucher_id, opts)
      data
    end

    # Reset status to open
    # Resets the status to \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;100\&quot;&#x60;). Linked payments will be unlinked. Created asset depreciation will be reset.&lt;br&gt; This is not possible if the voucher is already enshrined!  This endpoint can not be used to increase the status from \&quot;Draft\&quot; to \&quot;Open\&quot;.&lt;br&gt; You can only change the status from higher to lower (\&quot;Open\&quot; to \&quot;Draft\&quot;).&lt;br&gt; To change to higher status use [Voucher/{voucherId}/bookAmount](#tag/Voucher/operation/bookVoucher). To change to lower status use [Voucher/{voucherId}/resetToDraft](#tag/Voucher/operation/voucherResetToDraft). 
    # @param voucher_id [Integer] ID of the voucher to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(VoucherResetToOpen200Response, Integer, Hash)>] VoucherResetToOpen200Response data, response status code and response headers
    def voucher_reset_to_open_with_http_info(voucher_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.voucher_reset_to_open ...'
      end
      # verify the required parameter 'voucher_id' is set
      if @api_client.config.client_side_validation && voucher_id.nil?
        fail ArgumentError, "Missing the required parameter 'voucher_id' when calling VoucherApi.voucher_reset_to_open"
      end
      # resource path
      local_var_path = '/Voucher/{voucherId}/resetToOpen'.sub('{' + 'voucherId' + '}', CGI.escape(voucher_id.to_s))

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
      return_type = opts[:debug_return_type] || 'VoucherResetToOpen200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.voucher_reset_to_open",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#voucher_reset_to_open\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload voucher file
    # To attach a document to a voucher, you will need to upload it first for later use.<br> To do this, you can use this request.<br> When you successfully uploaded the file, you will get a sevdesk internal filename in the response.<br> The filename will be a hash generated from your uploaded file. You will need it in the next request!<br> After you got the just mentioned filename, you can enter it as a value for the filename parameter of the saveVoucher request.<br> If you provided all necessary parameters and kept all of them in the right order, the file will be attached to your voucher.
    # @param [Hash] opts the optional parameters
    # @option opts [VoucherUploadFileRequest] :voucher_upload_file_request File to upload
    # @return [VoucherUploadFile201Response]
    def voucher_upload_file(opts = {})
      data, _status_code, _headers = voucher_upload_file_with_http_info(opts)
      data
    end

    # Upload voucher file
    # To attach a document to a voucher, you will need to upload it first for later use.&lt;br&gt; To do this, you can use this request.&lt;br&gt; When you successfully uploaded the file, you will get a sevdesk internal filename in the response.&lt;br&gt; The filename will be a hash generated from your uploaded file. You will need it in the next request!&lt;br&gt; After you got the just mentioned filename, you can enter it as a value for the filename parameter of the saveVoucher request.&lt;br&gt; If you provided all necessary parameters and kept all of them in the right order, the file will be attached to your voucher.
    # @param [Hash] opts the optional parameters
    # @option opts [VoucherUploadFileRequest] :voucher_upload_file_request File to upload
    # @return [Array<(VoucherUploadFile201Response, Integer, Hash)>] VoucherUploadFile201Response data, response status code and response headers
    def voucher_upload_file_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoucherApi.voucher_upload_file ...'
      end
      # resource path
      local_var_path = '/Voucher/Factory/uploadTempFile'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'voucher_upload_file_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'VoucherUploadFile201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VoucherApi.voucher_upload_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoucherApi#voucher_upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
