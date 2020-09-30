class MissingPersonMailer < ActionMailer::Base 
  def missing_person_created(user)
    mail(
      to: user.email, 
      from: "services@gmail.com", 
      subject: "Missing person created", 
      body: "Record of missing person created"
    )
  end
end