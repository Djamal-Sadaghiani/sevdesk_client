require 'date'
require 'time'

module OpenapiClient
  class InvoiceResetToDraft200ResponseObjects
    # The invoice id
    attr_accessor :id

    # The invoice object name
    attr_accessor :object_name

    # The invoice number
    attr_accessor :invoice_number

    attr_accessor :contact

    # Date of invoice creation
    attr_accessor :create

    # Date of last invoice update
    attr_accessor :update

    attr_accessor :sev_client

    # The invoice date.
    attr_accessor :invoice_date

    # Normally consist of prefix plus the invoice number
    attr_accessor :header

    # Certain html tags can be used here to format your text
    attr_accessor :head_text

    # Certain html tags can be used here to format your text
    attr_accessor :foot_text

    # The time the customer has to pay the invoice in days
    attr_accessor :time_to_pay

    # If a value other than zero is used for the discount attribute,      you need to specify the amount of days for which the discount is granted.
    attr_accessor :discount_time

    # If you want to give a discount, define the percentage here. Otherwise provide zero as value
    attr_accessor :discount

    attr_accessor :address_country

    attr_accessor :pay_date

    attr_accessor :create_user

    # Timestamp. This can also be a date range if you also use the attribute deliveryDateUntil
    attr_accessor :delivery_date

    # Please have a look in our       <a href='#tag/Invoice/Types-and-status-of-invoices'>Types and status of invoices</a>       to see what the different status codes mean
    attr_accessor :status

    # Defines if the client uses the small settlement scheme.      If yes, the invoice must not contain any vat
    attr_accessor :small_settlement

    attr_accessor :contact_person

    # This is not used anymore. Use the taxRate of the individual positions instead.
    attr_accessor :tax_rate

    attr_accessor :tax_rule

    # A common tax text would be 'Umsatzsteuer 19%'
    attr_accessor :tax_text

    # Defines how many reminders have already been sent for the invoice.      Starts with 1 (Payment reminder) and should be incremented by one every time another reminder is sent.
    attr_accessor :dunning_level

    # **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the invoice. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used.
    attr_accessor :tax_type

    attr_accessor :payment_method

    attr_accessor :cost_centre

    # The date the invoice was sent to the customer
    attr_accessor :send_date

    attr_accessor :origin

    # Type of the invoice. For more information on the different types, check       <a href='#tag/Invoice/Types-and-status-of-invoices'>this</a> section  
    attr_accessor :invoice_type

    attr_accessor :account_intervall

    attr_accessor :account_next_invoice

    # Total reminder amount
    attr_accessor :reminder_total

    # Debit of the reminder
    attr_accessor :reminder_debit

    # Deadline of the reminder as timestamp
    attr_accessor :reminder_deadline

    # The additional reminder charge
    attr_accessor :reminder_charge

    attr_accessor :tax_set

    # Complete address of the recipient including name, street, city, zip and country.       * Line breaks can be used and will be displayed on the invoice pdf.
    attr_accessor :address

    # Currency used in the invoice. Needs to be currency code according to ISO-4217
    attr_accessor :currency

    # Net sum of the invoice
    attr_accessor :sum_net

    # Tax sum of the invoice
    attr_accessor :sum_tax

    # Gross sum of the invoice
    attr_accessor :sum_gross

    # Sum of all discounts in the invoice
    attr_accessor :sum_discounts

    # Net sum of the invoice in the foreign currency
    attr_accessor :sum_net_foreign_currency

    # Tax sum of the invoice in the foreign currency
    attr_accessor :sum_tax_foreign_currency

    # Gross sum of the invoice in the foreign currency
    attr_accessor :sum_gross_foreign_currency

    # Discounts sum of the invoice in the foreign currency
    attr_accessor :sum_discounts_foreign_currency

    # Net accounting sum of the invoice. Is usually the same as sumNet
    attr_accessor :sum_net_accounting

    # Tax accounting sum of the invoice. Is usually the same as sumTax
    attr_accessor :sum_tax_accounting

    # Gross accounting sum of the invoice. Is usually the same as sumGross
    attr_accessor :sum_gross_accounting

    # Amount which has already been paid for this invoice by the customer
    attr_accessor :paid_amount

    # Internal note of the customer. Contains data entered into field 'Referenz/Bestellnummer'
    attr_accessor :customer_internal_note

    # If true, the net amount of each position will be shown on the invoice. Otherwise gross amount
    attr_accessor :show_net

    attr_accessor :enshrined

    # Type which was used to send the invoice. IMPORTANT: Please refer to the invoice section of the       *     API-Overview to understand how this attribute can be used before using it!
    attr_accessor :send_type

    # If the delivery date should be a time range, another timestamp can be provided in this attribute       * to define a range from timestamp used in deliveryDate attribute to the timestamp used here.
    attr_accessor :delivery_date_until

    # Internal attribute
    attr_accessor :datev_connect_online

    # Internal attribute
    attr_accessor :send_payment_received_notification_date

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object_name' => :'objectName',
        :'invoice_number' => :'invoiceNumber',
        :'contact' => :'contact',
        :'create' => :'create',
        :'update' => :'update',
        :'sev_client' => :'sevClient',
        :'invoice_date' => :'invoiceDate',
        :'header' => :'header',
        :'head_text' => :'headText',
        :'foot_text' => :'footText',
        :'time_to_pay' => :'timeToPay',
        :'discount_time' => :'discountTime',
        :'discount' => :'discount',
        :'address_country' => :'addressCountry',
        :'pay_date' => :'payDate',
        :'create_user' => :'createUser',
        :'delivery_date' => :'deliveryDate',
        :'status' => :'status',
        :'small_settlement' => :'smallSettlement',
        :'contact_person' => :'contactPerson',
        :'tax_rate' => :'taxRate',
        :'tax_rule' => :'taxRule',
        :'tax_text' => :'taxText',
        :'dunning_level' => :'dunningLevel',
        :'tax_type' => :'taxType',
        :'payment_method' => :'paymentMethod',
        :'cost_centre' => :'costCentre',
        :'send_date' => :'sendDate',
        :'origin' => :'origin',
        :'invoice_type' => :'invoiceType',
        :'account_intervall' => :'accountIntervall',
        :'account_next_invoice' => :'accountNextInvoice',
        :'reminder_total' => :'reminderTotal',
        :'reminder_debit' => :'reminderDebit',
        :'reminder_deadline' => :'reminderDeadline',
        :'reminder_charge' => :'reminderCharge',
        :'tax_set' => :'taxSet',
        :'address' => :'address',
        :'currency' => :'currency',
        :'sum_net' => :'sumNet',
        :'sum_tax' => :'sumTax',
        :'sum_gross' => :'sumGross',
        :'sum_discounts' => :'sumDiscounts',
        :'sum_net_foreign_currency' => :'sumNetForeignCurrency',
        :'sum_tax_foreign_currency' => :'sumTaxForeignCurrency',
        :'sum_gross_foreign_currency' => :'sumGrossForeignCurrency',
        :'sum_discounts_foreign_currency' => :'sumDiscountsForeignCurrency',
        :'sum_net_accounting' => :'sumNetAccounting',
        :'sum_tax_accounting' => :'sumTaxAccounting',
        :'sum_gross_accounting' => :'sumGrossAccounting',
        :'paid_amount' => :'paidAmount',
        :'customer_internal_note' => :'customerInternalNote',
        :'show_net' => :'showNet',
        :'enshrined' => :'enshrined',
        :'send_type' => :'sendType',
        :'delivery_date_until' => :'deliveryDateUntil',
        :'datev_connect_online' => :'datevConnectOnline',
        :'send_payment_received_notification_date' => :'sendPaymentReceivedNotificationDate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'object_name' => :'String',
        :'invoice_number' => :'String',
        :'contact' => :'ModelInvoiceResponseContact',
        :'create' => :'Time',
        :'update' => :'Time',
        :'sev_client' => :'ModelInvoiceResponseSevClient',
        :'invoice_date' => :'String',
        :'header' => :'String',
        :'head_text' => :'String',
        :'foot_text' => :'String',
        :'time_to_pay' => :'String',
        :'discount_time' => :'String',
        :'discount' => :'String',
        :'address_country' => :'ModelInvoiceResponseAddressCountry',
        :'pay_date' => :'Object',
        :'create_user' => :'ModelCreditNoteResponseCreateUser',
        :'delivery_date' => :'Time',
        :'status' => :'String',
        :'small_settlement' => :'Boolean',
        :'contact_person' => :'ModelInvoiceResponseContactPerson',
        :'tax_rate' => :'String',
        :'tax_rule' => :'ModelInvoiceResponseTaxRule',
        :'tax_text' => :'String',
        :'dunning_level' => :'String',
        :'tax_type' => :'String',
        :'payment_method' => :'ModelInvoiceResponsePaymentMethod',
        :'cost_centre' => :'ModelInvoiceResponseCostCentre',
        :'send_date' => :'Time',
        :'origin' => :'ModelInvoiceResponseOrigin',
        :'invoice_type' => :'String',
        :'account_intervall' => :'Object',
        :'account_next_invoice' => :'Object',
        :'reminder_total' => :'String',
        :'reminder_debit' => :'String',
        :'reminder_deadline' => :'Time',
        :'reminder_charge' => :'String',
        :'tax_set' => :'ModelInvoiceResponseTaxSet',
        :'address' => :'String',
        :'currency' => :'String',
        :'sum_net' => :'String',
        :'sum_tax' => :'String',
        :'sum_gross' => :'String',
        :'sum_discounts' => :'String',
        :'sum_net_foreign_currency' => :'String',
        :'sum_tax_foreign_currency' => :'String',
        :'sum_gross_foreign_currency' => :'String',
        :'sum_discounts_foreign_currency' => :'String',
        :'sum_net_accounting' => :'String',
        :'sum_tax_accounting' => :'String',
        :'sum_gross_accounting' => :'String',
        :'paid_amount' => :'Float',
        :'customer_internal_note' => :'String',
        :'show_net' => :'Boolean',
        :'enshrined' => :'Object',
        :'send_type' => :'String',
        :'delivery_date_until' => :'String',
        :'datev_connect_online' => :'Object',
        :'send_payment_received_notification_date' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'pay_date',
        :'account_intervall',
        :'account_next_invoice',
        :'enshrined',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ModelInvoiceResponse'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::InvoiceResetToDraft200ResponseObjects` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::InvoiceResetToDraft200ResponseObjects`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object_name')
        self.object_name = attributes[:'object_name']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'create')
        self.create = attributes[:'create']
      end

      if attributes.key?(:'update')
        self.update = attributes[:'update']
      end

      if attributes.key?(:'sev_client')
        self.sev_client = attributes[:'sev_client']
      end

      if attributes.key?(:'invoice_date')
        self.invoice_date = attributes[:'invoice_date']
      end

      if attributes.key?(:'header')
        self.header = attributes[:'header']
      end

      if attributes.key?(:'head_text')
        self.head_text = attributes[:'head_text']
      end

      if attributes.key?(:'foot_text')
        self.foot_text = attributes[:'foot_text']
      end

      if attributes.key?(:'time_to_pay')
        self.time_to_pay = attributes[:'time_to_pay']
      end

      if attributes.key?(:'discount_time')
        self.discount_time = attributes[:'discount_time']
      end

      if attributes.key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.key?(:'address_country')
        self.address_country = attributes[:'address_country']
      end

      if attributes.key?(:'pay_date')
        self.pay_date = attributes[:'pay_date']
      end

      if attributes.key?(:'create_user')
        self.create_user = attributes[:'create_user']
      end

      if attributes.key?(:'delivery_date')
        self.delivery_date = attributes[:'delivery_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'small_settlement')
        self.small_settlement = attributes[:'small_settlement']
      end

      if attributes.key?(:'contact_person')
        self.contact_person = attributes[:'contact_person']
      end

      if attributes.key?(:'tax_rate')
        self.tax_rate = attributes[:'tax_rate']
      end

      if attributes.key?(:'tax_rule')
        self.tax_rule = attributes[:'tax_rule']
      end

      if attributes.key?(:'tax_text')
        self.tax_text = attributes[:'tax_text']
      end

      if attributes.key?(:'dunning_level')
        self.dunning_level = attributes[:'dunning_level']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'cost_centre')
        self.cost_centre = attributes[:'cost_centre']
      end

      if attributes.key?(:'send_date')
        self.send_date = attributes[:'send_date']
      end

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.key?(:'invoice_type')
        self.invoice_type = attributes[:'invoice_type']
      end

      if attributes.key?(:'account_intervall')
        self.account_intervall = attributes[:'account_intervall']
      end

      if attributes.key?(:'account_next_invoice')
        self.account_next_invoice = attributes[:'account_next_invoice']
      end

      if attributes.key?(:'reminder_total')
        self.reminder_total = attributes[:'reminder_total']
      end

      if attributes.key?(:'reminder_debit')
        self.reminder_debit = attributes[:'reminder_debit']
      end

      if attributes.key?(:'reminder_deadline')
        self.reminder_deadline = attributes[:'reminder_deadline']
      end

      if attributes.key?(:'reminder_charge')
        self.reminder_charge = attributes[:'reminder_charge']
      end

      if attributes.key?(:'tax_set')
        self.tax_set = attributes[:'tax_set']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'sum_net')
        self.sum_net = attributes[:'sum_net']
      end

      if attributes.key?(:'sum_tax')
        self.sum_tax = attributes[:'sum_tax']
      end

      if attributes.key?(:'sum_gross')
        self.sum_gross = attributes[:'sum_gross']
      end

      if attributes.key?(:'sum_discounts')
        self.sum_discounts = attributes[:'sum_discounts']
      end

      if attributes.key?(:'sum_net_foreign_currency')
        self.sum_net_foreign_currency = attributes[:'sum_net_foreign_currency']
      end

      if attributes.key?(:'sum_tax_foreign_currency')
        self.sum_tax_foreign_currency = attributes[:'sum_tax_foreign_currency']
      end

      if attributes.key?(:'sum_gross_foreign_currency')
        self.sum_gross_foreign_currency = attributes[:'sum_gross_foreign_currency']
      end

      if attributes.key?(:'sum_discounts_foreign_currency')
        self.sum_discounts_foreign_currency = attributes[:'sum_discounts_foreign_currency']
      end

      if attributes.key?(:'sum_net_accounting')
        self.sum_net_accounting = attributes[:'sum_net_accounting']
      end

      if attributes.key?(:'sum_tax_accounting')
        self.sum_tax_accounting = attributes[:'sum_tax_accounting']
      end

      if attributes.key?(:'sum_gross_accounting')
        self.sum_gross_accounting = attributes[:'sum_gross_accounting']
      end

      if attributes.key?(:'paid_amount')
        self.paid_amount = attributes[:'paid_amount']
      end

      if attributes.key?(:'customer_internal_note')
        self.customer_internal_note = attributes[:'customer_internal_note']
      end

      if attributes.key?(:'show_net')
        self.show_net = attributes[:'show_net']
      end

      if attributes.key?(:'enshrined')
        self.enshrined = attributes[:'enshrined']
      end

      if attributes.key?(:'send_type')
        self.send_type = attributes[:'send_type']
      end

      if attributes.key?(:'delivery_date_until')
        self.delivery_date_until = attributes[:'delivery_date_until']
      end

      if attributes.key?(:'datev_connect_online')
        self.datev_connect_online = attributes[:'datev_connect_online']
      end

      if attributes.key?(:'send_payment_received_notification_date')
        self.send_payment_received_notification_date = attributes[:'send_payment_received_notification_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      status_validator = EnumAttributeValidator.new('String', ["50", "100", "200", "750", "1000"])
      return false unless status_validator.valid?(@status)
      tax_type_validator = EnumAttributeValidator.new('String', ["default", "eu", "noteu", "custom"])
      return false unless tax_type_validator.valid?(@tax_type)
      invoice_type_validator = EnumAttributeValidator.new('String', ["RE", "WKR", "SR", "MA", "TR", "ER"])
      return false unless invoice_type_validator.valid?(@invoice_type)
      send_type_validator = EnumAttributeValidator.new('String', ["VPR", "VPDF", "VM", "VP"])
      return false unless send_type_validator.valid?(@send_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["50", "100", "200", "750", "1000"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_type Object to be assigned
    def tax_type=(tax_type)
      validator = EnumAttributeValidator.new('String', ["default", "eu", "noteu", "custom"])
      unless validator.valid?(tax_type)
        fail ArgumentError, "invalid value for \"tax_type\", must be one of #{validator.allowable_values}."
      end
      @tax_type = tax_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_type Object to be assigned
    def invoice_type=(invoice_type)
      validator = EnumAttributeValidator.new('String', ["RE", "WKR", "SR", "MA", "TR", "ER"])
      unless validator.valid?(invoice_type)
        fail ArgumentError, "invalid value for \"invoice_type\", must be one of #{validator.allowable_values}."
      end
      @invoice_type = invoice_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] send_type Object to be assigned
    def send_type=(send_type)
      validator = EnumAttributeValidator.new('String', ["VPR", "VPDF", "VM", "VP"])
      unless validator.valid?(send_type)
        fail ArgumentError, "invalid value for \"send_type\", must be one of #{validator.allowable_values}."
      end
      @send_type = send_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object_name == o.object_name &&
          invoice_number == o.invoice_number &&
          contact == o.contact &&
          create == o.create &&
          update == o.update &&
          sev_client == o.sev_client &&
          invoice_date == o.invoice_date &&
          header == o.header &&
          head_text == o.head_text &&
          foot_text == o.foot_text &&
          time_to_pay == o.time_to_pay &&
          discount_time == o.discount_time &&
          discount == o.discount &&
          address_country == o.address_country &&
          pay_date == o.pay_date &&
          create_user == o.create_user &&
          delivery_date == o.delivery_date &&
          status == o.status &&
          small_settlement == o.small_settlement &&
          contact_person == o.contact_person &&
          tax_rate == o.tax_rate &&
          tax_rule == o.tax_rule &&
          tax_text == o.tax_text &&
          dunning_level == o.dunning_level &&
          tax_type == o.tax_type &&
          payment_method == o.payment_method &&
          cost_centre == o.cost_centre &&
          send_date == o.send_date &&
          origin == o.origin &&
          invoice_type == o.invoice_type &&
          account_intervall == o.account_intervall &&
          account_next_invoice == o.account_next_invoice &&
          reminder_total == o.reminder_total &&
          reminder_debit == o.reminder_debit &&
          reminder_deadline == o.reminder_deadline &&
          reminder_charge == o.reminder_charge &&
          tax_set == o.tax_set &&
          address == o.address &&
          currency == o.currency &&
          sum_net == o.sum_net &&
          sum_tax == o.sum_tax &&
          sum_gross == o.sum_gross &&
          sum_discounts == o.sum_discounts &&
          sum_net_foreign_currency == o.sum_net_foreign_currency &&
          sum_tax_foreign_currency == o.sum_tax_foreign_currency &&
          sum_gross_foreign_currency == o.sum_gross_foreign_currency &&
          sum_discounts_foreign_currency == o.sum_discounts_foreign_currency &&
          sum_net_accounting == o.sum_net_accounting &&
          sum_tax_accounting == o.sum_tax_accounting &&
          sum_gross_accounting == o.sum_gross_accounting &&
          paid_amount == o.paid_amount &&
          customer_internal_note == o.customer_internal_note &&
          show_net == o.show_net &&
          enshrined == o.enshrined &&
          send_type == o.send_type &&
          delivery_date_until == o.delivery_date_until &&
          datev_connect_online == o.datev_connect_online &&
          send_payment_received_notification_date == o.send_payment_received_notification_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, invoice_number, contact, create, update, sev_client, invoice_date, header, head_text, foot_text, time_to_pay, discount_time, discount, address_country, pay_date, create_user, delivery_date, status, small_settlement, contact_person, tax_rate, tax_rule, tax_text, dunning_level, tax_type, payment_method, cost_centre, send_date, origin, invoice_type, account_intervall, account_next_invoice, reminder_total, reminder_debit, reminder_deadline, reminder_charge, tax_set, address, currency, sum_net, sum_tax, sum_gross, sum_discounts, sum_net_foreign_currency, sum_tax_foreign_currency, sum_gross_foreign_currency, sum_discounts_foreign_currency, sum_net_accounting, sum_tax_accounting, sum_gross_accounting, paid_amount, customer_internal_note, show_net, enshrined, send_type, delivery_date_until, datev_connect_online, send_payment_received_notification_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
