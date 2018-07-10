class LoginController < ApplicationController
  def rootview
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    #if @user.save
    #  flash[:notice] = "Successful Sign up!"
    #  flash[:color] = "valid"
    #else
    #  flash [:notice] = "Something has gone wrong"
    #  flash [:color] = "invalid"
    #end
render "rootview"
end
end
