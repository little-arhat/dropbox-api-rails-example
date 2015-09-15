class DashboardController < ApplicationController

  def show
  end

  def upload
    uploaded_io = params[:song]
    dropbox.upload(uploaded_io.original_filename, uploaded_io.tempfile)
    redirect_to :action => "show"
  end

end
