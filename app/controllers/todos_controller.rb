class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.jobapp_id = params[:jobapp_id]
    @todo.due_at = params[:due_at]
    @todo.action_id = params[:action_id]
    @todo.contact_id = params[:contact_id]

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

    redirect_to "/todos", :notice => "Todo deleted."
  end
end
