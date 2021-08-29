class UserMailer < Devise::Mailer
  include DefaultUrlOptions
  helper :application
  default template_path: 'users/mailer'
end