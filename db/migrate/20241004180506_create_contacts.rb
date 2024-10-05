# This migration creates the 'contacts' table with the necessary columns
# such as first name, last name, email, phone number, and other details.
class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.text :notes
      t.timestamps
    end
  end
end
