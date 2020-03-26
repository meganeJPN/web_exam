require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") do
  get = cgi['goyaNotSelf']
  "<html>
    <body>
      <p>譲渡先が自家消費ではないもののゴーヤの情報</p>
      文字列:#{get}
    </body>
  <html>"
end
