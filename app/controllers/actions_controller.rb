class ActionsController < ApplicationController
  def index
    @actions = Action.all
  end

  def show
    @action = Action.find(params[:id])
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.new
    @action.name = params[:name]

    if @action.save
      redirect_to "/actions", :notice => "Action created successfully."
    else
      render 'new'
    end
  end

  def edit
    @action = Action.find(params[:id])
  end

  def update
    @action = Action.find(params[:id])

    @action.name = params[:name]

    if @action.save
      redirect_to "/actions", :notice => "Action updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @action = Action.find(params[:id])

    @action.destroy

    redirect_to "/actions", :notice => "Action deleted."
  end
end
