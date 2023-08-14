class TodosController < ApplicationController

  def index
    @todo = Todolist.all
  end

  def show
    @todo = Todolist.find(params[:id])
  end

  def new
    @todo = Todolist.new
  end

  def create
    @todo = Todolist.new(todo_params)
    if @todo.save
      flash[:success] = "Todo was successfully created"
      redirect_to todos_url
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @todo = Todolist.find(params[:id])
  end

  def update
    @todo = Todolist.find(params[:id])
      if @todo.update(todo_params)
        flash[:success] = "Todo was successfully updated"
        redirect_to todos_url
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  def destroy
    @todo = Todolist.find(params[:id])
    if @todo.destroy
      flash[:success] = 'Todo was successfully deleted.'
      redirect_to todos_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to todos_url
    end
  end
  def todo_params
    params.require(:todo).permit(:title, :isCompleted)
  end
end
