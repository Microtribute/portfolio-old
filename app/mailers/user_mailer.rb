class UserMailer < ActionMailer::Base
  default from: Rails.application.config.settings.mail.from
  layout 'emails/email'

  def welcome_email(user)
    return false unless load_user(user).present?
    mail to: @user.email, subject: I18n.t('emails.welcome.subject')
  end

  def contact_me(contact_info)
    @contact_info = contact_info
    mail to: Rails.application.config.settings.contact.email, subject: I18n.t('emails.contact_me.subject'), from: @contact_info[:email]
  end

  protected

  def load_user(user)
    @user = user.is_a?(User) ? user : User.find(user)
  end


end
