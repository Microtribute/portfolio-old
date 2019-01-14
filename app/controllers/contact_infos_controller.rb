class ContactInfosController < ApplicationController

  skip_authorization_check
  skip_before_action :authenticate_user!

  def create
  end

  def sendmail
  	contact_info = params[:contact_info]
  	render text: {result: UserMailer.contact_me(contact_info).deliver}
  end

end
