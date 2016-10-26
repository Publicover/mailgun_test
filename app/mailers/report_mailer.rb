class ReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.view_single.subject
  #
  def view_single
    @greeting = "Hi"

    mail to: "jameslpublicover@gmail.com", subject: "hold my beer!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.send_report.subject
  #
  def send_report
    @greeting = "Hi"

    mail to: "to@example.org", subject: "Daily report for #{Time.now}"
  end
end