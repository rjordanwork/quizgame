use Rack::Static,
  :urls => ["/images", "/js", "/img", "/icon", "/fonts", "/data", "/audio"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('www/index.html', File::RDONLY)
  ]
}