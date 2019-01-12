class ModelMailer < ApplicationMailer
  default from: 'charryef@gmail.com'

  def new_record_notification(record)
    @record = record
    mail to: "charryef@gmail.com", subject: "Success! You did it!"
  end
end
