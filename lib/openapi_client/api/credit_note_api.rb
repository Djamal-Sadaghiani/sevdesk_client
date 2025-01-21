require 'cgi'

module OpenapiClient
  class CreditNoteApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Book a credit note
    # Booking the credit note with a transaction is probably the most important part in the bookkeeping process.<br> There are several ways on correctly booking a credit note, all by using the same endpoint.<br> Conveniently, the booking process is exactly the same as the process for invoices and vouchers.<br> For this reason, you can have a look at it in the <a href='#tag/Invoice/How-to-book-an-invoice'>invoice chapter</a> and all you need to do is to change \"Invoice\" into \"CreditNote\" in the URL.
    # @param credit_note_id [Integer] ID of credit note to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookCreditNoteRequest] :book_credit_note_request Booking data
    # @return [BookCreditNote200Response]
    def book_credit_note(credit_note_id, opts = {})
      data, _status_code, _headers = book_credit_note_with_http_info(credit_note_id, opts)
      data
    end

    # Book a credit note
    # Booking the credit note with a transaction is probably the most important part in the bookkeeping process.&lt;br&gt; There are several ways on correctly booking a credit note, all by using the same endpoint.&lt;br&gt; Conveniently, the booking process is exactly the same as the process for invoices and vouchers.&lt;br&gt; For this reason, you can have a look at it in the &lt;a href&#x3D;&#39;#tag/Invoice/How-to-book-an-invoice&#39;&gt;invoice chapter&lt;/a&gt; and all you need to do is to change \&quot;Invoice\&quot; into \&quot;CreditNote\&quot; in the URL.
    # @param credit_note_id [Integer] ID of credit note to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookCreditNoteRequest] :book_credit_note_request Booking data
    # @return [Array<(BookCreditNote200Response, Integer, Hash)>] BookCreditNote200Response data, response status code and response headers
    def book_credit_note_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.book_credit_note ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.book_credit_note"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/bookAmount'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'book_credit_note_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BookCreditNote200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.book_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#book_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new creditNote from an invoice
    # Use this endpoint to create a new creditNote from an invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromInvoiceRequest] :create_credit_note_from_invoice_request 
    # @return [CreateCreditNoteFromInvoice201Response]
    def create_credit_note_from_invoice(opts = {})
      data, _status_code, _headers = create_credit_note_from_invoice_with_http_info(opts)
      data
    end

    # Creates a new creditNote from an invoice
    # Use this endpoint to create a new creditNote from an invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromInvoiceRequest] :create_credit_note_from_invoice_request 
    # @return [Array<(CreateCreditNoteFromInvoice201Response, Integer, Hash)>] CreateCreditNoteFromInvoice201Response data, response status code and response headers
    def create_credit_note_from_invoice_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.create_credit_note_from_invoice ...'
      end
      # resource path
      local_var_path = '/CreditNote/Factory/createFromInvoice'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_credit_note_from_invoice_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCreditNoteFromInvoice201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.create_credit_note_from_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#create_credit_note_from_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new creditNote from a voucher
    # **Not supported with sevdesk-Update 2.0**  Use this endpoint to create a new creditNote from a voucher. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromVoucherRequest] :create_credit_note_from_voucher_request 
    # @return [CreateCreditNoteFromInvoice201Response]
    def create_credit_note_from_voucher(opts = {})
      data, _status_code, _headers = create_credit_note_from_voucher_with_http_info(opts)
      data
    end

    # Creates a new creditNote from a voucher
    # **Not supported with sevdesk-Update 2.0**  Use this endpoint to create a new creditNote from a voucher. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromVoucherRequest] :create_credit_note_from_voucher_request 
    # @return [Array<(CreateCreditNoteFromInvoice201Response, Integer, Hash)>] CreateCreditNoteFromInvoice201Response data, response status code and response headers
    def create_credit_note_from_voucher_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.create_credit_note_from_voucher ...'
      end
      # resource path
      local_var_path = '/CreditNote/Factory/createFromVoucher'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_credit_note_from_voucher_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCreditNoteFromInvoice201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.create_credit_note_from_voucher",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#create_credit_note_from_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new creditNote
    # The list of parameters starts with the credit note array.<br> This array contains all required attributes for a complete credit note.<br> Most of the attributes are covered in the credit note attribute list, there are only two parameters standing out, namely <b>mapAll</b> and <b>objectName</b>.<br> These are just needed for our system and you always need to provide them.<br> The list of parameters then continues with the credit note position array.<br> With this array you have the possibility to add multiple positions at once.<br> In the example it only contains one position, again together with the parameters <b>mapAll</b> and <b>objectName</b>, however, you can add more credit note positions by extending the array.<br> So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \"1\" instead of \"0\".<br><br> The list ends with the five parameters creditNotePosDelete, discountSave, discountDelete, takeDefaultAddress and forCashRegister.<br> They only play a minor role if you only want to create a credit note but we will shortly explain what they can do.<br> With creditNotePosDelete you have to option to delete credit note positions as this request can also be used to update credit notes.<br> Both discount parameters are deprecated and have no use for credit notes, however they need to be provided in case you want to use the following two parameters.<br> With takeDefaultAddress you can specify that the first address of the contact you are using for the credit note is taken for the credit note address attribute automatically, so you don't need to provide the address yourself.<br> Finally, the forCashRegister parameter needs to be set to <b>true</b> if your credit note is to be booked on the cash register.<br> If you want to know more about these parameters, for example if you want to use this request to update credit notes, feel free to contact our support.<br> Finally, after covering all parameters, they only important information left, is that the order of the last five attributes always needs to be kept.<br> You will also always need to provide all of them, as otherwise the request won't work properly.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveCreditNote] :save_credit_note Creation data. Please be aware, that you need to provide at least all required parameter      of the credit note model!
    # @return [SaveCreditNoteResponse]
    def createcredit_note(opts = {})
      data, _status_code, _headers = createcredit_note_with_http_info(opts)
      data
    end

    # Create a new creditNote
    # The list of parameters starts with the credit note array.&lt;br&gt; This array contains all required attributes for a complete credit note.&lt;br&gt; Most of the attributes are covered in the credit note attribute list, there are only two parameters standing out, namely &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;.&lt;br&gt; These are just needed for our system and you always need to provide them.&lt;br&gt; The list of parameters then continues with the credit note position array.&lt;br&gt; With this array you have the possibility to add multiple positions at once.&lt;br&gt; In the example it only contains one position, again together with the parameters &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;, however, you can add more credit note positions by extending the array.&lt;br&gt; So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \&quot;1\&quot; instead of \&quot;0\&quot;.&lt;br&gt;&lt;br&gt; The list ends with the five parameters creditNotePosDelete, discountSave, discountDelete, takeDefaultAddress and forCashRegister.&lt;br&gt; They only play a minor role if you only want to create a credit note but we will shortly explain what they can do.&lt;br&gt; With creditNotePosDelete you have to option to delete credit note positions as this request can also be used to update credit notes.&lt;br&gt; Both discount parameters are deprecated and have no use for credit notes, however they need to be provided in case you want to use the following two parameters.&lt;br&gt; With takeDefaultAddress you can specify that the first address of the contact you are using for the credit note is taken for the credit note address attribute automatically, so you don&#39;t need to provide the address yourself.&lt;br&gt; Finally, the forCashRegister parameter needs to be set to &lt;b&gt;true&lt;/b&gt; if your credit note is to be booked on the cash register.&lt;br&gt; If you want to know more about these parameters, for example if you want to use this request to update credit notes, feel free to contact our support.&lt;br&gt; Finally, after covering all parameters, they only important information left, is that the order of the last five attributes always needs to be kept.&lt;br&gt; You will also always need to provide all of them, as otherwise the request won&#39;t work properly.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveCreditNote] :save_credit_note Creation data. Please be aware, that you need to provide at least all required parameter      of the credit note model!
    # @return [Array<(SaveCreditNoteResponse, Integer, Hash)>] SaveCreditNoteResponse data, response status code and response headers
    def createcredit_note_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.createcredit_note ...'
      end
      # resource path
      local_var_path = '/CreditNote/Factory/saveCreditNote'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'save_credit_note'])

      # return_type
      return_type = opts[:debug_return_type] || 'SaveCreditNoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.createcredit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#createcredit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enshrine
    # Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Open\" (`\"status\": \"200\"`) or higher.  Enshrined credit notes cannot be changed. This operation cannot be undone. 
    # @param credit_note_id [Integer] ID of the credit note to enshrine
    # @param [Hash] opts the optional parameters
    # @return [CheckAccountTransactionEnshrine200Response]
    def credit_note_enshrine(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_enshrine_with_http_info(credit_note_id, opts)
      data
    end

    # Enshrine
    # Sets the current date and time as a value for the property &#x60;enshrined&#x60;.&lt;br&gt; This operation is only possible if the status is \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;) or higher.  Enshrined credit notes cannot be changed. This operation cannot be undone. 
    # @param credit_note_id [Integer] ID of the credit note to enshrine
    # @param [Hash] opts the optional parameters
    # @return [Array<(CheckAccountTransactionEnshrine200Response, Integer, Hash)>] CheckAccountTransactionEnshrine200Response data, response status code and response headers
    def credit_note_enshrine_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_enshrine ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_enshrine"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/enshrine'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
        :operation => :"CreditNoteApi.credit_note_enshrine",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_enshrine\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve pdf document of a credit note
    # Retrieves the pdf document of a credit note with additional metadata.
    # @param credit_note_id [Integer] ID of credit note from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the credit note.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the credit note.
    # @return [CreditNoteGetPdf200Response]
    def credit_note_get_pdf(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_get_pdf_with_http_info(credit_note_id, opts)
      data
    end

    # Retrieve pdf document of a credit note
    # Retrieves the pdf document of a credit note with additional metadata.
    # @param credit_note_id [Integer] ID of credit note from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the credit note.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the credit note.
    # @return [Array<(CreditNoteGetPdf200Response, Integer, Hash)>] CreditNoteGetPdf200Response data, response status code and response headers
    def credit_note_get_pdf_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_get_pdf ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_get_pdf"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/getPdf'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditNoteGetPdf200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_get_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_get_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to draft
    # Resets the status to \"Draft\" (`\"status\": \"100\"`).<br> This is only possible if the credit note has the status \"Open\" (`\"status\": \"200\"`).<br> If it has a higher status use [CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen) first. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [CreditNoteResetToDraft200Response]
    def credit_note_reset_to_draft(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_reset_to_draft_with_http_info(credit_note_id, opts)
      data
    end

    # Reset status to draft
    # Resets the status to \&quot;Draft\&quot; (&#x60;\&quot;status\&quot;: \&quot;100\&quot;&#x60;).&lt;br&gt; This is only possible if the credit note has the status \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;).&lt;br&gt; If it has a higher status use [CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen) first. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNoteResetToDraft200Response, Integer, Hash)>] CreditNoteResetToDraft200Response data, response status code and response headers
    def credit_note_reset_to_draft_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_reset_to_draft ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_reset_to_draft"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/resetToDraft'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditNoteResetToDraft200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_reset_to_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_reset_to_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to open
    # Resets the status \"Open\" (`\"status\": \"200\"`). Linked transactions will be unlinked.<br> This is not possible if the credit note itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \"Open\" (`\"status\": \"200\"`).<br> Use [CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy) / [CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail) instead. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [CreditNoteResetToOpen200Response]
    def credit_note_reset_to_open(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_reset_to_open_with_http_info(credit_note_id, opts)
      data
    end

    # Reset status to open
    # Resets the status \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;). Linked transactions will be unlinked.&lt;br&gt; This is not possible if the credit note itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;).&lt;br&gt; Use [CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy) / [CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail) instead. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNoteResetToOpen200Response, Integer, Hash)>] CreditNoteResetToOpen200Response data, response status code and response headers
    def credit_note_reset_to_open_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_reset_to_open ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_reset_to_open"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/resetToOpen'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditNoteResetToOpen200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_reset_to_open",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_reset_to_open\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark credit note as sent
    # Marks an credit note as sent by a chosen send type.
    # @param credit_note_id [Integer] ID of credit note to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [CreditNoteSendByRequest] :credit_note_send_by_request Specify the send type
    # @return [ModelCreditNoteResponse]
    def credit_note_send_by(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_send_by_with_http_info(credit_note_id, opts)
      data
    end

    # Mark credit note as sent
    # Marks an credit note as sent by a chosen send type.
    # @param credit_note_id [Integer] ID of credit note to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [CreditNoteSendByRequest] :credit_note_send_by_request Specify the send type
    # @return [Array<(ModelCreditNoteResponse, Integer, Hash)>] ModelCreditNoteResponse data, response status code and response headers
    def credit_note_send_by_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_send_by ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_send_by"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/sendBy'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'credit_note_send_by_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCreditNoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_send_by",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_send_by\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an creditNote
    # @param credit_note_id [Integer] Id of creditNote resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def deletecredit_note(credit_note_id, opts = {})
      data, _status_code, _headers = deletecredit_note_with_http_info(credit_note_id, opts)
      data
    end

    # Deletes an creditNote
    # @param credit_note_id [Integer] Id of creditNote resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def deletecredit_note_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.deletecredit_note ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.deletecredit_note"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
        :operation => :"CreditNoteApi.deletecredit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#deletecredit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve CreditNote
    # There are a multitude of parameter which can be used to filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of the CreditNote
    # @option opts [String] :credit_note_number Retrieve all CreditNotes with this creditNote number
    # @option opts [Integer] :start_date Retrieve all CreditNotes with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all CreditNotes with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all CreditNotes with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [GetCreditNotes200Response]
    def get_credit_notes(opts = {})
      data, _status_code, _headers = get_credit_notes_with_http_info(opts)
      data
    end

    # Retrieve CreditNote
    # There are a multitude of parameter which can be used to filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of the CreditNote
    # @option opts [String] :credit_note_number Retrieve all CreditNotes with this creditNote number
    # @option opts [Integer] :start_date Retrieve all CreditNotes with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all CreditNotes with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all CreditNotes with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [Array<(GetCreditNotes200Response, Integer, Hash)>] GetCreditNotes200Response data, response status code and response headers
    def get_credit_notes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.get_credit_notes ...'
      end
      allowable_values = ["100", "200", "300", "500", "750", "1000"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/CreditNote'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'creditNoteNumber'] = opts[:'credit_note_number'] if !opts[:'credit_note_number'].nil?
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
      return_type = opts[:debug_return_type] || 'GetCreditNotes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.get_credit_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#get_credit_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find creditNote by ID
    # Returns a single creditNote
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param [Hash] opts the optional parameters
    # @return [GetCreditNotes200Response]
    def getcredit_note_by_id(credit_note_id, opts = {})
      data, _status_code, _headers = getcredit_note_by_id_with_http_info(credit_note_id, opts)
      data
    end

    # Find creditNote by ID
    # Returns a single creditNote
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCreditNotes200Response, Integer, Hash)>] GetCreditNotes200Response data, response status code and response headers
    def getcredit_note_by_id_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.getcredit_note_by_id ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.getcredit_note_by_id"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetCreditNotes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.getcredit_note_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#getcredit_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send credit note by printing
    # Sending a credit note to end-customers is an important part of the bookkeeping process.<br> Depending on the way you want to send the credit note, you need to use different endpoints.<br> Let's start with just printing out the credit note, meaning we only need to render the pdf.
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param send_type [String] the type you want to print.
    # @param [Hash] opts the optional parameters
    # @return [ModelCreditNoteSendByWithRender]
    def send_credit_note_by_printing(credit_note_id, send_type, opts = {})
      data, _status_code, _headers = send_credit_note_by_printing_with_http_info(credit_note_id, send_type, opts)
      data
    end

    # Send credit note by printing
    # Sending a credit note to end-customers is an important part of the bookkeeping process.&lt;br&gt; Depending on the way you want to send the credit note, you need to use different endpoints.&lt;br&gt; Let&#39;s start with just printing out the credit note, meaning we only need to render the pdf.
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param send_type [String] the type you want to print.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelCreditNoteSendByWithRender, Integer, Hash)>] ModelCreditNoteSendByWithRender data, response status code and response headers
    def send_credit_note_by_printing_with_http_info(credit_note_id, send_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.send_credit_note_by_printing ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.send_credit_note_by_printing"
      end
      # verify the required parameter 'send_type' is set
      if @api_client.config.client_side_validation && send_type.nil?
        fail ArgumentError, "Missing the required parameter 'send_type' when calling CreditNoteApi.send_credit_note_by_printing"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/sendByWithRender'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sendType'] = send_type

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCreditNoteSendByWithRender'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.send_credit_note_by_printing",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#send_credit_note_by_printing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send credit note via email
    # This endpoint sends the specified credit note to a customer via email.<br>      This will automatically mark the credit note as sent.<br>      Please note, that in production an credit note is not allowed to be changed after this happened!
    # @param credit_note_id [Integer] ID of credit note to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendCreditNoteViaEMailRequest] :send_credit_note_via_e_mail_request Mail data
    # @return [SendCreditNoteViaEMail201Response]
    def send_credit_note_via_e_mail(credit_note_id, opts = {})
      data, _status_code, _headers = send_credit_note_via_e_mail_with_http_info(credit_note_id, opts)
      data
    end

    # Send credit note via email
    # This endpoint sends the specified credit note to a customer via email.&lt;br&gt;      This will automatically mark the credit note as sent.&lt;br&gt;      Please note, that in production an credit note is not allowed to be changed after this happened!
    # @param credit_note_id [Integer] ID of credit note to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendCreditNoteViaEMailRequest] :send_credit_note_via_e_mail_request Mail data
    # @return [Array<(SendCreditNoteViaEMail201Response, Integer, Hash)>] SendCreditNoteViaEMail201Response data, response status code and response headers
    def send_credit_note_via_e_mail_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.send_credit_note_via_e_mail ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.send_credit_note_via_e_mail"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/sendViaEmail'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_credit_note_via_e_mail_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SendCreditNoteViaEMail201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.send_credit_note_via_e_mail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#send_credit_note_via_e_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing creditNote
    # Update a creditNote
    # @param credit_note_id [Integer] ID of creditNote to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreditNoteUpdate] :model_credit_note_update Update data
    # @return [ModelCreditNoteResponse]
    def updatecredit_note(credit_note_id, opts = {})
      data, _status_code, _headers = updatecredit_note_with_http_info(credit_note_id, opts)
      data
    end

    # Update an existing creditNote
    # Update a creditNote
    # @param credit_note_id [Integer] ID of creditNote to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreditNoteUpdate] :model_credit_note_update Update data
    # @return [Array<(ModelCreditNoteResponse, Integer, Hash)>] ModelCreditNoteResponse data, response status code and response headers
    def updatecredit_note_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.updatecredit_note ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.updatecredit_note"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_credit_note_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCreditNoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.updatecredit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#updatecredit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
