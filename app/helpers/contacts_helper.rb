module ContactsHelper
  def fullname(contact)
    "#{contact.first_name} #{contact.last_name}".strip
  end
end
