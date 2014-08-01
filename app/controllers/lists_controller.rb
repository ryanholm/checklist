class ListsController < ApplicationController
  # As a user, I should be able to create multiple to-do items on my to-do list.
  def new
    @list = List.new
  end

  # As a user, I should be able to mark to-do items as complete.
  def show
    @list  = List.find(params[:id)])
    @items = @list.items
  end

  # When a to-do item is marked as complete, it should be deleted from the to-do list.
  def destroy
    @list = List.find(params[:id)])
    @list.destroy
    redirect_to @user
  end

  # As a user, I should be able to create a single to-do list.
  def create
    @list = List.new(list_params)
    @list.user_id = @user.id

    if @list.save
      redirect_to user_list_path(@user, @list), notice: 'List was successfully created.'
    else
      render action: 'new'
    end
  end

  # To-do items should be automatically deleted after 7 days from their creation date.
  def index
    @lists = current_user.lists
  end

end
