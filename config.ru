use Rack::ShowExceptions

run -> (env) {
  [ 200, {"Content-Type" => "text/plain"}, [
    "Request",
      Rack::Request.new(env).inspect,
    "Env",
      env.inspect
  ]]
}
