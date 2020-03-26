require 'webrick'
server = WEBrick::HTTPServer.new({
                                     :DocumentRoot => '.',
                                     :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
                                     :Port => '3000',
                                 })
['INT', 'TERM'].each { |signal|
  Signal.trap(signal) { server.shutdown }
}
server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'index.html.erb')
# server.mount('/indicate.cgi',WEBrick::HTTPServlet::CGIHandler,'indicate.rb')
server.mount('/goyaNotSelf.cgi',WEBrick::HTTPServlet::CGIHandler,'goyaNotSelf.rb')
server.mount('/goyaBadQuality.cgi',WEBrick::HTTPServlet::CGIHandler,'goyaBadQuality.rb')
server.start