class Contact < MailForm::Base
  attribute :email
  attribute :subject, :validate => true
  attribute :message, :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => %("#{subject}"),
      :to => ENV["gmail_email"],
      :from => %(<#{email}>)
    }
  end
end
