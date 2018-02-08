class SessionsController < ApplicationController

 def new

  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user 
  		log_in user
  		flash[:success] = "Bienvenue sur ce site de ouf"
  		redirect_to user
  	else 
  		flash.now[:danger] = "Désolé votre Id et votre nom ne correspondent pas "
  		render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to root_url
  end



end
