class SessionsController < ApplicationController

  def create
    person = User.find_by(username: params[:username])
    session[:user_id] = person.id
    render json: person
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
end
