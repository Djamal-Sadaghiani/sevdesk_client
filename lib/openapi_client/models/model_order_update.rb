require 'date'
require 'time'

module OpenapiClient
  # Order model
  class ModelOrderUpdate
    # The order id
    attr_accessor :id

    # The order object name
    attr_accessor :object_name

    # Date of order creation
    attr_accessor :create

    # Date of last order update
    attr_accessor :update

    # The order number
    attr_accessor :order_number

    attr_accessor :contact

    # Needs to be provided as timestamp or dd.mm.yyyy
    attr_accessor :order_date

    # Please have a look in       <a href='#tag/Order/Types-and-status-of-orders'>status of orders</a>      to see what the different status codes mean
    attr_accessor :status

    # Normally consist of prefix plus the order number
    attr_accessor :header

    # Certain html tags can be used here to format your text
    attr_accessor :head_text

    # Certain html tags can be used here to format your text
    attr_accessor :foot_text

    attr_accessor :address_country

    attr_accessor :create_user

    attr_accessor :sev_client

    # Delivery terms of the order
    attr_accessor :delivery_terms

    # Payment terms of the order
    attr_accessor :payment_terms

    attr_accessor :origin

    # Version of the order.<br>      Can be used if you have multiple drafts for the same order.<br>      Should start with 0
    attr_accessor :version

    # Defines if the client uses the small settlement scheme.      If yes, the order must not contain any vat
    attr_accessor :small_settlement

    attr_accessor :contact_person

    # This is not used anymore. Use the taxRate of the individual positions instead.
    attr_accessor :tax_rate

    attr_accessor :tax_rule

    attr_accessor :tax_set

    # A common tax text would be 'Umsatzsteuer 19%'
    attr_accessor :tax_text

    # **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the order. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used.
    attr_accessor :tax_type

    # Type of the order. For more information on the different types, check      <a href='#tag/Order/Types-and-status-of-orders'>this</a>  
    attr_accessor :order_type

    # The date the order was sent to the customer
    attr_accessor :send_date

    # Complete address of the recipient including name, street, city, zip and country.<br>       Line breaks can be used and will be displayed on the invoice pdf.
    attr_accessor :address

    # Currency used in the order. Needs to be currency code according to ISO-4217
    attr_accessor :currency

    # Net sum of the order
    attr_accessor :sum_net

    # Tax sum of the order
    attr_accessor :sum_tax

    # Gross sum of the order
    attr_accessor :sum_gross

    # Sum of all discounts in the order
    attr_accessor :sum_discounts

    # Net sum of the order in the foreign currency
    attr_accessor :sum_net_foreign_currency

    # Tax sum of the order in the foreign currency
    attr_accessor :sum_tax_foreign_currency

    # Gross sum of the order in the foreign currency
    attr_accessor :sum_gross_foreign_currency

    # Discounts sum of the order in the foreign currency
    attr_accessor :sum_discounts_foreign_currency

    # Internal note of the customer. Contains data entered into field 'Referenz/Bestellnummer'
    attr_accessor :customer_internal_note

    # If true, the net amount of each position will be shown on the order. Otherwise gross amount
    attr_accessor :show_net

    # Type which was used to send the order. IMPORTANT: Please refer to the order section of the       *     API-Overview to understand how this attribute can be used before using it!
    attr_accessor :send_type

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
        :'create' => :'create',
        :'update' => :'update',
        :'order_number' => :'orderNumber',
        :'contact' => :'contact',
        :'order_date' => :'orderDate',
        :'status' => :'status',
        :'header' => :'header',
        :'head_text' => :'headText',
        :'foot_text' => :'footText',
        :'address_country' => :'addressCountry',
        :'create_user' => :'createUser',
        :'sev_client' => :'sevClient',
        :'delivery_terms' => :'deliveryTerms',
        :'payment_terms' => :'paymentTerms',
        :'origin' => :'origin',
        :'version' => :'version',
        :'small_settlement' => :'smallSettlement',
        :'contact_person' => :'contactPerson',
        :'tax_rate' => :'taxRate',
        :'tax_rule' => :'taxRule',
        :'tax_set' => :'taxSet',
        :'tax_text' => :'taxText',
        :'tax_type' => :'taxType',
        :'order_type' => :'orderType',
        :'send_date' => :'sendDate',
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
        :'customer_internal_note' => :'customerInternalNote',
        :'show_net' => :'showNet',
        :'send_type' => :'sendType'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'object_name' => :'String',
        :'create' => :'Time',
        :'update' => :'Time',
        :'order_number' => :'String',
        :'contact' => :'ModelOrderUpdateContact',
        :'order_date' => :'Time',
        :'status' => :'Integer',
        :'header' => :'String',
        :'head_text' => :'String',
        :'foot_text' => :'String',
        :'address_country' => :'ModelOrderUpdateAddressCountry',
        :'create_user' => :'ModelOrderUpdateCreateUser',
        :'sev_client' => :'ModelOrderUpdateSevClient',
        :'delivery_terms' => :'String',
        :'payment_terms' => :'String',
        :'origin' => :'ModelOrderOrigin',
        :'version' => :'Integer',
        :'small_settlement' => :'Boolean',
        :'contact_person' => :'ModelOrderUpdateContactPerson',
        :'tax_rate' => :'Float',
        :'tax_rule' => :'ModelOrderResponseTaxRule',
        :'tax_set' => :'ModelOrderUpdateTaxSet',
        :'tax_text' => :'String',
        :'tax_type' => :'String',
        :'order_type' => :'String',
        :'send_date' => :'Time',
        :'address' => :'String',
        :'currency' => :'String',
        :'sum_net' => :'Float',
        :'sum_tax' => :'Float',
        :'sum_gross' => :'Float',
        :'sum_discounts' => :'Float',
        :'sum_net_foreign_currency' => :'Float',
        :'sum_tax_foreign_currency' => :'Float',
        :'sum_gross_foreign_currency' => :'Float',
        :'sum_discounts_foreign_currency' => :'Float',
        :'customer_internal_note' => :'String',
        :'show_net' => :'Boolean',
        :'send_type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'contact',
        :'order_date',
        :'status',
        :'header',
        :'head_text',
        :'foot_text',
        :'address_country',
        :'delivery_terms',
        :'payment_terms',
        :'origin',
        :'version',
        :'small_settlement',
        :'tax_rate',
        :'tax_set',
        :'tax_text',
        :'tax_type',
        :'order_type',
        :'send_date',
        :'address',
        :'currency',
        :'customer_internal_note',
        :'show_net',
        :'send_type'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelOrderUpdate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelOrderUpdate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object_name')
        self.object_name = attributes[:'object_name']
      end

      if attributes.key?(:'create')
        self.create = attributes[:'create']
      end

      if attributes.key?(:'update')
        self.update = attributes[:'update']
      end

      if attributes.key?(:'order_number')
        self.order_number = attributes[:'order_number']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'order_date')
        self.order_date = attributes[:'order_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
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

      if attributes.key?(:'address_country')
        self.address_country = attributes[:'address_country']
      end

      if attributes.key?(:'create_user')
        self.create_user = attributes[:'create_user']
      end

      if attributes.key?(:'sev_client')
        self.sev_client = attributes[:'sev_client']
      end

      if attributes.key?(:'delivery_terms')
        self.delivery_terms = attributes[:'delivery_terms']
      end

      if attributes.key?(:'payment_terms')
        self.payment_terms = attributes[:'payment_terms']
      end

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
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

      if attributes.key?(:'tax_set')
        self.tax_set = attributes[:'tax_set']
      end

      if attributes.key?(:'tax_text')
        self.tax_text = attributes[:'tax_text']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'order_type')
        self.order_type = attributes[:'order_type']
      end

      if attributes.key?(:'send_date')
        self.send_date = attributes[:'send_date']
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

      if attributes.key?(:'customer_internal_note')
        self.customer_internal_note = attributes[:'customer_internal_note']
      end

      if attributes.key?(:'show_net')
        self.show_net = attributes[:'show_net']
      end

      if attributes.key?(:'send_type')
        self.send_type = attributes[:'send_type']
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
      status_validator = EnumAttributeValidator.new('Integer', [100, 200, 300, 500, 750, 1000])
      return false unless status_validator.valid?(@status)
      order_type_validator = EnumAttributeValidator.new('String', ["AN", "AB", "LI"])
      return false unless order_type_validator.valid?(@order_type)
      send_type_validator = EnumAttributeValidator.new('String', ["VPR", "VPDF", "VM", "VP"])
      return false unless send_type_validator.valid?(@send_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Integer', [100, 200, 300, 500, 750, 1000])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order_type Object to be assigned
    def order_type=(order_type)
      validator = EnumAttributeValidator.new('String', ["AN", "AB", "LI"])
      unless validator.valid?(order_type)
        fail ArgumentError, "invalid value for \"order_type\", must be one of #{validator.allowable_values}."
      end
      @order_type = order_type
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
          create == o.create &&
          update == o.update &&
          order_number == o.order_number &&
          contact == o.contact &&
          order_date == o.order_date &&
          status == o.status &&
          header == o.header &&
          head_text == o.head_text &&
          foot_text == o.foot_text &&
          address_country == o.address_country &&
          create_user == o.create_user &&
          sev_client == o.sev_client &&
          delivery_terms == o.delivery_terms &&
          payment_terms == o.payment_terms &&
          origin == o.origin &&
          version == o.version &&
          small_settlement == o.small_settlement &&
          contact_person == o.contact_person &&
          tax_rate == o.tax_rate &&
          tax_rule == o.tax_rule &&
          tax_set == o.tax_set &&
          tax_text == o.tax_text &&
          tax_type == o.tax_type &&
          order_type == o.order_type &&
          send_date == o.send_date &&
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
          customer_internal_note == o.customer_internal_note &&
          show_net == o.show_net &&
          send_type == o.send_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, create, update, order_number, contact, order_date, status, header, head_text, foot_text, address_country, create_user, sev_client, delivery_terms, payment_terms, origin, version, small_settlement, contact_person, tax_rate, tax_rule, tax_set, tax_text, tax_type, order_type, send_date, address, currency, sum_net, sum_tax, sum_gross, sum_discounts, sum_net_foreign_currency, sum_tax_foreign_currency, sum_gross_foreign_currency, sum_discounts_foreign_currency, customer_internal_note, show_net, send_type].hash
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
