require 'date'
require 'time'

module OpenapiClient
  # Contact model
  class ModelContactResponse
    # The contact id
    attr_accessor :id

    # The contact object name
    attr_accessor :object_name

    # Date of contact creation
    attr_accessor :create

    # Date of last contact update
    attr_accessor :update

    # The organization name.<br> Be aware that the type of contact will depend on this attribute.<br> If it holds a value, the contact will be regarded as an organization.
    attr_accessor :name

    # Defines the status of the contact. 100 <-> Lead - 500 <-> Pending - 1000 <-> Active.
    attr_accessor :status

    # The customer number
    attr_accessor :customer_number

    attr_accessor :parent

    # The <b>first</b> name of the contact.<br> Yeah... not quite right in literally every way. We know.<br> Not to be used for organizations.
    attr_accessor :surename

    # The last name of the contact.<br> Not to be used for organizations.
    attr_accessor :familyname

    # A non-academic title for the contact. Not to be used for organizations.
    attr_accessor :titel

    attr_accessor :category

    # A description for the contact.
    attr_accessor :description

    # A academic title for the contact. Not to be used for organizations.
    attr_accessor :academic_title

    # Gender of the contact.<br> Not to be used for organizations.
    attr_accessor :gender

    attr_accessor :sev_client

    # Second name of the contact.<br> Not to be used for organizations.
    attr_accessor :name2

    # Birthday of the contact.<br> Not to be used for organizations.
    attr_accessor :birthday

    # Vat number of the contact.
    attr_accessor :vat_number

    # Bank account number (IBAN) of the contact.
    attr_accessor :bank_account

    # Bank number of the bank used by the contact.
    attr_accessor :bank_number

    # Absolute time in days which the contact has to pay his invoices and subsequently get a cashback.
    attr_accessor :default_cashback_time

    # Percentage of the invoice sum the contact gets back if he paid invoices in time.
    attr_accessor :default_cashback_percent

    # The payment goal in days which is set for every invoice of the contact.
    attr_accessor :default_time_to_pay

    # The tax number of the contact.
    attr_accessor :tax_number

    # The tax office of the contact (only for greek customers).
    attr_accessor :tax_office

    # Defines if the contact is freed from paying vat.
    attr_accessor :exempt_vat

    # The default discount the contact gets for every invoice.<br> Depending on defaultDiscountPercentage attribute, in percent or absolute value.
    attr_accessor :default_discount_amount

    # Defines if the discount is a percentage (true) or an absolute value (false).
    attr_accessor :default_discount_percentage

    # Buyer reference of the contact.
    attr_accessor :buyer_reference

    # Defines whether the contact is a government agency (true) or not (false).
    attr_accessor :government_agency

    # Additional information stored for the contact.
    attr_accessor :additional_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object_name' => :'objectName',
        :'create' => :'create',
        :'update' => :'update',
        :'name' => :'name',
        :'status' => :'status',
        :'customer_number' => :'customerNumber',
        :'parent' => :'parent',
        :'surename' => :'surename',
        :'familyname' => :'familyname',
        :'titel' => :'titel',
        :'category' => :'category',
        :'description' => :'description',
        :'academic_title' => :'academicTitle',
        :'gender' => :'gender',
        :'sev_client' => :'sevClient',
        :'name2' => :'name2',
        :'birthday' => :'birthday',
        :'vat_number' => :'vatNumber',
        :'bank_account' => :'bankAccount',
        :'bank_number' => :'bankNumber',
        :'default_cashback_time' => :'defaultCashbackTime',
        :'default_cashback_percent' => :'defaultCashbackPercent',
        :'default_time_to_pay' => :'defaultTimeToPay',
        :'tax_number' => :'taxNumber',
        :'tax_office' => :'taxOffice',
        :'exempt_vat' => :'exemptVat',
        :'default_discount_amount' => :'defaultDiscountAmount',
        :'default_discount_percentage' => :'defaultDiscountPercentage',
        :'buyer_reference' => :'buyerReference',
        :'government_agency' => :'governmentAgency',
        :'additional_information' => :'additionalInformation'
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
        :'name' => :'String',
        :'status' => :'String',
        :'customer_number' => :'String',
        :'parent' => :'ModelContactResponseParent',
        :'surename' => :'String',
        :'familyname' => :'String',
        :'titel' => :'String',
        :'category' => :'ModelContactResponseCategory',
        :'description' => :'String',
        :'academic_title' => :'String',
        :'gender' => :'String',
        :'sev_client' => :'ModelContactResponseSevClient',
        :'name2' => :'String',
        :'birthday' => :'Date',
        :'vat_number' => :'String',
        :'bank_account' => :'String',
        :'bank_number' => :'String',
        :'default_cashback_time' => :'String',
        :'default_cashback_percent' => :'Float',
        :'default_time_to_pay' => :'String',
        :'tax_number' => :'String',
        :'tax_office' => :'String',
        :'exempt_vat' => :'String',
        :'default_discount_amount' => :'Float',
        :'default_discount_percentage' => :'String',
        :'buyer_reference' => :'String',
        :'government_agency' => :'String',
        :'additional_information' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelContactResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelContactResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'customer_number')
        self.customer_number = attributes[:'customer_number']
      end

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'surename')
        self.surename = attributes[:'surename']
      end

      if attributes.key?(:'familyname')
        self.familyname = attributes[:'familyname']
      end

      if attributes.key?(:'titel')
        self.titel = attributes[:'titel']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'academic_title')
        self.academic_title = attributes[:'academic_title']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'sev_client')
        self.sev_client = attributes[:'sev_client']
      end

      if attributes.key?(:'name2')
        self.name2 = attributes[:'name2']
      end

      if attributes.key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.key?(:'vat_number')
        self.vat_number = attributes[:'vat_number']
      end

      if attributes.key?(:'bank_account')
        self.bank_account = attributes[:'bank_account']
      end

      if attributes.key?(:'bank_number')
        self.bank_number = attributes[:'bank_number']
      end

      if attributes.key?(:'default_cashback_time')
        self.default_cashback_time = attributes[:'default_cashback_time']
      end

      if attributes.key?(:'default_cashback_percent')
        self.default_cashback_percent = attributes[:'default_cashback_percent']
      end

      if attributes.key?(:'default_time_to_pay')
        self.default_time_to_pay = attributes[:'default_time_to_pay']
      end

      if attributes.key?(:'tax_number')
        self.tax_number = attributes[:'tax_number']
      end

      if attributes.key?(:'tax_office')
        self.tax_office = attributes[:'tax_office']
      end

      if attributes.key?(:'exempt_vat')
        self.exempt_vat = attributes[:'exempt_vat']
      end

      if attributes.key?(:'default_discount_amount')
        self.default_discount_amount = attributes[:'default_discount_amount']
      end

      if attributes.key?(:'default_discount_percentage')
        self.default_discount_percentage = attributes[:'default_discount_percentage']
      end

      if attributes.key?(:'buyer_reference')
        self.buyer_reference = attributes[:'buyer_reference']
      end

      if attributes.key?(:'government_agency')
        self.government_agency = attributes[:'government_agency']
      end

      if attributes.key?(:'additional_information')
        self.additional_information = attributes[:'additional_information']
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
          name == o.name &&
          status == o.status &&
          customer_number == o.customer_number &&
          parent == o.parent &&
          surename == o.surename &&
          familyname == o.familyname &&
          titel == o.titel &&
          category == o.category &&
          description == o.description &&
          academic_title == o.academic_title &&
          gender == o.gender &&
          sev_client == o.sev_client &&
          name2 == o.name2 &&
          birthday == o.birthday &&
          vat_number == o.vat_number &&
          bank_account == o.bank_account &&
          bank_number == o.bank_number &&
          default_cashback_time == o.default_cashback_time &&
          default_cashback_percent == o.default_cashback_percent &&
          default_time_to_pay == o.default_time_to_pay &&
          tax_number == o.tax_number &&
          tax_office == o.tax_office &&
          exempt_vat == o.exempt_vat &&
          default_discount_amount == o.default_discount_amount &&
          default_discount_percentage == o.default_discount_percentage &&
          buyer_reference == o.buyer_reference &&
          government_agency == o.government_agency &&
          additional_information == o.additional_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, create, update, name, status, customer_number, parent, surename, familyname, titel, category, description, academic_title, gender, sev_client, name2, birthday, vat_number, bank_account, bank_number, default_cashback_time, default_cashback_percent, default_time_to_pay, tax_number, tax_office, exempt_vat, default_discount_amount, default_discount_percentage, buyer_reference, government_agency, additional_information].hash
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
