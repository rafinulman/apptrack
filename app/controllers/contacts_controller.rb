class ContactsController < ApplicationController
  before_action :authenticate_user!
  def index
    @jobapps = Jobapp.where(:user_id => current_user.id)
    @contacts = Contact.where(:jobapp_id=>@jobapps)
    jobapps = @jobapps.pluck(:company_id)
    @companies = Company.where(:id=>jobapps)
  end

  def share
    @contact = Contact.find_by(:id=>params[:contact_id])
    render 'share'
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    @jobapps = current_user.jobapp
    @companies = Company.where(:id => @jobapps.pluck(:company_id))
  end

  def create
    @contact = Contact.new
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.linkedin_url = params[:linkedin_url]
    jobapps = Jobapp.where(:user_id => current_user.id)
    jobapp = jobapps.find_by(:company_id => params[:company_id])
    @contact.jobapp_id = jobapp.id
    @contact.notes = params[:notes]

    if @contact.save
      redirect_to "/todos/new", :notice => "Contact created successfully. Want to create a followup?"
    else
      @contact = Contact.new
      @jobapps = Jobapp.where(:user_id => current_user.id)
      @companies = Company.where(:id => @jobapps.pluck(:company_id))
      render 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.linkedin_url = params[:linkedin_url]
    @contact.jobapp_id = params[:jobapp_id]
    @contact.notes = params[:notes]

    if @contact.save
      redirect_to "/contacts", :notice => "Contact updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    @contact.destroy

    redirect_to "/contacts", :notice => "Contact deleted."
  end
end
