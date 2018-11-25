class ApiConstraints
  REGEX = /application\/(?<clientname>\w+)\.(?<identity>\w+)\.(?<version>v(?<versionnum>\d+))/
  
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
	  Rails.logger.info "Accept: #{req.headers['Accept']}"
      Rails.logger.info "Identity: #{REGEX.match(req.headers['Accept'])[:identity]}, Version: #{REGEX.match(req.headers['Accept'])[:version]}"
      @default || REGEX.match(req.headers['Accept'])[:versionnum].to_i=@version #req.headers['Accept'].include?("application/vnd.example.v#{@version}")
  end
end

# ApiConstraints::REGEX.match("application/openflashcards.fbtest.v1")[:version].to_i

