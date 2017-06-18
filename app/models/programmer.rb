class Programmer < ActiveRecord::Base
    
    def self.attribute_to_s(attribute)
        attribute.split("_").collect(&:capitalize).join(" ")
    end
    
    def profile_attributes
        self.attributes.select do |attribute, value|
            attribute == "home_country" || attribute == "quote" || attribute == "claim_to_fame"
        end
    end
end
