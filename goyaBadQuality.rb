require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") do
  get = cgi['goyaBadQuality']
  "<html>
    <body>
      <p>品質が悪いゴーヤの情報</p>
      文字列:#{get}
    </body>
  <html>"
end
