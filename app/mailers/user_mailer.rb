class UserMailer < Devise::Mailer
  include DefaultUrlOptions
  helper :application
  include Devise::Controllers::UrlHelpers
  default template_path: 'users/mailer'
end
