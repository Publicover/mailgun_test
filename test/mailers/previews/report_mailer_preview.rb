# Preview all emails at http://localhost:3000/rails/mailers/report_mailer
class ReportMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/report_mailer/view_single
  def view_single
    ReportMailer.view_single
  end

  # Preview this email at http://localhost:3000/rails/mailers/report_mailer/send_report
  def send_report
    ReportMailer.send_report
  end

end
