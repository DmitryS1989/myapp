module DefaultUrlOptions

  # Including this file sets the default url options. This is useful for mailers or background jobs

  def default_url_options
    {
      :host => 'smtp.gmail.com',
      :port => 587
    }
  end

  private

  def host
    # Your logic for figuring out what the hostname should be
  end

  def port
    # Your logic for figuring out what the port should be
  end

end
