# This controller manages the actions related to Contact records.
# It allows users to create, edit, update, delete, and search contacts.
class ContactsController < ApplicationController
  before_action :set_contact, except: %i[index new create]

  def index
    @contacts = Contact.search(filtering_params).paginate(page: params[:page], per_page: 10)
    @total_records = @contacts.count if params[:search].present?
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Contact Created Successfully'
    else
      redirect_to new_contact_path(@contact), status: :unprocessable_entity,
                                              alert: @contact.errors.full_messages.to_sentence
    end
  end

  def show; end

  def edit; end

  def update
    if @contact.update(contact_params)
      redirect_to contacts_path, notice: 'Contact Updated Successfully'
    else
      redirect_to edit_contact_path(@contact), status: :unprocessable_entity,
                                               alert: @contact.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @contact.destroy
      redirect_to contacts_path, notice: 'Contact Deleted Successfully'
    else
      redirect_to root_path, alert: @contact.errors.full_messages.to_sentence
    end
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def filtering_params
    params.permit(
      :search,
      :commit,
      :page
    )
  end

  def contact_params
    params.require(:contact).permit(
      :first_name,
      :last_name,
      :email,
      :phone_number,
      :address,
      :notes
    )
  end
end
