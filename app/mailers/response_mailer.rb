class ResponseMailer < ActionMailer::Base
  default from: 'response@grapevine.im'

  def send_response(email, question, answer)
    @answer = answer
    @question = question
    mail :to => email, :subject => "You've received a response from grapevine.im"
  end
end

