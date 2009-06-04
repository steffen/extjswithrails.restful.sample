class UsersController < ApplicationController

  def index
    @users = User.all

    render :json => { :data => @users }
  end

  def create
    @user = User.new(ActiveSupport::JSON.decode(params[:data]))

    if @user.save
      render :json => { :success => true, :message => "Created new User #{@user.id}", :data => @user }
    else
      render :json => { :message => "Failed to create user"}
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(ActiveSupport::JSON.decode(params[:data]))
      render :json => { :success => true, :message => "Updated User #{@user.id}", :data => @user }
    else
      render :json => { :message => "Failed to update User"}
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      render :json => { :success => true, :message => "Destroyed User #{@user.id}" }
    else
      render :json => { :message => "Failed to destroy User" }
    end
  end

end
