class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_contact_for_user, except: [:index, :new, :create]

  # GET /contacts
  def index
    @contacts = current_user.contacts.all.order(:last_name, :first_name)
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  def create
    @contact = current_user.contacts.build(contact_params)

    if @contact.save
      redirect_to @contact, notice: 'Contact successfully created!'
    else
      render 'new'
    end
  end

  # GET /contacts/:id
  def show
  end

  # GET /contacts/:id/edit
  def edit
  end

  # PUT /contacts/:id
  def update
    if @contact.update_attributes(contact_params)
      redirect_to @contact, notice: 'Contact successfully updated!'
    else
      render 'edit'
    end
  end

  # GET /contacts/:id/delete
  def delete
  end

  # DELETE /contacts/:id
  def destroy
    @contact.destroy
    redirect_to contacts_path, notice: 'Contact successfully removed!'
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number)
  end

  def find_contact_for_user
    @contact = current_user.contacts.find(params[:id])
  end
end
