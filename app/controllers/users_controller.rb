class UsersController < ApplicationController

	def new
    @user = User.new
    @users = User.all
	end

  def create
    @user = User.create(params[:user])
    if @user.errors.empty?
      redirect_to @user
    else
      @users = User.all
      @errors = @user.errors
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

end
