class ReportsController < ApplicationController

  def write_email
  end

  def send_email
    #params[:address]
    ReportMailer.view_single.deliver_now
  end
end
