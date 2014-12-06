class JobappsController < ApplicationController
  before_action :authenticate_user!
  def index
    @jobapps = Jobapp.where(:user_id => current_user)
  end

  def show
    @jobapp = Jobapp.find(params[:id])
    @contacts = Contact.where(:jobapp_id=>@jobapp.id)
    @comapny_wiki = 'http://en.wikipedia.org/w/api.php?format=json&action=query&titles=Main%20Page&prop=revisions&rvprop=content'
  end

  def new
    @jobapp = Jobapp.new
  end

  def create
    @jobapp = Jobapp.new
    @jobapp.position = params[:position]
    @jobapp.user_id = current_user.id
    @jobapp.company_id = params[:company_id]
    @jobapp.interview_on = params[:interview_on]
    @jobapp.note = params[:note]

    if @jobapp.save
      redirect_to "/jobapps", :notice => "Jobapp created successfully."
    else
      render 'new'
    end
  end

  def edit
    @jobapp = Jobapp.find(params[:id])
  end

  def update
    @jobapp = Jobapp.find(params[:id])

    @jobapp.position = params[:position]
    @jobapp.user_id = current_user.id
    @jobapp.company_id = params[:company_id]
    @jobapp.interview_on = params[:interview_on]
    @jobapp.note = params[:note]

    if @jobapp.save
      redirect_to "/jobapps", :notice => "Jobapp updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @jobapp = Jobapp.find(params[:id])

    @jobapp.destroy

    redirect_to "/jobapps", :notice => "Jobapp deleted."
  end
end
