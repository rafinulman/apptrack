class JobappsController < ApplicationController
  def index
    @jobapps = Jobapp.all
  end

  def show
    @jobapp = Jobapp.find(params[:id])
  end

  def new
    @jobapp = Jobapp.new
  end

  def create
    @jobapp = Jobapp.new
    @jobapp.position = params[:position]
    @jobapp.user_id = params[:user_id]
    @jobapp.company_id = params[:company_id]
    @jobapp.interview_on = params[:interview_on]
    @jobapp.notes = params[:notes]

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
    @jobapp.user_id = params[:user_id]
    @jobapp.company_id = params[:company_id]
    @jobapp.interview_on = params[:interview_on]
    @jobapp.notes = params[:notes]

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
