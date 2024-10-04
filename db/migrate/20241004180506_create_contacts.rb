class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :company
      t.string :job_title
      t.date :birthday
      t.text :notes
      t.timestamps
    end
  end
end
