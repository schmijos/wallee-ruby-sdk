=begin
Wallee API: 1.0.0

The wallee API allows an easy interaction with the wallee web service.



Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Wallee
  class TransactionInvoiceService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def transaction_invoice_service_count(space_id, opts = {})
      data, _status_code, _headers = transaction_invoice_service_count_with_http_info(space_id, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def transaction_invoice_service_count_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceService.transaction_invoice_service_count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceService.transaction_invoice_service_count" if space_id.nil?
      # resource path
      local_var_path = "/transaction-invoice/count".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceService#transaction_invoice_service_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getInvoiceDocument
    # Returns the PDF document for the transaction invoice with given id.
    # @param space_id 
    # @param id The id of the transaction invoice to get the document for.
    # @param [Hash] opts the optional parameters
    # @return [RenderedDocument]
    def transaction_invoice_service_get_invoice_document(space_id, id, opts = {})
      data, _status_code, _headers = transaction_invoice_service_get_invoice_document_with_http_info(space_id, id, opts)
      return data
    end

    # getInvoiceDocument
    # Returns the PDF document for the transaction invoice with given id.
    # @param space_id 
    # @param id The id of the transaction invoice to get the document for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedDocument, Fixnum, Hash)>] RenderedDocument data, response status code and response headers
    def transaction_invoice_service_get_invoice_document_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceService.transaction_invoice_service_get_invoice_document ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceService.transaction_invoice_service_get_invoice_document" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceService.transaction_invoice_service_get_invoice_document" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice/getInvoiceDocument".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['*/*']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RenderedDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceService#transaction_invoice_service_get_invoice_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # isReplacementPossible
    # Returns whether the transaction invoice with the given id can be replaced.
    # @param space_id 
    # @param id The invoice which should be checked if a replacement is possible.
    # @param [Hash] opts the optional parameters
    # @return [BOOLEAN]
    def transaction_invoice_service_is_replacement_possible(space_id, id, opts = {})
      data, _status_code, _headers = transaction_invoice_service_is_replacement_possible_with_http_info(space_id, id, opts)
      return data
    end

    # isReplacementPossible
    # Returns whether the transaction invoice with the given id can be replaced.
    # @param space_id 
    # @param id The invoice which should be checked if a replacement is possible.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BOOLEAN, Fixnum, Hash)>] BOOLEAN data, response status code and response headers
    def transaction_invoice_service_is_replacement_possible_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceService.transaction_invoice_service_is_replacement_possible ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceService.transaction_invoice_service_is_replacement_possible" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceService.transaction_invoice_service_is_replacement_possible" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice/isReplacementPossible".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['*/*']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BOOLEAN')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceService#transaction_invoice_service_is_replacement_possible\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark as Paid
    # Marks the transaction invoice with the given id as paid.
    # @param space_id 
    # @param id The id of the transaction invoice which should be marked as paid.
    # @param [Hash] opts the optional parameters
    # @return [TransactionInvoice]
    def transaction_invoice_service_mark_as_paid(space_id, id, opts = {})
      data, _status_code, _headers = transaction_invoice_service_mark_as_paid_with_http_info(space_id, id, opts)
      return data
    end

    # Mark as Paid
    # Marks the transaction invoice with the given id as paid.
    # @param space_id 
    # @param id The id of the transaction invoice which should be marked as paid.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionInvoice, Fixnum, Hash)>] TransactionInvoice data, response status code and response headers
    def transaction_invoice_service_mark_as_paid_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceService.transaction_invoice_service_mark_as_paid ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceService.transaction_invoice_service_mark_as_paid" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceService.transaction_invoice_service_mark_as_paid" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice/markAsPaid".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInvoice')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceService#transaction_invoice_service_mark_as_paid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the transaction invoices which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [TransactionInvoice]
    def transaction_invoice_service_read(space_id, id, opts = {})
      data, _status_code, _headers = transaction_invoice_service_read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the transaction invoices which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionInvoice, Fixnum, Hash)>] TransactionInvoice data, response status code and response headers
    def transaction_invoice_service_read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceService.transaction_invoice_service_read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceService.transaction_invoice_service_read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceService.transaction_invoice_service_read" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['*/*']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInvoice')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceService#transaction_invoice_service_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # replace
    # Replaces the transaction invoice with given id with the replacement and returns the new transaction invoice.
    # @param space_id 
    # @param id The id of the transaction invoices which should be replaced.
    # @param replacement 
    # @param [Hash] opts the optional parameters
    # @return [TransactionInvoice]
    def transaction_invoice_service_replace(space_id, id, replacement, opts = {})
      data, _status_code, _headers = transaction_invoice_service_replace_with_http_info(space_id, id, replacement, opts)
      return data
    end

    # replace
    # Replaces the transaction invoice with given id with the replacement and returns the new transaction invoice.
    # @param space_id 
    # @param id The id of the transaction invoices which should be replaced.
    # @param replacement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionInvoice, Fixnum, Hash)>] TransactionInvoice data, response status code and response headers
    def transaction_invoice_service_replace_with_http_info(space_id, id, replacement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceService.transaction_invoice_service_replace ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceService.transaction_invoice_service_replace" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceService.transaction_invoice_service_replace" if id.nil?
      # verify the required parameter 'replacement' is set
      fail ArgumentError, "Missing the required parameter 'replacement' when calling TransactionInvoiceService.transaction_invoice_service_replace" if replacement.nil?
      # resource path
      local_var_path = "/transaction-invoice/replace".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(replacement)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInvoice')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceService#transaction_invoice_service_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the transaction invoices which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<TransactionInvoice>]
    def transaction_invoice_service_search(space_id, query, opts = {})
      data, _status_code, _headers = transaction_invoice_service_search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the transaction invoices which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TransactionInvoice>, Fixnum, Hash)>] Array<TransactionInvoice> data, response status code and response headers
    def transaction_invoice_service_search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceService.transaction_invoice_service_search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceService.transaction_invoice_service_search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling TransactionInvoiceService.transaction_invoice_service_search" if query.nil?
      # resource path
      local_var_path = "/transaction-invoice/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TransactionInvoice>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceService#transaction_invoice_service_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
