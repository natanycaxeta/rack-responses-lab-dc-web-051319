class Application

  def call(env)
    resp = Rack::Response.new
    case Time.now.hour
    when 4..11 then resp.write "Good Morning\n"
    else
    resp.write "Good Afternoon\n"
    end
    resp.finish
  end
  
end
