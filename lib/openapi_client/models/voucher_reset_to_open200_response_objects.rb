require 'date'
require 'time'

module OpenapiClient
  class VoucherResetToOpen200ResponseObjects
    # The voucher id
    attr_accessor :id

    # The voucher object name
    attr_accessor :object_name

    attr_accessor :map_all

    # Date of voucher creation
    attr_accessor :create

    # Date of last voucher update
    attr_accessor :update

    attr_accessor :sev_client

    attr_accessor :create_user

    # Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :voucher_date

    attr_accessor :supplier

    # The supplier name.<br>       The value you provide here will determine what supplier name is shown for the voucher in case you did not provide a supplier.
    attr_accessor :supplier_name

    # The description of the voucher. Essentially the voucher number.
    attr_accessor :description

    attr_accessor :document

    # Needs to be timestamp or dd.mm.yyyy
    attr_accessor :pay_date

    attr_accessor :status

    # Net sum of the voucher
    attr_accessor :sum_net

    # Tax sum of the voucher
    attr_accessor :sum_tax

    # Gross sum of the voucher
    attr_accessor :sum_gross

    # Net accounting sum of the voucher. Is usually the same as sumNet
    attr_accessor :sum_net_accounting

    # Tax accounting sum of the voucher. Is usually the same as sumTax
    attr_accessor :sum_tax_accounting

    # Gross accounting sum of the voucher. Is usually the same as sumGross
    attr_accessor :sum_gross_accounting

    # Sum of all discounts in the voucher
    attr_accessor :sum_discounts

    # Discounts sum of the voucher in the foreign currency
    attr_accessor :sum_discounts_foreign_currency

    # Amount which has already been paid for this voucher by the customer
    attr_accessor :paid_amount

    attr_accessor :tax_rule

    # **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the voucher. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used.
    attr_accessor :tax_type

    # Defines if your voucher is a credit (C) or debit (D)
    attr_accessor :credit_debit

    attr_accessor :cost_centre

    # Type of the voucher. For more information on the different types, check       <a href='#tag/Voucher/Types-and-status-of-vouchers'>this</a>  
    attr_accessor :voucher_type

    # specifies which currency the voucher should have. Attention: If the currency differs from the default currency stored in the account, then either the \"propertyForeignCurrencyDeadline\" or \"propertyExchangeRate\" parameter must be specified. If both parameters are specified, then the \"propertyForeignCurrencyDeadline\" parameter is preferred
    attr_accessor :currency

    # Defines the exchange rate day and and then the exchange rate is set from sevdesk. Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :property_foreign_currency_deadline

    # Defines the exchange rate
    attr_accessor :property_exchange_rate

    # The DateInterval in which recurring vouchers are generated.<br>       Necessary attribute for all recurring vouchers.
    attr_accessor :recurring_interval

    # The date when the recurring vouchers start being generated.<br>       Necessary attribute for all recurring vouchers.
    attr_accessor :recurring_start_date

    # The date when the next voucher should be generated.<br>       Necessary attribute for all recurring vouchers.
    attr_accessor :recurring_next_voucher

    # The date when the last voucher was generated.
    attr_accessor :recurring_last_voucher

    # The date when the recurring vouchers end being generated.<br>      Necessary attribute for all recurring vouchers.
    attr_accessor :recurring_end_date

    # Enshrined vouchers cannot be changed. Can only be set via [Voucher/{voucherId}/enshrine](#tag/Voucher/operation/voucherEnshrine). This operation cannot be undone.
    attr_accessor :enshrined

    attr_accessor :tax_set

    # Payment deadline of the voucher.
    attr_accessor :payment_deadline

    # Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :delivery_date

    # Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :delivery_date_until

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
        :'map_all' => :'mapAll',
        :'create' => :'create',
        :'update' => :'update',
        :'sev_client' => :'sevClient',
        :'create_user' => :'createUser',
        :'voucher_date' => :'voucherDate',
        :'supplier' => :'supplier',
        :'supplier_name' => :'supplierName',
        :'description' => :'description',
        :'document' => :'document',
        :'pay_date' => :'payDate',
        :'status' => :'status',
        :'sum_net' => :'sumNet',
        :'sum_tax' => :'sumTax',
        :'sum_gross' => :'sumGross',
        :'sum_net_accounting' => :'sumNetAccounting',
        :'sum_tax_accounting' => :'sumTaxAccounting',
        :'sum_gross_accounting' => :'sumGrossAccounting',
        :'sum_discounts' => :'sumDiscounts',
        :'sum_discounts_foreign_currency' => :'sumDiscountsForeignCurrency',
        :'paid_amount' => :'paidAmount',
        :'tax_rule' => :'taxRule',
        :'tax_type' => :'taxType',
        :'credit_debit' => :'creditDebit',
        :'cost_centre' => :'costCentre',
        :'voucher_type' => :'voucherType',
        :'currency' => :'currency',
        :'property_foreign_currency_deadline' => :'propertyForeignCurrencyDeadline',
        :'property_exchange_rate' => :'propertyExchangeRate',
        :'recurring_interval' => :'recurringInterval',
        :'recurring_start_date' => :'recurringStartDate',
        :'recurring_next_voucher' => :'recurringNextVoucher',
        :'recurring_last_voucher' => :'recurringLastVoucher',
        :'recurring_end_date' => :'recurringEndDate',
        :'enshrined' => :'enshrined',
        :'tax_set' => :'taxSet',
        :'payment_deadline' => :'paymentDeadline',
        :'delivery_date' => :'deliveryDate',
        :'delivery_date_until' => :'deliveryDateUntil'
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
        :'map_all' => :'Boolean',
        :'create' => :'Time',
        :'update' => :'Time',
        :'sev_client' => :'ModelVoucherResponseSevClient',
        :'create_user' => :'ModelVoucherResponseCreateUser',
        :'voucher_date' => :'Time',
        :'supplier' => :'ModelVoucherResponseSupplier',
        :'supplier_name' => :'String',
        :'description' => :'String',
        :'document' => :'ModelVoucherResponseDocument',
        :'pay_date' => :'Time',
        :'status' => :'Object',
        :'sum_net' => :'String',
        :'sum_tax' => :'String',
        :'sum_gross' => :'String',
        :'sum_net_accounting' => :'String',
        :'sum_tax_accounting' => :'String',
        :'sum_gross_accounting' => :'String',
        :'sum_discounts' => :'String',
        :'sum_discounts_foreign_currency' => :'String',
        :'paid_amount' => :'Float',
        :'tax_rule' => :'ModelVoucherTaxRule',
        :'tax_type' => :'String',
        :'credit_debit' => :'String',
        :'cost_centre' => :'ModelVoucherResponseCostCentre',
        :'voucher_type' => :'String',
        :'currency' => :'String',
        :'property_foreign_currency_deadline' => :'Time',
        :'property_exchange_rate' => :'String',
        :'recurring_interval' => :'String',
        :'recurring_start_date' => :'Time',
        :'recurring_next_voucher' => :'Time',
        :'recurring_last_voucher' => :'Time',
        :'recurring_end_date' => :'Time',
        :'enshrined' => :'Time',
        :'tax_set' => :'ModelVoucherResponseTaxSet',
        :'payment_deadline' => :'Time',
        :'delivery_date' => :'Time',
        :'delivery_date_until' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'voucher_date',
        :'supplier',
        :'supplier_name',
        :'description',
        :'document',
        :'pay_date',
        :'status',
        :'paid_amount',
        :'tax_type',
        :'credit_debit',
        :'voucher_type',
        :'currency',
        :'property_foreign_currency_deadline',
        :'property_exchange_rate',
        :'recurring_interval',
        :'recurring_start_date',
        :'recurring_next_voucher',
        :'recurring_last_voucher',
        :'recurring_end_date',
        :'tax_set',
        :'payment_deadline',
        :'delivery_date_until'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ModelVoucherResponse'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::VoucherResetToOpen200ResponseObjects` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::VoucherResetToOpen200ResponseObjects`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object_name')
        self.object_name = attributes[:'object_name']
      end

      if attributes.key?(:'map_all')
        self.map_all = attributes[:'map_all']
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

      if attributes.key?(:'create_user')
        self.create_user = attributes[:'create_user']
      end

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

      if attributes.key?(:'document')
        self.document = attributes[:'document']
      end

      if attributes.key?(:'pay_date')
        self.pay_date = attributes[:'pay_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
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

      if attributes.key?(:'sum_net_accounting')
        self.sum_net_accounting = attributes[:'sum_net_accounting']
      end

      if attributes.key?(:'sum_tax_accounting')
        self.sum_tax_accounting = attributes[:'sum_tax_accounting']
      end

      if attributes.key?(:'sum_gross_accounting')
        self.sum_gross_accounting = attributes[:'sum_gross_accounting']
      end

      if attributes.key?(:'sum_discounts')
        self.sum_discounts = attributes[:'sum_discounts']
      end

      if attributes.key?(:'sum_discounts_foreign_currency')
        self.sum_discounts_foreign_currency = attributes[:'sum_discounts_foreign_currency']
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

      if attributes.key?(:'cost_centre')
        self.cost_centre = attributes[:'cost_centre']
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

      if attributes.key?(:'recurring_interval')
        self.recurring_interval = attributes[:'recurring_interval']
      end

      if attributes.key?(:'recurring_start_date')
        self.recurring_start_date = attributes[:'recurring_start_date']
      end

      if attributes.key?(:'recurring_next_voucher')
        self.recurring_next_voucher = attributes[:'recurring_next_voucher']
      end

      if attributes.key?(:'recurring_last_voucher')
        self.recurring_last_voucher = attributes[:'recurring_last_voucher']
      end

      if attributes.key?(:'recurring_end_date')
        self.recurring_end_date = attributes[:'recurring_end_date']
      end

      if attributes.key?(:'enshrined')
        self.enshrined = attributes[:'enshrined']
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
      credit_debit_validator = EnumAttributeValidator.new('String', ["C", "D"])
      return false unless credit_debit_validator.valid?(@credit_debit)
      voucher_type_validator = EnumAttributeValidator.new('String', ["VOU", "RV"])
      return false unless voucher_type_validator.valid?(@voucher_type)
      recurring_interval_validator = EnumAttributeValidator.new('String', ["P0Y0M1W", "P0Y0M2W", "P0Y1M0W", "P0Y3M0W", "P0Y6M0W", "P1Y0M0W", "P2Y0M0W", "P3Y0M0W", "P4Y0M0W", "P5Y0M0W"])
      return false unless recurring_interval_validator.valid?(@recurring_interval)
      true
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recurring_interval Object to be assigned
    def recurring_interval=(recurring_interval)
      validator = EnumAttributeValidator.new('String', ["P0Y0M1W", "P0Y0M2W", "P0Y1M0W", "P0Y3M0W", "P0Y6M0W", "P1Y0M0W", "P2Y0M0W", "P3Y0M0W", "P4Y0M0W", "P5Y0M0W"])
      unless validator.valid?(recurring_interval)
        fail ArgumentError, "invalid value for \"recurring_interval\", must be one of #{validator.allowable_values}."
      end
      @recurring_interval = recurring_interval
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object_name == o.object_name &&
          map_all == o.map_all &&
          create == o.create &&
          update == o.update &&
          sev_client == o.sev_client &&
          create_user == o.create_user &&
          voucher_date == o.voucher_date &&
          supplier == o.supplier &&
          supplier_name == o.supplier_name &&
          description == o.description &&
          document == o.document &&
          pay_date == o.pay_date &&
          status == o.status &&
          sum_net == o.sum_net &&
          sum_tax == o.sum_tax &&
          sum_gross == o.sum_gross &&
          sum_net_accounting == o.sum_net_accounting &&
          sum_tax_accounting == o.sum_tax_accounting &&
          sum_gross_accounting == o.sum_gross_accounting &&
          sum_discounts == o.sum_discounts &&
          sum_discounts_foreign_currency == o.sum_discounts_foreign_currency &&
          paid_amount == o.paid_amount &&
          tax_rule == o.tax_rule &&
          tax_type == o.tax_type &&
          credit_debit == o.credit_debit &&
          cost_centre == o.cost_centre &&
          voucher_type == o.voucher_type &&
          currency == o.currency &&
          property_foreign_currency_deadline == o.property_foreign_currency_deadline &&
          property_exchange_rate == o.property_exchange_rate &&
          recurring_interval == o.recurring_interval &&
          recurring_start_date == o.recurring_start_date &&
          recurring_next_voucher == o.recurring_next_voucher &&
          recurring_last_voucher == o.recurring_last_voucher &&
          recurring_end_date == o.recurring_end_date &&
          enshrined == o.enshrined &&
          tax_set == o.tax_set &&
          payment_deadline == o.payment_deadline &&
          delivery_date == o.delivery_date &&
          delivery_date_until == o.delivery_date_until
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, map_all, create, update, sev_client, create_user, voucher_date, supplier, supplier_name, description, document, pay_date, status, sum_net, sum_tax, sum_gross, sum_net_accounting, sum_tax_accounting, sum_gross_accounting, sum_discounts, sum_discounts_foreign_currency, paid_amount, tax_rule, tax_type, credit_debit, cost_centre, voucher_type, currency, property_foreign_currency_deadline, property_exchange_rate, recurring_interval, recurring_start_date, recurring_next_voucher, recurring_last_voucher, recurring_end_date, enshrined, tax_set, payment_deadline, delivery_date, delivery_date_until].hash
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
