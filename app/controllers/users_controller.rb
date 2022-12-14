class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map {|user| user.to_pleasant_string}.join("\n")
  end

  def create
    id = params[:id]
    name = params[:name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(name: name, email: email, password: password)
    response_text = "Hey new user is created with the id #{new_user.id}"
    render plain: response_text
  end

  def login
    email = params[:email]
    password = params[:password]
    render plain: User.where(email: email, password: password).exists?
  end

end
