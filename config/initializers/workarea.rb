Workarea.configure do |config|
  # Basic site info
  config.site_name = 'My Store'

  config.host = {
    'test' => 'www.example.com',
    'development' => 'localhost',
    'production' => 'www.my-store.com' # TODO
  }[Rails.env]
end
