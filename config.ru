app = Rack::Builder.app do
  use Rack::Static, urls: '/', root: 'public', index: 'index.html'
  use Rack::Chunked
  run lambda { |env| [200, {'Content-Type' => 'text/html'}, File.open('public/index.html', File::RDONLY)] }
end

run app
