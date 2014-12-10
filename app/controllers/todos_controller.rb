class TodosController < ApplicationController
  before_action :authenticate_user!
  def index
    @jobapps = Jobapp.where(:user_id=> current_user)
    jobapp_ids = @jobapps.pluck(:id)
    @todos = Todo.where(:jobapp_id => jobapp_ids)
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
    @jobapps = Jobapp.where(:user_id => current_user.id)
    companies = @jobapps.pluck(:company_id)
    @companies = Company.where(:id => companies)

    jobapps = @jobapps.pluck(:id)
    @contacts = Contact.where(:jobapp_id => jobapps)
  end

  def create
    @todo = Todo.new
    @todo.due_at = params[:due_at]
    @todo.action_id = params[:action_id]
    @todo.contact_id = params[:contact_id]
    jobapps = Jobapp.where(:user_id => current_user.id)
    jobapp = jobapps.find_by(:company_id => params[:company_id])
    @todo.jobapp_id = jobapp.id

    if @todo.save
      redirect_to "/todos", :notice => "Todo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])

    @todo.jobapp_id = params[:jobapp_id]
    @todo.due_at = params[:due_at]
    @todo.action_id = params[:action_id]
    @todo.contact_id = params[:contact_id]

    if @todo.save
      redirect_to "/todos", :notice => "Todo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])

    @todo.destroy

    redirect_to "/todos", :notice => "To-do deleted."
  end

  def complete
    @todo = Todo.find(params[:id])

    @todo.destroy

    redirect_to "/todos", :notice => "Task copmlete!"
  end


end
