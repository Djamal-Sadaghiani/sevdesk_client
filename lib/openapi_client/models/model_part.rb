require 'date'
require 'time'

module OpenapiClient
  # Part model
  class ModelPart
    # The part id
    attr_accessor :id

    # The part object name
    attr_accessor :object_name

    # Date of part creation
    attr_accessor :create

    # Date of last part update
    attr_accessor :update

    # Name of the part
    attr_accessor :name

    # The part number
    attr_accessor :part_number

    # A text describing the part
    attr_accessor :text

    attr_accessor :category

    # The stock of the part
    attr_accessor :stock

    # Defines if the stock should be enabled
    attr_accessor :stock_enabled

    attr_accessor :unity

    # Net price for which the part is sold. we will change this parameter so that the gross price is calculated automatically, until then the priceGross parameter must be used.
    attr_accessor :price

    # Net price for which the part is sold
    attr_accessor :price_net

    # Gross price for which the part is sold
    attr_accessor :price_gross

    attr_accessor :sev_client

    # Purchase price of the part
    attr_accessor :price_purchase

    # Tax rate of the part
    attr_accessor :tax_rate

    # Status of the part. 50 <-> Inactive - 100 <-> Active
    attr_accessor :status

    # An internal comment for the part.<br>       Does not appear on invoices and orders.
    attr_accessor :internal_comment

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
        :'name' => :'name',
        :'part_number' => :'partNumber',
        :'text' => :'text',
        :'category' => :'category',
        :'stock' => :'stock',
        :'stock_enabled' => :'stockEnabled',
        :'unity' => :'unity',
        :'price' => :'price',
        :'price_net' => :'priceNet',
        :'price_gross' => :'priceGross',
        :'sev_client' => :'sevClient',
        :'price_purchase' => :'pricePurchase',
        :'tax_rate' => :'taxRate',
        :'status' => :'status',
        :'internal_comment' => :'internalComment'
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
        :'name' => :'String',
        :'part_number' => :'String',
        :'text' => :'String',
        :'category' => :'ModelPartCategory',
        :'stock' => :'Float',
        :'stock_enabled' => :'Boolean',
        :'unity' => :'ModelPartUnity',
        :'price' => :'Float',
        :'price_net' => :'Float',
        :'price_gross' => :'Float',
        :'sev_client' => :'ModelPartSevClient',
        :'price_purchase' => :'Float',
        :'tax_rate' => :'Float',
        :'status' => :'Integer',
        :'internal_comment' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'text',
        :'category',
        :'price',
        :'price_net',
        :'price_gross',
        :'price_purchase',
        :'status',
        :'internal_comment'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelPart` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelPart`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'part_number')
        self.part_number = attributes[:'part_number']
      else
        self.part_number = nil
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'stock')
        self.stock = attributes[:'stock']
      else
        self.stock = nil
      end

      if attributes.key?(:'stock_enabled')
        self.stock_enabled = attributes[:'stock_enabled']
      end

      if attributes.key?(:'unity')
        self.unity = attributes[:'unity']
      else
        self.unity = nil
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'price_net')
        self.price_net = attributes[:'price_net']
      end

      if attributes.key?(:'price_gross')
        self.price_gross = attributes[:'price_gross']
      end

      if attributes.key?(:'sev_client')
        self.sev_client = attributes[:'sev_client']
      end

      if attributes.key?(:'price_purchase')
        self.price_purchase = attributes[:'price_purchase']
      end

      if attributes.key?(:'tax_rate')
        self.tax_rate = attributes[:'tax_rate']
      else
        self.tax_rate = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'internal_comment')
        self.internal_comment = attributes[:'internal_comment']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @part_number.nil?
        invalid_properties.push('invalid value for "part_number", part_number cannot be nil.')
      end

      if @stock.nil?
        invalid_properties.push('invalid value for "stock", stock cannot be nil.')
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
      return false if @name.nil?
      return false if @part_number.nil?
      return false if @stock.nil?
      return false if @unity.nil?
      return false if @tax_rate.nil?
      status_validator = EnumAttributeValidator.new('Integer', [50, 100])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Integer', [50, 100])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
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
          name == o.name &&
          part_number == o.part_number &&
          text == o.text &&
          category == o.category &&
          stock == o.stock &&
          stock_enabled == o.stock_enabled &&
          unity == o.unity &&
          price == o.price &&
          price_net == o.price_net &&
          price_gross == o.price_gross &&
          sev_client == o.sev_client &&
          price_purchase == o.price_purchase &&
          tax_rate == o.tax_rate &&
          status == o.status &&
          internal_comment == o.internal_comment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, create, update, name, part_number, text, category, stock, stock_enabled, unity, price, price_net, price_gross, sev_client, price_purchase, tax_rate, status, internal_comment].hash
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
