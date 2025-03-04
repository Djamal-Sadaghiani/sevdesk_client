require 'date'
require 'time'

module OpenapiClient
  # CheckAccountTransaction model. Responsible for the transactions on payment accounts.
  class ModelCheckAccountTransaction
    # The check account transaction id
    attr_accessor :id

    # The check account transaction object name
    attr_accessor :object_name

    # Date of check account transaction creation
    attr_accessor :create

    # Date of last check account transaction update
    attr_accessor :update

    attr_accessor :sev_client

    # Date the check account transaction was booked
    attr_accessor :value_date

    # Date the check account transaction was imported
    attr_accessor :entry_date

    # The purpose of the transaction
    attr_accessor :paymt_purpose

    # Amount of the transaction
    attr_accessor :amount

    # Name of the other party
    attr_accessor :payee_payer_name

    # IBAN or account number of the other party
    attr_accessor :payee_payer_acct_no

    # BIC or bank code of the other party
    attr_accessor :payee_payer_bank_code

    attr_accessor :check_account

    # Status of the check account transaction.<br>       100 <-> Created<br>       200 <-> Linked<br>       300 <-> Private<br>       400 <-> Booked
    attr_accessor :status

    attr_accessor :source_transaction

    attr_accessor :target_transaction

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
        :'value_date' => :'valueDate',
        :'entry_date' => :'entryDate',
        :'paymt_purpose' => :'paymtPurpose',
        :'amount' => :'amount',
        :'payee_payer_name' => :'payeePayerName',
        :'payee_payer_acct_no' => :'payeePayerAcctNo',
        :'payee_payer_bank_code' => :'payeePayerBankCode',
        :'check_account' => :'checkAccount',
        :'status' => :'status',
        :'source_transaction' => :'sourceTransaction',
        :'target_transaction' => :'targetTransaction'
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
        :'sev_client' => :'ModelCheckAccountTransactionSevClient',
        :'value_date' => :'Time',
        :'entry_date' => :'Time',
        :'paymt_purpose' => :'String',
        :'amount' => :'Float',
        :'payee_payer_name' => :'String',
        :'payee_payer_acct_no' => :'String',
        :'payee_payer_bank_code' => :'String',
        :'check_account' => :'ModelCheckAccountTransactionCheckAccount',
        :'status' => :'Integer',
        :'source_transaction' => :'ModelCheckAccountTransactionSourceTransaction',
        :'target_transaction' => :'ModelCheckAccountTransactionTargetTransaction'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entry_date',
        :'paymt_purpose',
        :'payee_payer_name',
        :'payee_payer_acct_no',
        :'payee_payer_bank_code',
        :'source_transaction',
        :'target_transaction'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelCheckAccountTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelCheckAccountTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'value_date')
        self.value_date = attributes[:'value_date']
      else
        self.value_date = nil
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'paymt_purpose')
        self.paymt_purpose = attributes[:'paymt_purpose']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'payee_payer_name')
        self.payee_payer_name = attributes[:'payee_payer_name']
      else
        self.payee_payer_name = nil
      end

      if attributes.key?(:'payee_payer_acct_no')
        self.payee_payer_acct_no = attributes[:'payee_payer_acct_no']
      end

      if attributes.key?(:'payee_payer_bank_code')
        self.payee_payer_bank_code = attributes[:'payee_payer_bank_code']
      end

      if attributes.key?(:'check_account')
        self.check_account = attributes[:'check_account']
      else
        self.check_account = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'source_transaction')
        self.source_transaction = attributes[:'source_transaction']
      end

      if attributes.key?(:'target_transaction')
        self.target_transaction = attributes[:'target_transaction']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @value_date.nil?
        invalid_properties.push('invalid value for "value_date", value_date cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @check_account.nil?
        invalid_properties.push('invalid value for "check_account", check_account cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @value_date.nil?
      return false if @amount.nil?
      return false if @check_account.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('Integer', [100, 200, 300, 400])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Integer', [100, 200, 300, 400])
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
          value_date == o.value_date &&
          entry_date == o.entry_date &&
          paymt_purpose == o.paymt_purpose &&
          amount == o.amount &&
          payee_payer_name == o.payee_payer_name &&
          payee_payer_acct_no == o.payee_payer_acct_no &&
          payee_payer_bank_code == o.payee_payer_bank_code &&
          check_account == o.check_account &&
          status == o.status &&
          source_transaction == o.source_transaction &&
          target_transaction == o.target_transaction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, create, update, sev_client, value_date, entry_date, paymt_purpose, amount, payee_payer_name, payee_payer_acct_no, payee_payer_bank_code, check_account, status, source_transaction, target_transaction].hash
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
