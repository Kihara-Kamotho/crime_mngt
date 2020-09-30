class StolenPropertyMailer < ActionMailer::Base 
  def stolen_property_created(user)
    mail(
      to: user.email,
      from: "services@gmail.com",
      subject: "Stolen Property Record created",
      body: "You have created record of stolen property"
    )
  end
end