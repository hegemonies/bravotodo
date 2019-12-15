class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /todos
  def index
    @todos = current_user.todos.all
  end

  # GET /todos/1
  def show
  end

  # GET /todos/new
  def new
    @todo = current_user.todos.build
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  def create
    @todo = current_user.todos.build(todo_params)

    respond_to do |format|
      if @todo.save
        format.html { redirect_to todos_path, notice: 'Todo was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /todos/1
  def update
    #respond_to do |format|
    #  if @todo.update(todo_params)
    #    format.html { redirect_to todos_path, notice: 'Todo was successfully updated.' }
    #  else
    #    format.html { render :edit }
    #  end
    #end
    @todo = current_user.todos.find(params[:id])
    if @todo.update(todo_params)
      redirect_to todos_path, notice: 'Todo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to todos_url, notice: 'Todo was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:done, :description, :date)
    end
end
