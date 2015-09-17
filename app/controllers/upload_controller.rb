class UploadController < ApplicationController

  before_filter :authenticate_dropbox

  def authenticate_dropbox
    redirect_to dropbox_path if dropbox.nil?
  end

  def dropbox
    if dropbox_enabled?
      Dropbox::API::Client.new({
        :token => dropbox_token,
        :secret => dropbox_secret
      })
    end
  end
  helper_method :dropbox

  def dropbox_enabled?
    dropbox_token && dropbox_secret
  end

  def dropbox_token
    session[:dropbox_token]
  end

  def dropbox_secret
    session[:dropbox_secret]
  end

  def show
  end

  def upload
    uploaded_io = params[:song]
    file = nil
    begin
      file = dropbox.find(uploaded_io.original_filename)
    rescue # oy-oy-oy! to catch 404
      file = dropbox.upload(uploaded_io.original_filename, uploaded_io.tempfile)
    end
    puts file
    url = file.share_url(:short_url => false).url
    url = url.sub('www.dropbox.com', 'dl.dropboxusercontent.com').sub('?dl=0', '?raw=1')
    if Song.where(:url => url)
      s = Song.create :title => uploaded_io.original_filename, :url => url
      s.save!
    end
    redirect_to :controller => "dashboard", :action => "show"
  end

end
