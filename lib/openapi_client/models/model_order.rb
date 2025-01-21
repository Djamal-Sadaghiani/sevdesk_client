require 'date'
require 'time'

module OpenapiClient
  # Order model
  class ModelOrder
    # The order id
    attr_accessor :id

    # The order object name
    attr_accessor :object_name

    attr_accessor :map_all

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

    # Delivery terms of the order
    attr_accessor :delivery_terms

    # Payment terms of the order
    attr_accessor :payment_terms

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

    # Internal note of the customer. Contains data entered into field 'Referenz/Bestellnummer'
    attr_accessor :customer_internal_note

    # If true, the net amount of each position will be shown on the order. Otherwise gross amount
    attr_accessor :show_net

    # Type which was used to send the order. IMPORTANT: Please refer to the order section of the       *     API-Overview to understand how this attribute can be used before using it!
    attr_accessor :send_type

    attr_accessor :origin

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
        :'order_number' => :'orderNumber',
        :'contact' => :'contact',
        :'order_date' => :'orderDate',
        :'status' => :'status',
        :'header' => :'header',
        :'head_text' => :'headText',
        :'foot_text' => :'footText',
        :'address_country' => :'addressCountry',
        :'delivery_terms' => :'deliveryTerms',
        :'payment_terms' => :'paymentTerms',
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
        :'customer_internal_note' => :'customerInternalNote',
        :'show_net' => :'showNet',
        :'send_type' => :'sendType',
        :'origin' => :'origin'
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
        :'map_all' => :'Boolean',
        :'create' => :'Time',
        :'update' => :'Time',
        :'order_number' => :'String',
        :'contact' => :'ModelOrderContact',
        :'order_date' => :'Time',
        :'status' => :'Integer',
        :'header' => :'String',
        :'head_text' => :'String',
        :'foot_text' => :'String',
        :'address_country' => :'ModelOrderAddressCountry',
        :'delivery_terms' => :'String',
        :'payment_terms' => :'String',
        :'version' => :'Integer',
        :'small_settlement' => :'Boolean',
        :'contact_person' => :'ModelOrderContactPerson',
        :'tax_rate' => :'Float',
        :'tax_rule' => :'ModelOrderResponseTaxRule',
        :'tax_set' => :'ModelOrderTaxSet',
        :'tax_text' => :'String',
        :'tax_type' => :'String',
        :'order_type' => :'String',
        :'send_date' => :'Time',
        :'address' => :'String',
        :'currency' => :'String',
        :'customer_internal_note' => :'String',
        :'show_net' => :'Boolean',
        :'send_type' => :'String',
        :'origin' => :'ModelOrderOrigin'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'head_text',
        :'foot_text',
        :'delivery_terms',
        :'payment_terms',
        :'tax_set',
        :'send_date',
        :'address',
        :'customer_internal_note',
        :'send_type',
        :'origin'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelOrder` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelOrder`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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
      else
        self.map_all = nil
      end

      if attributes.key?(:'create')
        self.create = attributes[:'create']
      end

      if attributes.key?(:'update')
        self.update = attributes[:'update']
      end

      if attributes.key?(:'order_number')
        self.order_number = attributes[:'order_number']
      else
        self.order_number = nil
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      else
        self.contact = nil
      end

      if attributes.key?(:'order_date')
        self.order_date = attributes[:'order_date']
      else
        self.order_date = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'header')
        self.header = attributes[:'header']
      else
        self.header = nil
      end

      if attributes.key?(:'head_text')
        self.head_text = attributes[:'head_text']
      end

      if attributes.key?(:'foot_text')
        self.foot_text = attributes[:'foot_text']
      end

      if attributes.key?(:'address_country')
        self.address_country = attributes[:'address_country']
      else
        self.address_country = nil
      end

      if attributes.key?(:'delivery_terms')
        self.delivery_terms = attributes[:'delivery_terms']
      end

      if attributes.key?(:'payment_terms')
        self.payment_terms = attributes[:'payment_terms']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end

      if attributes.key?(:'small_settlement')
        self.small_settlement = attributes[:'small_settlement']
      end

      if attributes.key?(:'contact_person')
        self.contact_person = attributes[:'contact_person']
      else
        self.contact_person = nil
      end

      if attributes.key?(:'tax_rate')
        self.tax_rate = attributes[:'tax_rate']
      else
        self.tax_rate = nil
      end

      if attributes.key?(:'tax_rule')
        self.tax_rule = attributes[:'tax_rule']
      else
        self.tax_rule = nil
      end

      if attributes.key?(:'tax_set')
        self.tax_set = attributes[:'tax_set']
      end

      if attributes.key?(:'tax_text')
        self.tax_text = attributes[:'tax_text']
      else
        self.tax_text = nil
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      else
        self.tax_type = nil
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
      else
        self.currency = nil
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

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @map_all.nil?
        invalid_properties.push('invalid value for "map_all", map_all cannot be nil.')
      end

      if @order_number.nil?
        invalid_properties.push('invalid value for "order_number", order_number cannot be nil.')
      end

      if @contact.nil?
        invalid_properties.push('invalid value for "contact", contact cannot be nil.')
      end

      if @order_date.nil?
        invalid_properties.push('invalid value for "order_date", order_date cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @header.nil?
        invalid_properties.push('invalid value for "header", header cannot be nil.')
      end

      if @address_country.nil?
        invalid_properties.push('invalid value for "address_country", address_country cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if @contact_person.nil?
        invalid_properties.push('invalid value for "contact_person", contact_person cannot be nil.')
      end

      if @tax_rate.nil?
        invalid_properties.push('invalid value for "tax_rate", tax_rate cannot be nil.')
      end

      if @tax_rule.nil?
        invalid_properties.push('invalid value for "tax_rule", tax_rule cannot be nil.')
      end

      if @tax_text.nil?
        invalid_properties.push('invalid value for "tax_text", tax_text cannot be nil.')
      end

      if @tax_type.nil?
        invalid_properties.push('invalid value for "tax_type", tax_type cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @map_all.nil?
      return false if @order_number.nil?
      return false if @contact.nil?
      return false if @order_date.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('Integer', [100, 200, 300, 500, 750, 1000])
      return false unless status_validator.valid?(@status)
      return false if @header.nil?
      return false if @address_country.nil?
      return false if @version.nil?
      return false if @contact_person.nil?
      return false if @tax_rate.nil?
      return false if @tax_rule.nil?
      return false if @tax_text.nil?
      return false if @tax_type.nil?
      order_type_validator = EnumAttributeValidator.new('String', ["AN", "AB", "LI"])
      return false unless order_type_validator.valid?(@order_type)
      return false if @currency.nil?
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
          map_all == o.map_all &&
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
          delivery_terms == o.delivery_terms &&
          payment_terms == o.payment_terms &&
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
          customer_internal_note == o.customer_internal_note &&
          show_net == o.show_net &&
          send_type == o.send_type &&
          origin == o.origin
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, map_all, create, update, order_number, contact, order_date, status, header, head_text, foot_text, address_country, delivery_terms, payment_terms, version, small_settlement, contact_person, tax_rate, tax_rule, tax_set, tax_text, tax_type, order_type, send_date, address, currency, customer_internal_note, show_net, send_type, origin].hash
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
