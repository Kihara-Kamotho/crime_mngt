class ReportMailer < ActionMailer::Base 
  def report_created(user)
      mail(
        to: user.email,
        from: "services@gmail.com",
        subject: "Report created",
        body: "You have created a new report"
      )
  end
end