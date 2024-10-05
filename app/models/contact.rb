# The Contact model represents a person or entity in the contact management system.
# It includes attributes such as first name, last name, phone number, email, address, and more.
# Users can create, edit, delete, and search for contacts.
class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address' }
  validates :phone_number, presence: { message: "Phone number can't be blank" }, length: { is: 10, message: 'must be exactly 10 digits long' },
                           uniqueness: { message: 'This phone number is already taken' }

  def self.search(params)
    query = all # Start with all contacts

    # Build query conditionally based on provided parameters
    if params[:search].present?
      keyword = "%#{params[:search]}%"
      query = query.where('first_name ILIKE :search OR last_name ILIKE :search OR phone_number ILIKE :search OR email ILIKE :search',
                          search: keyword)
    end

    query # Return the final query result
  end
end
