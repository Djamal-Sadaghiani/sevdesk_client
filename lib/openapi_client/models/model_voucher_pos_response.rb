require 'date'
require 'time'

module OpenapiClient
  # Voucher position model
  class ModelVoucherPosResponse
    # The voucher position id
    attr_accessor :id

    # The voucher position object name
    attr_accessor :object_name

    # Date of voucher position creation
    attr_accessor :create

    # Date of last voucher position update
    attr_accessor :update

    attr_accessor :sev_client

    attr_accessor :voucher

    attr_accessor :account_datev

    attr_accessor :accounting_type

    attr_accessor :estimated_accounting_type

    # Tax rate of the voucher position.
    attr_accessor :tax_rate

    # Determines whether 'sumNet' or 'sumGross' is regarded.<br>       If both are not given, 'sum' is regarded and treated as net or gross depending on 'net'.  All positions must be either net or gross, a mixture of the two is not possible.
    attr_accessor :net

    # Determines whether position is regarded as an asset which can be depreciated.
    attr_accessor :is_asset

    # Net sum of the voucher position.<br>      Only regarded if 'net' is 'true', otherwise its readOnly.
    attr_accessor :sum_net

    # Tax sum of the voucher position.
    attr_accessor :sum_tax

    # Gross sum of the voucher position.<br>      Only regarded if 'net' is 'false', otherwise its readOnly.
    attr_accessor :sum_gross

    # Net accounting sum. Is equal to sumNet.
    attr_accessor :sum_net_accounting

    # Tax accounting sum. Is equal to sumTax.
    attr_accessor :sum_tax_accounting

    # Gross accounting sum. Is equal to sumGross.
    attr_accessor :sum_gross_accounting

    # Comment for the voucher position.
    attr_accessor :comment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object_name' => :'objectName',
        :'create' => :'create',
        :'update' => :'update',
        :'sev_client' => :'sevClient',
        :'voucher' => :'voucher',
        :'account_datev' => :'accountDatev',
        :'accounting_type' => :'accountingType',
        :'estimated_accounting_type' => :'estimatedAccountingType',
        :'tax_rate' => :'taxRate',
        :'net' => :'net',
        :'is_asset' => :'isAsset',
        :'sum_net' => :'sumNet',
        :'sum_tax' => :'sumTax',
        :'sum_gross' => :'sumGross',
        :'sum_net_accounting' => :'sumNetAccounting',
        :'sum_tax_accounting' => :'sumTaxAccounting',
        :'sum_gross_accounting' => :'sumGrossAccounting',
        :'comment' => :'comment'
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
        :'create' => :'String',
        :'update' => :'String',
        :'sev_client' => :'ModelVoucherPosResponseSevClient',
        :'voucher' => :'ModelVoucherPosResponseVoucher',
        :'account_datev' => :'ModelVoucherPosAccountDatev',
        :'accounting_type' => :'ModelVoucherPosResponseAccountingType',
        :'estimated_accounting_type' => :'ModelVoucherPosResponseEstimatedAccountingType',
        :'tax_rate' => :'String',
        :'net' => :'Boolean',
        :'is_asset' => :'Boolean',
        :'sum_net' => :'String',
        :'sum_tax' => :'String',
        :'sum_gross' => :'String',
        :'sum_net_accounting' => :'String',
        :'sum_tax_accounting' => :'String',
        :'sum_gross_accounting' => :'String',
        :'comment' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'comment'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelVoucherPosResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelVoucherPosResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'sev_client')
        self.sev_client = attributes[:'sev_client']
      end

      if attributes.key?(:'voucher')
        self.voucher = attributes[:'voucher']
      else
        self.voucher = nil
      end

      if attributes.key?(:'account_datev')
        self.account_datev = attributes[:'account_datev']
      else
        self.account_datev = nil
      end

      if attributes.key?(:'accounting_type')
        self.accounting_type = attributes[:'accounting_type']
      else
        self.accounting_type = nil
      end

      if attributes.key?(:'estimated_accounting_type')
        self.estimated_accounting_type = attributes[:'estimated_accounting_type']
      end

      if attributes.key?(:'tax_rate')
        self.tax_rate = attributes[:'tax_rate']
      else
        self.tax_rate = nil
      end

      if attributes.key?(:'net')
        self.net = attributes[:'net']
      else
        self.net = nil
      end

      if attributes.key?(:'is_asset')
        self.is_asset = attributes[:'is_asset']
      end

      if attributes.key?(:'sum_net')
        self.sum_net = attributes[:'sum_net']
      else
        self.sum_net = nil
      end

      if attributes.key?(:'sum_tax')
        self.sum_tax = attributes[:'sum_tax']
      end

      if attributes.key?(:'sum_gross')
        self.sum_gross = attributes[:'sum_gross']
      else
        self.sum_gross = nil
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

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @voucher.nil?
        invalid_properties.push('invalid value for "voucher", voucher cannot be nil.')
      end

      if @account_datev.nil?
        invalid_properties.push('invalid value for "account_datev", account_datev cannot be nil.')
      end

      if @accounting_type.nil?
        invalid_properties.push('invalid value for "accounting_type", accounting_type cannot be nil.')
      end

      if @tax_rate.nil?
        invalid_properties.push('invalid value for "tax_rate", tax_rate cannot be nil.')
      end

      if @net.nil?
        invalid_properties.push('invalid value for "net", net cannot be nil.')
      end

      if @sum_net.nil?
        invalid_properties.push('invalid value for "sum_net", sum_net cannot be nil.')
      end

      if @sum_gross.nil?
        invalid_properties.push('invalid value for "sum_gross", sum_gross cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @voucher.nil?
      return false if @account_datev.nil?
      return false if @accounting_type.nil?
      return false if @tax_rate.nil?
      return false if @net.nil?
      return false if @sum_net.nil?
      return false if @sum_gross.nil?
      true
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
          sev_client == o.sev_client &&
          voucher == o.voucher &&
          account_datev == o.account_datev &&
          accounting_type == o.accounting_type &&
          estimated_accounting_type == o.estimated_accounting_type &&
          tax_rate == o.tax_rate &&
          net == o.net &&
          is_asset == o.is_asset &&
          sum_net == o.sum_net &&
          sum_tax == o.sum_tax &&
          sum_gross == o.sum_gross &&
          sum_net_accounting == o.sum_net_accounting &&
          sum_tax_accounting == o.sum_tax_accounting &&
          sum_gross_accounting == o.sum_gross_accounting &&
          comment == o.comment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, create, update, sev_client, voucher, account_datev, accounting_type, estimated_accounting_type, tax_rate, net, is_asset, sum_net, sum_tax, sum_gross, sum_net_accounting, sum_tax_accounting, sum_gross_accounting, comment].hash
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
