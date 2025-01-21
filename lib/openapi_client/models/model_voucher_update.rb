require 'date'
require 'time'

module OpenapiClient
  # Voucher model
  class ModelVoucherUpdate
    # Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :voucher_date

    attr_accessor :supplier

    # The supplier name.<br>       The value you provide here will determine what supplier name is shown for the voucher in case you did not provide a supplier.
    attr_accessor :supplier_name

    # The description of the voucher. Essentially the voucher number.
    attr_accessor :description

    # Needs to be timestamp or dd.mm.yyyy
    attr_accessor :pay_date

    # <b>Not supported in sevdesk-Update 2.0.</b><br><br>    Please have a look in <a href='#tag/Voucher/Types-and-status-of-vouchers'>status of vouchers</a>    to see what the different status codes mean
    attr_accessor :status

    # Amount which has already been paid for this voucher by the customer
    attr_accessor :paid_amount

    attr_accessor :tax_rule

    # **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the voucher. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used.
    attr_accessor :tax_type

    # Defines if your voucher is a credit (C) or debit (D)
    attr_accessor :credit_debit

    # Type of the voucher. For more information on the different types, check   <a href='#tag/Voucher/Types-and-status-of-vouchers'>this</a>  
    attr_accessor :voucher_type

    # specifies which currency the voucher should have. Attention: If the currency differs from the default currency stored in the account, then either the \"propertyForeignCurrencyDeadline\" or \"propertyExchangeRate\" parameter must be specified. If both parameters are specified, then the \"propertyForeignCurrencyDeadline\" parameter is preferred
    attr_accessor :currency

    # Defines the exchange rate day and and then the exchange rate is set from sevdesk. Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :property_foreign_currency_deadline

    # Defines the exchange rate
    attr_accessor :property_exchange_rate

    attr_accessor :tax_set

    # Payment deadline of the voucher.
    attr_accessor :payment_deadline

    # Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :delivery_date

    # Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :delivery_date_until

    attr_accessor :document

    attr_accessor :cost_centre

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
        :'voucher_date' => :'voucherDate',
        :'supplier' => :'supplier',
        :'supplier_name' => :'supplierName',
        :'description' => :'description',
        :'pay_date' => :'payDate',
        :'status' => :'status',
        :'paid_amount' => :'paidAmount',
        :'tax_rule' => :'taxRule',
        :'tax_type' => :'taxType',
        :'credit_debit' => :'creditDebit',
        :'voucher_type' => :'voucherType',
        :'currency' => :'currency',
        :'property_foreign_currency_deadline' => :'propertyForeignCurrencyDeadline',
        :'property_exchange_rate' => :'propertyExchangeRate',
        :'tax_set' => :'taxSet',
        :'payment_deadline' => :'paymentDeadline',
        :'delivery_date' => :'deliveryDate',
        :'delivery_date_until' => :'deliveryDateUntil',
        :'document' => :'document',
        :'cost_centre' => :'costCentre'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'voucher_date' => :'Time',
        :'supplier' => :'ModelVoucherUpdateSupplier',
        :'supplier_name' => :'String',
        :'description' => :'String',
        :'pay_date' => :'Time',
        :'status' => :'Float',
        :'paid_amount' => :'Float',
        :'tax_rule' => :'ModelVoucherTaxRule',
        :'tax_type' => :'String',
        :'credit_debit' => :'String',
        :'voucher_type' => :'String',
        :'currency' => :'String',
        :'property_foreign_currency_deadline' => :'Time',
        :'property_exchange_rate' => :'Float',
        :'tax_set' => :'ModelVoucherUpdateTaxSet',
        :'payment_deadline' => :'Time',
        :'delivery_date' => :'Time',
        :'delivery_date_until' => :'Time',
        :'document' => :'ModelVoucherDocument',
        :'cost_centre' => :'ModelVoucherCostCentre'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'voucher_date',
        :'supplier',
        :'supplier_name',
        :'description',
        :'pay_date',
        :'paid_amount',
        :'currency',
        :'property_foreign_currency_deadline',
        :'property_exchange_rate',
        :'tax_set',
        :'payment_deadline',
        :'delivery_date_until',
        :'document',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelVoucherUpdate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelVoucherUpdate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'voucher_date')
        self.voucher_date = attributes[:'voucher_date']
      end

      if attributes.key?(:'supplier')
        self.supplier = attributes[:'supplier']
      end

      if attributes.key?(:'supplier_name')
        self.supplier_name = attributes[:'supplier_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'pay_date')
        self.pay_date = attributes[:'pay_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'paid_amount')
        self.paid_amount = attributes[:'paid_amount']
      end

      if attributes.key?(:'tax_rule')
        self.tax_rule = attributes[:'tax_rule']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'credit_debit')
        self.credit_debit = attributes[:'credit_debit']
      end

      if attributes.key?(:'voucher_type')
        self.voucher_type = attributes[:'voucher_type']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'property_foreign_currency_deadline')
        self.property_foreign_currency_deadline = attributes[:'property_foreign_currency_deadline']
      end

      if attributes.key?(:'property_exchange_rate')
        self.property_exchange_rate = attributes[:'property_exchange_rate']
      end

      if attributes.key?(:'tax_set')
        self.tax_set = attributes[:'tax_set']
      end

      if attributes.key?(:'payment_deadline')
        self.payment_deadline = attributes[:'payment_deadline']
      end

      if attributes.key?(:'delivery_date')
        self.delivery_date = attributes[:'delivery_date']
      end

      if attributes.key?(:'delivery_date_until')
        self.delivery_date_until = attributes[:'delivery_date_until']
      end

      if attributes.key?(:'document')
        self.document = attributes[:'document']
      end

      if attributes.key?(:'cost_centre')
        self.cost_centre = attributes[:'cost_centre']
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
      status_validator = EnumAttributeValidator.new('Float', [50, 100, 1000])
      return false unless status_validator.valid?(@status)
      credit_debit_validator = EnumAttributeValidator.new('String', ["C", "D"])
      return false unless credit_debit_validator.valid?(@credit_debit)
      voucher_type_validator = EnumAttributeValidator.new('String', ["VOU", "RV"])
      return false unless voucher_type_validator.valid?(@voucher_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Float', [50, 100, 1000])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_debit Object to be assigned
    def credit_debit=(credit_debit)
      validator = EnumAttributeValidator.new('String', ["C", "D"])
      unless validator.valid?(credit_debit)
        fail ArgumentError, "invalid value for \"credit_debit\", must be one of #{validator.allowable_values}."
      end
      @credit_debit = credit_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voucher_type Object to be assigned
    def voucher_type=(voucher_type)
      validator = EnumAttributeValidator.new('String', ["VOU", "RV"])
      unless validator.valid?(voucher_type)
        fail ArgumentError, "invalid value for \"voucher_type\", must be one of #{validator.allowable_values}."
      end
      @voucher_type = voucher_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          voucher_date == o.voucher_date &&
          supplier == o.supplier &&
          supplier_name == o.supplier_name &&
          description == o.description &&
          pay_date == o.pay_date &&
          status == o.status &&
          paid_amount == o.paid_amount &&
          tax_rule == o.tax_rule &&
          tax_type == o.tax_type &&
          credit_debit == o.credit_debit &&
          voucher_type == o.voucher_type &&
          currency == o.currency &&
          property_foreign_currency_deadline == o.property_foreign_currency_deadline &&
          property_exchange_rate == o.property_exchange_rate &&
          tax_set == o.tax_set &&
          payment_deadline == o.payment_deadline &&
          delivery_date == o.delivery_date &&
          delivery_date_until == o.delivery_date_until &&
          document == o.document &&
          cost_centre == o.cost_centre
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [voucher_date, supplier, supplier_name, description, pay_date, status, paid_amount, tax_rule, tax_type, credit_debit, voucher_type, currency, property_foreign_currency_deadline, property_exchange_rate, tax_set, payment_deadline, delivery_date, delivery_date_until, document, cost_centre].hash
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
