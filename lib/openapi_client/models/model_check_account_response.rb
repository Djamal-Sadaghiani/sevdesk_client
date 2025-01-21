require 'date'
require 'time'

module OpenapiClient
  # CheckAccount model. Responsible for the payment accounts.
  class ModelCheckAccountResponse
    # The check account id
    attr_accessor :id

    # The check account object name
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

    # Import type, for accounts that are type \"online\" but not connected to a data provider.
    attr_accessor :import_type

    # The currency of the check account.
    attr_accessor :currency

    # Defines if this check account is the default account.
    attr_accessor :default_account

    # This will be 1 if the account is your base account that comes with every sevdesk setup.
    attr_accessor :base_account

    # Defines the sorting of accounts, highest is first.
    attr_accessor :priority

    # Status of the check account. 0 <-> Archived - 100 <-> Active
    attr_accessor :status

    # The account balance as reported by PayPal or finAPI. Not set for other types of accounts.
    attr_accessor :balance

    # Bank server of check account, only set if the account is connected to a data provider
    attr_accessor :bank_server

    # Defines if transactions on this account are automatically mapped to invoice and vouchers when imported if possible.
    attr_accessor :auto_map_transactions

    # If this is 1 the account will be automatically updated through PayPal or finAPI. Only applicable for connected online accounts.
    attr_accessor :auto_sync_transactions

    # Timepoint of the last payment import through PayPal or finAPI.
    attr_accessor :last_sync

    # The booking account used for this account, e.g. 1800 in SKR04 and 1200 in SKR03. Must be unique among all your CheckAccounts.
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
        :'base_account' => :'baseAccount',
        :'priority' => :'priority',
        :'status' => :'status',
        :'balance' => :'balance',
        :'bank_server' => :'bankServer',
        :'auto_map_transactions' => :'autoMapTransactions',
        :'auto_sync_transactions' => :'autoSyncTransactions',
        :'last_sync' => :'lastSync',
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
        :'sev_client' => :'ModelCheckAccountResponseSevClient',
        :'name' => :'String',
        :'iban' => :'String',
        :'type' => :'String',
        :'import_type' => :'String',
        :'currency' => :'String',
        :'default_account' => :'String',
        :'base_account' => :'String',
        :'priority' => :'String',
        :'status' => :'String',
        :'balance' => :'String',
        :'bank_server' => :'String',
        :'auto_map_transactions' => :'String',
        :'auto_sync_transactions' => :'String',
        :'last_sync' => :'Time',
        :'accounting_number' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'iban',
        :'import_type',
        :'balance',
        :'bank_server',
        :'auto_map_transactions',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelCheckAccountResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelCheckAccountResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'base_account')
        self.base_account = attributes[:'base_account']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = '100'
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'bank_server')
        self.bank_server = attributes[:'bank_server']
      end

      if attributes.key?(:'auto_map_transactions')
        self.auto_map_transactions = attributes[:'auto_map_transactions']
      else
        self.auto_map_transactions = '1'
      end

      if attributes.key?(:'auto_sync_transactions')
        self.auto_sync_transactions = attributes[:'auto_sync_transactions']
      end

      if attributes.key?(:'last_sync')
        self.last_sync = attributes[:'last_sync']
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
      type_validator = EnumAttributeValidator.new('String', ["online", "offline", "register"])
      return false unless type_validator.valid?(@type)
      import_type_validator = EnumAttributeValidator.new('String', ["CSV", "MT940"])
      return false unless import_type_validator.valid?(@import_type)
      status_validator = EnumAttributeValidator.new('String', ["0", "100"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["online", "offline", "register"])
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
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["0", "100"])
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
          sev_client == o.sev_client &&
          name == o.name &&
          iban == o.iban &&
          type == o.type &&
          import_type == o.import_type &&
          currency == o.currency &&
          default_account == o.default_account &&
          base_account == o.base_account &&
          priority == o.priority &&
          status == o.status &&
          balance == o.balance &&
          bank_server == o.bank_server &&
          auto_map_transactions == o.auto_map_transactions &&
          auto_sync_transactions == o.auto_sync_transactions &&
          last_sync == o.last_sync &&
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
      [id, object_name, create, update, sev_client, name, iban, type, import_type, currency, default_account, base_account, priority, status, balance, bank_server, auto_map_transactions, auto_sync_transactions, last_sync, accounting_number].hash
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
