require 'cgi'

module OpenapiClient
  class InvoiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Book an invoice
    # Booking the invoice with a transaction is probably the most important part in the bookkeeping process.<br> There are several ways on correctly booking an invoice, all by using the same endpoint.<br> for more information look <a href='#tag/Invoice/How-to-book-an-invoice'>here</a>.
    # @param invoice_id [Integer] ID of invoice to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookInvoiceRequest] :book_invoice_request Booking data
    # @return [BookInvoice200Response]
    def book_invoice(invoice_id, opts = {})
      data, _status_code, _headers = book_invoice_with_http_info(invoice_id, opts)
      data
    end

    # Book an invoice
    # Booking the invoice with a transaction is probably the most important part in the bookkeeping process.&lt;br&gt; There are several ways on correctly booking an invoice, all by using the same endpoint.&lt;br&gt; for more information look &lt;a href&#x3D;&#39;#tag/Invoice/How-to-book-an-invoice&#39;&gt;here&lt;/a&gt;.
    # @param invoice_id [Integer] ID of invoice to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookInvoiceRequest] :book_invoice_request Booking data
    # @return [Array<(BookInvoice200Response, Integer, Hash)>] BookInvoice200Response data, response status code and response headers
    def book_invoice_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.book_invoice ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.book_invoice"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/bookAmount'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'book_invoice_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BookInvoice200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.book_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#book_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel an invoice / Create cancellation invoice
    # This endpoint will cancel the specified invoice therefor creating a cancellation invoice.<br>       The cancellation invoice will be automatically paid and the source invoices status will change to 'cancelled'.
    # @param invoice_id [Integer] ID of invoice to be cancelled
    # @param [Hash] opts the optional parameters
    # @return [ModelInvoiceResponse]
    def cancel_invoice(invoice_id, opts = {})
      data, _status_code, _headers = cancel_invoice_with_http_info(invoice_id, opts)
      data
    end

    # Cancel an invoice / Create cancellation invoice
    # This endpoint will cancel the specified invoice therefor creating a cancellation invoice.&lt;br&gt;       The cancellation invoice will be automatically paid and the source invoices status will change to &#39;cancelled&#39;.
    # @param invoice_id [Integer] ID of invoice to be cancelled
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelInvoiceResponse, Integer, Hash)>] ModelInvoiceResponse data, response status code and response headers
    def cancel_invoice_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.cancel_invoice ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.cancel_invoice"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/cancelInvoice'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ModelInvoiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.cancel_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#cancel_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new invoice
    # This endpoint offers you the following functionality.       <ul>          <li>Create invoices together with positions and discounts</li>          <li>Delete positions while adding new ones</li>          <li>Delete or add discounts, or both at the same time</li>          <li>Automatically fill the address of the supplied contact into the invoice address</li>       </ul>       To make your own request sample slimmer, you can omit all parameters which are not required and nullable.       However, for a valid and logical bookkeeping document, you will also need some of them to ensure that all the necessary data is in the invoice.<br><br> The list of parameters starts with the invoice array.<br> This array contains all required attributes for a complete invoice.<br> Most of the attributes are covered in the invoice attribute list, there are only two parameters standing out, namely <b>mapAll</b> and <b>objectName</b>.<br> These are just needed for our system and you always need to provide them.<br><br> The list of parameters then continues with the invoice position array.<br> With this array you have the possibility to add multiple positions at once.<br> In the example it only contains one position, again together with the parameters <b>mapAll</b> and <b>objectName</b>, however, you can add more invoice positions by extending the array.<br> So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \"1\" instead of \"0\".<br><br> The list ends with the four parameters invoicePosDelete, discountSave, discountDelete and takeDefaultAddress.<br> They only play a minor role if you only want to create an invoice but we will shortly explain what they can do.<br> With invoicePosDelete you have to option to delete invoice positions as this request can also be used to update invoices.<br> With discountSave you can add discounts to your invoice.<br> With discountDelete you can delete discounts from your invoice.<br> With takeDefaultAddress you can specify that the first address of the contact you are using for the invoice is taken for the invoice address attribute automatically, so you don't need to provide the address yourself.<br> If you want to know more about these parameters, for example if you want to use this request to update invoices, feel free to contact our support.<br><br> Finally, after covering all parameters, they only important information left, is that the order of the last four attributes always needs to be kept.<br> You will also always need to provide all of them, as otherwise the request won't work properly.<br><br> <b>Warning:</b> You can not create a regular invoice with the <b>deliveryDate</b> being later than the <b>invoiceDate</b>.<br> To do that you will need to create a so called <b>Abschlagsrechnung</b> by setting the <b>invoiceType</b> parameter to <b>AR</b>.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveInvoice] :save_invoice Creation data. Please be aware, that you need to provide at least all required parameter      of the invoice model!
    # @return [SaveInvoiceResponse]
    def create_invoice_by_factory(opts = {})
      data, _status_code, _headers = create_invoice_by_factory_with_http_info(opts)
      data
    end

    # Create a new invoice
    # This endpoint offers you the following functionality.       &lt;ul&gt;          &lt;li&gt;Create invoices together with positions and discounts&lt;/li&gt;          &lt;li&gt;Delete positions while adding new ones&lt;/li&gt;          &lt;li&gt;Delete or add discounts, or both at the same time&lt;/li&gt;          &lt;li&gt;Automatically fill the address of the supplied contact into the invoice address&lt;/li&gt;       &lt;/ul&gt;       To make your own request sample slimmer, you can omit all parameters which are not required and nullable.       However, for a valid and logical bookkeeping document, you will also need some of them to ensure that all the necessary data is in the invoice.&lt;br&gt;&lt;br&gt; The list of parameters starts with the invoice array.&lt;br&gt; This array contains all required attributes for a complete invoice.&lt;br&gt; Most of the attributes are covered in the invoice attribute list, there are only two parameters standing out, namely &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;.&lt;br&gt; These are just needed for our system and you always need to provide them.&lt;br&gt;&lt;br&gt; The list of parameters then continues with the invoice position array.&lt;br&gt; With this array you have the possibility to add multiple positions at once.&lt;br&gt; In the example it only contains one position, again together with the parameters &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;, however, you can add more invoice positions by extending the array.&lt;br&gt; So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \&quot;1\&quot; instead of \&quot;0\&quot;.&lt;br&gt;&lt;br&gt; The list ends with the four parameters invoicePosDelete, discountSave, discountDelete and takeDefaultAddress.&lt;br&gt; They only play a minor role if you only want to create an invoice but we will shortly explain what they can do.&lt;br&gt; With invoicePosDelete you have to option to delete invoice positions as this request can also be used to update invoices.&lt;br&gt; With discountSave you can add discounts to your invoice.&lt;br&gt; With discountDelete you can delete discounts from your invoice.&lt;br&gt; With takeDefaultAddress you can specify that the first address of the contact you are using for the invoice is taken for the invoice address attribute automatically, so you don&#39;t need to provide the address yourself.&lt;br&gt; If you want to know more about these parameters, for example if you want to use this request to update invoices, feel free to contact our support.&lt;br&gt;&lt;br&gt; Finally, after covering all parameters, they only important information left, is that the order of the last four attributes always needs to be kept.&lt;br&gt; You will also always need to provide all of them, as otherwise the request won&#39;t work properly.&lt;br&gt;&lt;br&gt; &lt;b&gt;Warning:&lt;/b&gt; You can not create a regular invoice with the &lt;b&gt;deliveryDate&lt;/b&gt; being later than the &lt;b&gt;invoiceDate&lt;/b&gt;.&lt;br&gt; To do that you will need to create a so called &lt;b&gt;Abschlagsrechnung&lt;/b&gt; by setting the &lt;b&gt;invoiceType&lt;/b&gt; parameter to &lt;b&gt;AR&lt;/b&gt;.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveInvoice] :save_invoice Creation data. Please be aware, that you need to provide at least all required parameter      of the invoice model!
    # @return [Array<(SaveInvoiceResponse, Integer, Hash)>] SaveInvoiceResponse data, response status code and response headers
    def create_invoice_by_factory_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.create_invoice_by_factory ...'
      end
      # resource path
      local_var_path = '/Invoice/Factory/saveInvoice'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'save_invoice'])

      # return_type
      return_type = opts[:debug_return_type] || 'SaveInvoiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.create_invoice_by_factory",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#create_invoice_by_factory\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create invoice from order
    # Create an invoice from an order
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreateInvoiceFromOrder] :model_create_invoice_from_order Create invoice
    # @return [ModelInvoiceResponse]
    def create_invoice_from_order(opts = {})
      data, _status_code, _headers = create_invoice_from_order_with_http_info(opts)
      data
    end

    # Create invoice from order
    # Create an invoice from an order
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreateInvoiceFromOrder] :model_create_invoice_from_order Create invoice
    # @return [Array<(ModelInvoiceResponse, Integer, Hash)>] ModelInvoiceResponse data, response status code and response headers
    def create_invoice_from_order_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.create_invoice_from_order ...'
      end
      # resource path
      local_var_path = '/Invoice/Factory/createInvoiceFromOrder'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_create_invoice_from_order'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelInvoiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.create_invoice_from_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#create_invoice_from_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create invoice reminder
    # Create an reminder from an invoice
    # @param invoice_id [Integer] the id of the invoice
    # @param invoice_object_name [String] Model name, which is &#39;Invoice&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [CreateInvoiceReminderRequest] :create_invoice_reminder_request Create invoice
    # @return [ModelInvoiceResponse]
    def create_invoice_reminder(invoice_id, invoice_object_name, opts = {})
      data, _status_code, _headers = create_invoice_reminder_with_http_info(invoice_id, invoice_object_name, opts)
      data
    end

    # Create invoice reminder
    # Create an reminder from an invoice
    # @param invoice_id [Integer] the id of the invoice
    # @param invoice_object_name [String] Model name, which is &#39;Invoice&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [CreateInvoiceReminderRequest] :create_invoice_reminder_request Create invoice
    # @return [Array<(ModelInvoiceResponse, Integer, Hash)>] ModelInvoiceResponse data, response status code and response headers
    def create_invoice_reminder_with_http_info(invoice_id, invoice_object_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.create_invoice_reminder ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.create_invoice_reminder"
      end
      # verify the required parameter 'invoice_object_name' is set
      if @api_client.config.client_side_validation && invoice_object_name.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_object_name' when calling InvoiceApi.create_invoice_reminder"
      end
      # resource path
      local_var_path = '/Invoice/Factory/createInvoiceReminder'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'invoice[id]'] = invoice_id
      query_params[:'invoice[objectName]'] = invoice_object_name

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_invoice_reminder_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelInvoiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.create_invoice_reminder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#create_invoice_reminder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find invoice by ID
    # Returns a single invoice
    # @param invoice_id [Integer] ID of invoice to return
    # @param [Hash] opts the optional parameters
    # @return [GetInvoices200Response]
    def get_invoice_by_id(invoice_id, opts = {})
      data, _status_code, _headers = get_invoice_by_id_with_http_info(invoice_id, opts)
      data
    end

    # Find invoice by ID
    # Returns a single invoice
    # @param invoice_id [Integer] ID of invoice to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetInvoices200Response, Integer, Hash)>] GetInvoices200Response data, response status code and response headers
    def get_invoice_by_id_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.get_invoice_by_id ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.get_invoice_by_id"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetInvoices200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.get_invoice_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#get_invoice_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find invoice positions
    # Returns all positions of an invoice
    # @param invoice_id [Integer] ID of invoice to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limits the number of entries returned
    # @option opts [Integer] :offset set the index where the returned entries start
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [GetInvoicePositionsById200Response]
    def get_invoice_positions_by_id(invoice_id, opts = {})
      data, _status_code, _headers = get_invoice_positions_by_id_with_http_info(invoice_id, opts)
      data
    end

    # Find invoice positions
    # Returns all positions of an invoice
    # @param invoice_id [Integer] ID of invoice to return the positions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limits the number of entries returned
    # @option opts [Integer] :offset set the index where the returned entries start
    # @option opts [Array<String>] :embed Get some additional information. Embed can handle multiple values, they must be separated by comma.
    # @return [Array<(GetInvoicePositionsById200Response, Integer, Hash)>] GetInvoicePositionsById200Response data, response status code and response headers
    def get_invoice_positions_by_id_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.get_invoice_positions_by_id ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.get_invoice_positions_by_id"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/getPositions'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetInvoicePositionsById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.get_invoice_positions_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#get_invoice_positions_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve invoices
    # There are a multitude of parameter which can be used to filter. A few of them are attached but       for a complete list please check out <a href='#tag/Invoice/How-to-filter-for-certain-invoices'>this</a> list
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :status Status of the invoices
    # @option opts [String] :invoice_number Retrieve all invoices with this invoice number
    # @option opts [Integer] :start_date Retrieve all invoices with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all invoices with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all invoices with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [GetInvoices200Response]
    def get_invoices(opts = {})
      data, _status_code, _headers = get_invoices_with_http_info(opts)
      data
    end

    # Retrieve invoices
    # There are a multitude of parameter which can be used to filter. A few of them are attached but       for a complete list please check out &lt;a href&#x3D;&#39;#tag/Invoice/How-to-filter-for-certain-invoices&#39;&gt;this&lt;/a&gt; list
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :status Status of the invoices
    # @option opts [String] :invoice_number Retrieve all invoices with this invoice number
    # @option opts [Integer] :start_date Retrieve all invoices with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all invoices with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all invoices with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [Array<(GetInvoices200Response, Integer, Hash)>] GetInvoices200Response data, response status code and response headers
    def get_invoices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.get_invoices ...'
      end
      allowable_values = [100, 200, 1000]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/Invoice'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'invoiceNumber'] = opts[:'invoice_number'] if !opts[:'invoice_number'].nil?
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
      return_type = opts[:debug_return_type] || 'GetInvoices200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.get_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#get_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check if an invoice is already partially paid
    # Returns 'true' if the given invoice is partially paid - 'false' if it is not.      Invoices which are completely paid are regarded as not partially paid.
    # @param invoice_id [Integer] ID of invoice to return
    # @param [Hash] opts the optional parameters
    # @return [ContactCustomerNumberAvailabilityCheck200Response]
    def get_is_invoice_partially_paid(invoice_id, opts = {})
      data, _status_code, _headers = get_is_invoice_partially_paid_with_http_info(invoice_id, opts)
      data
    end

    # Check if an invoice is already partially paid
    # Returns &#39;true&#39; if the given invoice is partially paid - &#39;false&#39; if it is not.      Invoices which are completely paid are regarded as not partially paid.
    # @param invoice_id [Integer] ID of invoice to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactCustomerNumberAvailabilityCheck200Response, Integer, Hash)>] ContactCustomerNumberAvailabilityCheck200Response data, response status code and response headers
    def get_is_invoice_partially_paid_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.get_is_invoice_partially_paid ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.get_is_invoice_partially_paid"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/getIsPartiallyPaid'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ContactCustomerNumberAvailabilityCheck200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.get_is_invoice_partially_paid",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#get_is_invoice_partially_paid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enshrine
    # Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Open\" (`\"status\": \"200\"`) or higher.  Enshrined invoices cannot be changed. This operation cannot be undone. 
    # @param invoice_id [Integer] ID of the invoice to enshrine
    # @param [Hash] opts the optional parameters
    # @return [CheckAccountTransactionEnshrine200Response]
    def invoice_enshrine(invoice_id, opts = {})
      data, _status_code, _headers = invoice_enshrine_with_http_info(invoice_id, opts)
      data
    end

    # Enshrine
    # Sets the current date and time as a value for the property &#x60;enshrined&#x60;.&lt;br&gt; This operation is only possible if the status is \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;) or higher.  Enshrined invoices cannot be changed. This operation cannot be undone. 
    # @param invoice_id [Integer] ID of the invoice to enshrine
    # @param [Hash] opts the optional parameters
    # @return [Array<(CheckAccountTransactionEnshrine200Response, Integer, Hash)>] CheckAccountTransactionEnshrine200Response data, response status code and response headers
    def invoice_enshrine_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoice_enshrine ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.invoice_enshrine"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/enshrine'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
        :operation => :"InvoiceApi.invoice_enshrine",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoice_enshrine\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve pdf document of an invoice
    # Retrieves the pdf document of an invoice with additional metadata.
    # @param invoice_id [Integer] ID of invoice from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the invoice.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the invoice.
    # @return [InvoiceGetPdf200Response]
    def invoice_get_pdf(invoice_id, opts = {})
      data, _status_code, _headers = invoice_get_pdf_with_http_info(invoice_id, opts)
      data
    end

    # Retrieve pdf document of an invoice
    # Retrieves the pdf document of an invoice with additional metadata.
    # @param invoice_id [Integer] ID of invoice from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the invoice.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the invoice.
    # @return [Array<(InvoiceGetPdf200Response, Integer, Hash)>] InvoiceGetPdf200Response data, response status code and response headers
    def invoice_get_pdf_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoice_get_pdf ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.invoice_get_pdf"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/getPdf'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InvoiceGetPdf200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.invoice_get_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoice_get_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve XML of an e-invoice
    # Retrieves the XML of an e-invoice
    # @param invoice_id [Integer] ID of invoice from which you want the XML
    # @param [Hash] opts the optional parameters
    # @return [InvoiceGetXml200Response]
    def invoice_get_xml(invoice_id, opts = {})
      data, _status_code, _headers = invoice_get_xml_with_http_info(invoice_id, opts)
      data
    end

    # Retrieve XML of an e-invoice
    # Retrieves the XML of an e-invoice
    # @param invoice_id [Integer] ID of invoice from which you want the XML
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceGetXml200Response, Integer, Hash)>] InvoiceGetXml200Response data, response status code and response headers
    def invoice_get_xml_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoice_get_xml ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.invoice_get_xml"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/getXml'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InvoiceGetXml200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.invoice_get_xml",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoice_get_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Render the pdf document of an invoice
    # Using this endpoint you can render the pdf document of an invoice.<br>       Use cases for this are the retrieval of the pdf location or the forceful re-render of a already sent invoice.<br>       Please be aware that changing an invoice after it has been sent to a customer is not an allowed bookkeeping process.
    # @param invoice_id [Integer] ID of invoice to render
    # @param [Hash] opts the optional parameters
    # @option opts [InvoiceRenderRequest] :invoice_render_request Define if the document should be forcefully re-rendered.
    # @return [InvoiceRender201Response]
    def invoice_render(invoice_id, opts = {})
      data, _status_code, _headers = invoice_render_with_http_info(invoice_id, opts)
      data
    end

    # Render the pdf document of an invoice
    # Using this endpoint you can render the pdf document of an invoice.&lt;br&gt;       Use cases for this are the retrieval of the pdf location or the forceful re-render of a already sent invoice.&lt;br&gt;       Please be aware that changing an invoice after it has been sent to a customer is not an allowed bookkeeping process.
    # @param invoice_id [Integer] ID of invoice to render
    # @param [Hash] opts the optional parameters
    # @option opts [InvoiceRenderRequest] :invoice_render_request Define if the document should be forcefully re-rendered.
    # @return [Array<(InvoiceRender201Response, Integer, Hash)>] InvoiceRender201Response data, response status code and response headers
    def invoice_render_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoice_render ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.invoice_render"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/render'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invoice_render_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'InvoiceRender201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.invoice_render",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoice_render\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to draft
    # Resets the status to \"Draft\" (`\"status\": \"100\"`).<br> This is only possible if the invoice has the status \"Open\" (`\"status\": \"200\"`).<br> If it has a higher status use [Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen) first.  This endpoint cannot be used for recurring invoices (`\"invoiceType\": \"WKR\"`).<br> Use [Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory) instead. 
    # @param invoice_id [Integer] ID of the invoice to reset
    # @param [Hash] opts the optional parameters
    # @return [InvoiceResetToDraft200Response]
    def invoice_reset_to_draft(invoice_id, opts = {})
      data, _status_code, _headers = invoice_reset_to_draft_with_http_info(invoice_id, opts)
      data
    end

    # Reset status to draft
    # Resets the status to \&quot;Draft\&quot; (&#x60;\&quot;status\&quot;: \&quot;100\&quot;&#x60;).&lt;br&gt; This is only possible if the invoice has the status \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;).&lt;br&gt; If it has a higher status use [Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen) first.  This endpoint cannot be used for recurring invoices (&#x60;\&quot;invoiceType\&quot;: \&quot;WKR\&quot;&#x60;).&lt;br&gt; Use [Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory) instead. 
    # @param invoice_id [Integer] ID of the invoice to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceResetToDraft200Response, Integer, Hash)>] InvoiceResetToDraft200Response data, response status code and response headers
    def invoice_reset_to_draft_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoice_reset_to_draft ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.invoice_reset_to_draft"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/resetToDraft'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InvoiceResetToDraft200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.invoice_reset_to_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoice_reset_to_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to open
    # Resets the status \"Open\" (`\"status\": \"200\"`). Linked transactions will be unlinked.<br> This is not possible if the invoice itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \"Open\" (`\"status\": \"200\"`).<br> Use [Invoice/{invoiceId}/sendBy](#tag/Invoice/operation/invoiceSendBy) / [Invoice/{invoiceId}/sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail) instead.  This endpoint cannot be used for recurring invoices (`\"invoiceType\": \"WKR\"`). Use [Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory) instead. 
    # @param invoice_id [Integer] ID of the invoice to reset
    # @param [Hash] opts the optional parameters
    # @return [InvoiceResetToOpen200Response]
    def invoice_reset_to_open(invoice_id, opts = {})
      data, _status_code, _headers = invoice_reset_to_open_with_http_info(invoice_id, opts)
      data
    end

    # Reset status to open
    # Resets the status \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;). Linked transactions will be unlinked.&lt;br&gt; This is not possible if the invoice itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;).&lt;br&gt; Use [Invoice/{invoiceId}/sendBy](#tag/Invoice/operation/invoiceSendBy) / [Invoice/{invoiceId}/sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail) instead.  This endpoint cannot be used for recurring invoices (&#x60;\&quot;invoiceType\&quot;: \&quot;WKR\&quot;&#x60;). Use [Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory) instead. 
    # @param invoice_id [Integer] ID of the invoice to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceResetToOpen200Response, Integer, Hash)>] InvoiceResetToOpen200Response data, response status code and response headers
    def invoice_reset_to_open_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoice_reset_to_open ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.invoice_reset_to_open"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/resetToOpen'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InvoiceResetToOpen200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.invoice_reset_to_open",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoice_reset_to_open\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark invoice as sent
    # Marks an invoice as sent by a chosen send type.
    # @param invoice_id [Integer] ID of invoice to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [InvoiceSendByRequest] :invoice_send_by_request Specify the send type
    # @return [ModelInvoiceResponse]
    def invoice_send_by(invoice_id, opts = {})
      data, _status_code, _headers = invoice_send_by_with_http_info(invoice_id, opts)
      data
    end

    # Mark invoice as sent
    # Marks an invoice as sent by a chosen send type.
    # @param invoice_id [Integer] ID of invoice to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [InvoiceSendByRequest] :invoice_send_by_request Specify the send type
    # @return [Array<(ModelInvoiceResponse, Integer, Hash)>] ModelInvoiceResponse data, response status code and response headers
    def invoice_send_by_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoice_send_by ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.invoice_send_by"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/sendBy'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invoice_send_by_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelInvoiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.invoice_send_by",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoice_send_by\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send invoice via email
    # This endpoint sends the specified invoice to a customer via email.<br>      This will automatically mark the invoice as sent.<br>      Please note, that in production an invoice is not allowed to be changed after this happened!
    # @param invoice_id [Integer] ID of invoice to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendInvoiceViaEMailRequest] :send_invoice_via_e_mail_request Mail data
    # @return [ModelEmail]
    def send_invoice_via_e_mail(invoice_id, opts = {})
      data, _status_code, _headers = send_invoice_via_e_mail_with_http_info(invoice_id, opts)
      data
    end

    # Send invoice via email
    # This endpoint sends the specified invoice to a customer via email.&lt;br&gt;      This will automatically mark the invoice as sent.&lt;br&gt;      Please note, that in production an invoice is not allowed to be changed after this happened!
    # @param invoice_id [Integer] ID of invoice to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendInvoiceViaEMailRequest] :send_invoice_via_e_mail_request Mail data
    # @return [Array<(ModelEmail, Integer, Hash)>] ModelEmail data, response status code and response headers
    def send_invoice_via_e_mail_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.send_invoice_via_e_mail ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling InvoiceApi.send_invoice_via_e_mail"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/sendViaEmail'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_invoice_via_e_mail_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelEmail'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"InvoiceApi.send_invoice_via_e_mail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#send_invoice_via_e_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
