class ListsController < ApplicationController
  
  # As a user, I should be able to sign up for a free account by providing a user name, password and email address.
  # As a user, I should be able to sign in and out of Blocitoff.

  # As a user, I should be able to create multiple to-do items on my to-do list.
  # As a user, I should be able to mark to-do items as complete.
  # As a user, I should be able to see how many days are left before a to-do item is automatically deleted.
  # When a to-do item is marked as complete, it should be deleted from the to-do list.
  def new
    @list = List.new
  end


  # As a user, I should be able to create a single to-do list.
  # I'm guessing this is what needs to happen
  def create
    @lists = Lists.new(lists_params)
    authorize @lists
    if @lists.update_attributes(list_params)
      redirect_to @list, notice: "todo list was saved successfully."
    else
      flash[:error] = "Error creating todo list. Please try again."
      render :new
    end
  end

  # To-do items should be automatically deleted after 7 days from their creation date.
  def index
    @lists = lists.visible_to(current_user).where("lists.created_at > ?",7.days.ago).paginate(page: params[:page], per_page: 10)
    authorize @lists 
  end

end
