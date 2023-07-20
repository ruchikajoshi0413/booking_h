class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :phone_number
      t.integer :date_of_birth
      t.string :city
      t.string :address
      t.string :street
      t.string :apartment
      t.string :floor
      t.string :country
      t.string :state
      t.integer :postal_code

      t.timestamps
    end
  end
end
