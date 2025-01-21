require 'cgi'

module OpenapiClient
  class CreditNotePosApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve creditNote positions
    # Retrieve all creditNote positions depending on the filters defined in the query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :credit_note_id Retrieve all creditNote positions belonging to this creditNote. Must be provided with creditNote[objectName]
    # @option opts [String] :credit_note_object_name Only required if creditNote[id] was provided. &#39;creditNote&#39; should be used as value.
    # @return [GetcreditNotePositions200Response]
    def getcredit_note_positions(opts = {})
      data, _status_code, _headers = getcredit_note_positions_with_http_info(opts)
      data
    end

    # Retrieve creditNote positions
    # Retrieve all creditNote positions depending on the filters defined in the query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :credit_note_id Retrieve all creditNote positions belonging to this creditNote. Must be provided with creditNote[objectName]
    # @option opts [String] :credit_note_object_name Only required if creditNote[id] was provided. &#39;creditNote&#39; should be used as value.
    # @return [Array<(GetcreditNotePositions200Response, Integer, Hash)>] GetcreditNotePositions200Response data, response status code and response headers
    def getcredit_note_positions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotePosApi.getcredit_note_positions ...'
      end
      # resource path
      local_var_path = '/CreditNotePos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'creditNote[id]'] = opts[:'credit_note_id'] if !opts[:'credit_note_id'].nil?
      query_params[:'creditNote[objectName]'] = opts[:'credit_note_object_name'] if !opts[:'credit_note_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetcreditNotePositions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNotePosApi.getcredit_note_positions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotePosApi#getcredit_note_positions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
