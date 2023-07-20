module BxBlockProfile
    class Profile < ApplicationRecord
        def self.ransackable_attributes(auth_object = nil)
            ["address", "apartment", "city", "country", "created_at", "date_of_birth", "floor", "id", "name", "phone_number", "postal_code", "state", "street", "updated_at"]
        end
        def self.ransackable_associations(auth_object = nil)
            []
          end
    end
end