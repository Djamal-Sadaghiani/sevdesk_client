require 'date'
require 'time'

module OpenapiClient
  # CheckAccount model. Showing the properties relevant to file import accounts.
  class CreateFileImportAccountResponse
    # The check account id
    attr_accessor :id

    # The check account object name, always 'CheckAccount'
    attr_accessor :object_name

    # Date of check account creation
    attr_accessor :create

    # Date of last check account update
    attr_accessor :update

    attr_accessor :sev_client

    # Name of the check account
    attr_accessor :name

    # The IBAN of the account
    attr_accessor :iban

    # The type of the check account. Account with a CSV or MT940 import are regarded as online.
    attr_accessor :type

    # Import type, for accounts that are type \"online\" but not connected to a data provider. Transactions can be imported by this method on the check account.
    attr_accessor :import_type

    # The currency of the check account.
    attr_accessor :currency

    # Defines if this check account is the default account.
    attr_accessor :default_account

    # Status of the check account. 0 <-> Archived - 100 <-> Active
    attr_accessor :status

    # Defines if transactions on this account are automatically mapped to invoice and vouchers when imported if possible.
    attr_accessor :auto_map_transactions

    # The booking account used for this bank account, e.g. 1800 in SKR04 and 1200 in SKR03. Must be unique among all your CheckAccounts. Ignore to use a sensible default.
    attr_accessor :accounting_number

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
        :'sev_client' => :'sevClient',
        :'name' => :'name',
        :'iban' => :'iban',
        :'type' => :'type',
        :'import_type' => :'importType',
        :'currency' => :'currency',
        :'default_account' => :'defaultAccount',
        :'status' => :'status',
        :'auto_map_transactions' => :'autoMapTransactions',
        :'accounting_number' => :'accountingNumber'
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
        :'create' => :'Time',
        :'update' => :'Time',
        :'sev_client' => :'CreateFileImportAccountResponseSevClient',
        :'name' => :'String',
        :'iban' => :'String',
        :'type' => :'String',
        :'import_type' => :'String',
        :'currency' => :'String',
        :'default_account' => :'String',
        :'status' => :'String',
        :'auto_map_transactions' => :'String',
        :'accounting_number' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'iban',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CreateFileImportAccountResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CreateFileImportAccountResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'import_type')
        self.import_type = attributes[:'import_type']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'default_account')
        self.default_account = attributes[:'default_account']
      else
        self.default_account = '0'
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = '100'
      end

      if attributes.key?(:'auto_map_transactions')
        self.auto_map_transactions = attributes[:'auto_map_transactions']
      else
        self.auto_map_transactions = '1'
      end

      if attributes.key?(:'accounting_number')
        self.accounting_number = attributes[:'accounting_number']
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
      type_validator = EnumAttributeValidator.new('String', ["online", "offline"])
      return false unless type_validator.valid?(@type)
      import_type_validator = EnumAttributeValidator.new('String', ["CSV", "MT940"])
      return false unless import_type_validator.valid?(@import_type)
      default_account_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless default_account_validator.valid?(@default_account)
      status_validator = EnumAttributeValidator.new('String', ["0", "100"])
      return false unless status_validator.valid?(@status)
      auto_map_transactions_validator = EnumAttributeValidator.new('String', ["0", "1"])
      return false unless auto_map_transactions_validator.valid?(@auto_map_transactions)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["online", "offline"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] import_type Object to be assigned
    def import_type=(import_type)
      validator = EnumAttributeValidator.new('String', ["CSV", "MT940"])
      unless validator.valid?(import_type)
        fail ArgumentError, "invalid value for \"import_type\", must be one of #{validator.allowable_values}."
      end
      @import_type = import_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_account Object to be assigned
    def default_account=(default_account)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(default_account)
        fail ArgumentError, "invalid value for \"default_account\", must be one of #{validator.allowable_values}."
      end
      @default_account = default_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["0", "100"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auto_map_transactions Object to be assigned
    def auto_map_transactions=(auto_map_transactions)
      validator = EnumAttributeValidator.new('String', ["0", "1"])
      unless validator.valid?(auto_map_transactions)
        fail ArgumentError, "invalid value for \"auto_map_transactions\", must be one of #{validator.allowable_values}."
      end
      @auto_map_transactions = auto_map_transactions
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
          name == o.name &&
          iban == o.iban &&
          type == o.type &&
          import_type == o.import_type &&
          currency == o.currency &&
          default_account == o.default_account &&
          status == o.status &&
          auto_map_transactions == o.auto_map_transactions &&
          accounting_number == o.accounting_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, create, update, sev_client, name, iban, type, import_type, currency, default_account, status, auto_map_transactions, accounting_number].hash
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
