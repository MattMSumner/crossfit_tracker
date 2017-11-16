require "./app"

server = HTTP::Server.new("0.0.0.0", 8080, [
  LuckyWeb::HttpMethodOverrideHandler.new,
  HTTP::LogHandler.new,
  LuckyWeb::ErrorHandler.new(action: Errors::Show),
  LuckyWeb::RouteHandler.new,
  HTTP::StaticFileHandler.new("./public", false),
])

puts "Listening on http://0.0.0.0:8080..."

server.listen
