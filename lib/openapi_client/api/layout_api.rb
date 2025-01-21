require 'cgi'

module OpenapiClient
  class LayoutApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve letterpapers
    # Retrieve all letterpapers with Thumb
    # @param [Hash] opts the optional parameters
    # @return [GetLetterpapersWithThumb200Response]
    def get_letterpapers_with_thumb(opts = {})
      data, _status_code, _headers = get_letterpapers_with_thumb_with_http_info(opts)
      data
    end

    # Retrieve letterpapers
    # Retrieve all letterpapers with Thumb
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetLetterpapersWithThumb200Response, Integer, Hash)>] GetLetterpapersWithThumb200Response data, response status code and response headers
    def get_letterpapers_with_thumb_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LayoutApi.get_letterpapers_with_thumb ...'
      end
      # resource path
      local_var_path = '/DocServer/getLetterpapersWithThumb'

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
      return_type = opts[:debug_return_type] || 'GetLetterpapersWithThumb200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LayoutApi.get_letterpapers_with_thumb",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LayoutApi#get_letterpapers_with_thumb\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve templates
    # Retrieve all templates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of the templates you want to get.
    # @return [GetTemplates200Response]
    def get_templates(opts = {})
      data, _status_code, _headers = get_templates_with_http_info(opts)
      data
    end

    # Retrieve templates
    # Retrieve all templates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of the templates you want to get.
    # @return [Array<(GetTemplates200Response, Integer, Hash)>] GetTemplates200Response data, response status code and response headers
    def get_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LayoutApi.get_templates ...'
      end
      allowable_values = ["Invoice", "invoicereminder", "Order", "Contractnote", "Packinglist", "Letter", "Creditnote"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/DocServer/getTemplatesWithThumb'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTemplates200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LayoutApi.get_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LayoutApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an of credit note template
    # Update an existing of credit note template
    # @param credit_note_id [Integer] ID of credit note to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelChangeLayout] :model_change_layout Change Layout
    # @return [ModelChangeLayoutResponse]
    def update_credit_note_template(credit_note_id, opts = {})
      data, _status_code, _headers = update_credit_note_template_with_http_info(credit_note_id, opts)
      data
    end

    # Update an of credit note template
    # Update an existing of credit note template
    # @param credit_note_id [Integer] ID of credit note to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelChangeLayout] :model_change_layout Change Layout
    # @return [Array<(ModelChangeLayoutResponse, Integer, Hash)>] ModelChangeLayoutResponse data, response status code and response headers
    def update_credit_note_template_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LayoutApi.update_credit_note_template ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling LayoutApi.update_credit_note_template"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/changeParameter'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_change_layout'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelChangeLayoutResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LayoutApi.update_credit_note_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LayoutApi#update_credit_note_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an invoice template
    # Update an existing invoice template
    # @param invoice_id [Integer] ID of invoice to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelChangeLayout] :model_change_layout Change Layout
    # @return [ModelChangeLayoutResponse]
    def update_invoice_template(invoice_id, opts = {})
      data, _status_code, _headers = update_invoice_template_with_http_info(invoice_id, opts)
      data
    end

    # Update an invoice template
    # Update an existing invoice template
    # @param invoice_id [Integer] ID of invoice to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelChangeLayout] :model_change_layout Change Layout
    # @return [Array<(ModelChangeLayoutResponse, Integer, Hash)>] ModelChangeLayoutResponse data, response status code and response headers
    def update_invoice_template_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LayoutApi.update_invoice_template ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling LayoutApi.update_invoice_template"
      end
      # resource path
      local_var_path = '/Invoice/{invoiceId}/changeParameter'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_change_layout'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelChangeLayoutResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LayoutApi.update_invoice_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LayoutApi#update_invoice_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an order template
    # Update an existing order template
    # @param order_id [Integer] ID of order to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelChangeLayout] :model_change_layout Change Layout
    # @return [ModelChangeLayoutResponse]
    def update_order_template(order_id, opts = {})
      data, _status_code, _headers = update_order_template_with_http_info(order_id, opts)
      data
    end

    # Update an order template
    # Update an existing order template
    # @param order_id [Integer] ID of order to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelChangeLayout] :model_change_layout Change Layout
    # @return [Array<(ModelChangeLayoutResponse, Integer, Hash)>] ModelChangeLayoutResponse data, response status code and response headers
    def update_order_template_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LayoutApi.update_order_template ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling LayoutApi.update_order_template"
      end
      # resource path
      local_var_path = '/Order/{orderId}/changeParameter'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_change_layout'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelChangeLayoutResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LayoutApi.update_order_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LayoutApi#update_order_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
