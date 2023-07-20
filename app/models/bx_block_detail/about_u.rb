module BxBlockDetail 
  class AboutU < ApplicationRecord
      # RANSACKABLE_ATTRIBUTES = %w[].freeze

      # Define the ransackable_attributes class method
      # def self.ransackable_attributes(auth_object = nil)
      #   if auth_object.nil?
      #     RANSACKABLE_ATTRIBUTES
      #   else
      #     # If you have different levels of access, you can implement logic here
      #     # to include or exclude certain attributes based on the user's role.
      #     []
      #   end
      # end
      def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "title", "updated_at"]
      end
  end
end