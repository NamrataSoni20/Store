class ApiConstraints
  def initialize(options)
  @version = options[:version]
  @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.smartapp.v#{@version}")
  end
  end

  #curl -H 'Accept: application/vnd.smartapp.v' http://localhost:3000/api/products  --- write it on console
