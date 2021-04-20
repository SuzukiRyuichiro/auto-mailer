def mailer(receiver, body)
  require 'sendgrid-ruby'
  include SendGrid

  from = Email.new(email: 'dragon.aka.scooter@gmail.com')
  to = Email.new(email: receiver)
  subject = 'Testing from SendGrid'
  content = Content.new(type: 'text/plain', value: body)
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers
end
