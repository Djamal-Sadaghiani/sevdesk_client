require 'date'
require 'time'

module OpenapiClient
  # creditNote position model
  class ModelCreditNotePos
    # The creditNote position id.
    attr_accessor :id

    # The creditNote position object name
    attr_accessor :object_name

    attr_accessor :map_all

    # Date of creditNote position creation
    attr_accessor :create

    # Date of last creditNote position update
    attr_accessor :update

    attr_accessor :credit_note

    attr_accessor :part

    # Quantity of the article/part
    attr_accessor :quantity

    # Price of the article/part. Is either gross or net, depending on the sevdesk account setting.
    attr_accessor :price

    # Net price of the part
    attr_accessor :price_net

    # Tax on the price of the part
    attr_accessor :price_tax

    # Gross price of the part
    attr_accessor :price_gross

    # Name of the article/part.
    attr_accessor :name

    attr_accessor :unity

    attr_accessor :sev_client

    # Position number of your position. Can be used to creditNote multiple positions.
    attr_accessor :position_number

    # A text describing your position.
    attr_accessor :text

    # An optional discount of the position.
    attr_accessor :discount

    # Defines if the position is optional.
    attr_accessor :optional

    # Tax rate of the position.
    attr_accessor :tax_rate

    # Discount sum of the position
    attr_accessor :sum_discount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object_name' => :'objectName',
        :'map_all' => :'mapAll',
        :'create' => :'create',
        :'update' => :'update',
        :'credit_note' => :'creditNote',
        :'part' => :'part',
        :'quantity' => :'quantity',
        :'price' => :'price',
        :'price_net' => :'priceNet',
        :'price_tax' => :'priceTax',
        :'price_gross' => :'priceGross',
        :'name' => :'name',
        :'unity' => :'unity',
        :'sev_client' => :'sevClient',
        :'position_number' => :'positionNumber',
        :'text' => :'text',
        :'discount' => :'discount',
        :'optional' => :'optional',
        :'tax_rate' => :'taxRate',
        :'sum_discount' => :'sumDiscount'
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
        :'create' => :'String',
        :'update' => :'String',
        :'credit_note' => :'ModelCreditNotePosCreditNote',
        :'part' => :'ModelCreditNotePosPart',
        :'quantity' => :'Float',
        :'price' => :'Float',
        :'price_net' => :'Float',
        :'price_tax' => :'Float',
        :'price_gross' => :'Float',
        :'name' => :'String',
        :'unity' => :'ModelCreditNotePosUnity',
        :'sev_client' => :'ModelCreditNotePosSevClient',
        :'position_number' => :'Integer',
        :'text' => :'String',
        :'discount' => :'Float',
        :'optional' => :'Boolean',
        :'tax_rate' => :'Float',
        :'sum_discount' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'price',
        :'price_net',
        :'price_tax',
        :'price_gross',
        :'name',
        :'position_number',
        :'text',
        :'discount',
        :'optional',
        :'sum_discount'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelCreditNotePos` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelCreditNotePos`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object_name')
        self.object_name = attributes[:'object_name']
      else
        self.object_name = nil
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

      if attributes.key?(:'credit_note')
        self.credit_note = attributes[:'credit_note']
      end

      if attributes.key?(:'part')
        self.part = attributes[:'part']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      else
        self.quantity = nil
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'price_net')
        self.price_net = attributes[:'price_net']
      end

      if attributes.key?(:'price_tax')
        self.price_tax = attributes[:'price_tax']
      end

      if attributes.key?(:'price_gross')
        self.price_gross = attributes[:'price_gross']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'unity')
        self.unity = attributes[:'unity']
      else
        self.unity = nil
      end

      if attributes.key?(:'sev_client')
        self.sev_client = attributes[:'sev_client']
      end

      if attributes.key?(:'position_number')
        self.position_number = attributes[:'position_number']
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.key?(:'optional')
        self.optional = attributes[:'optional']
      end

      if attributes.key?(:'tax_rate')
        self.tax_rate = attributes[:'tax_rate']
      else
        self.tax_rate = nil
      end

      if attributes.key?(:'sum_discount')
        self.sum_discount = attributes[:'sum_discount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @object_name.nil?
        invalid_properties.push('invalid value for "object_name", object_name cannot be nil.')
      end

      if @map_all.nil?
        invalid_properties.push('invalid value for "map_all", map_all cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @unity.nil?
        invalid_properties.push('invalid value for "unity", unity cannot be nil.')
      end

      if @tax_rate.nil?
        invalid_properties.push('invalid value for "tax_rate", tax_rate cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @object_name.nil?
      return false if @map_all.nil?
      return false if @quantity.nil?
      return false if @unity.nil?
      return false if @tax_rate.nil?
      true
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
          credit_note == o.credit_note &&
          part == o.part &&
          quantity == o.quantity &&
          price == o.price &&
          price_net == o.price_net &&
          price_tax == o.price_tax &&
          price_gross == o.price_gross &&
          name == o.name &&
          unity == o.unity &&
          sev_client == o.sev_client &&
          position_number == o.position_number &&
          text == o.text &&
          discount == o.discount &&
          optional == o.optional &&
          tax_rate == o.tax_rate &&
          sum_discount == o.sum_discount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, map_all, create, update, credit_note, part, quantity, price, price_net, price_tax, price_gross, name, unity, sev_client, position_number, text, discount, optional, tax_rate, sum_discount].hash
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
