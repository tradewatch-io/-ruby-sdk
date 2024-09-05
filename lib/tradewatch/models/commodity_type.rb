=begin
#tradewatch.io

#Financial market data for Developers

The version of the OpenAPI document: 3.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0-SNAPSHOT

=end

require 'date'
require 'time'

module tradewatch
  class CommodityType
    AGRICULTURAL = "agricultural".freeze
    ENERGY = "energy".freeze
    METAL = "metal".freeze
    ALL = "all".freeze

    def self.all_vars
      @all_vars ||= [AGRICULTURAL, ENERGY, METAL, ALL].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if CommodityType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CommodityType"
    end
  end
end