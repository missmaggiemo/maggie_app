class MyMailer < ActionMailer::Base
  default from: "missmaggies.website@gmail.com"
  default to: "margaret.m.moreno@gmail.com"
  
  def visitor_email(message)
    @content = message.content
    @email = message.email
    @name = message.name
    mail(subject: "Email from #{@name}!")
  end
  
end
