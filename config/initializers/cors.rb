# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:*'
    resource '*',
      headers: [
        'Access-Token',
        'Token-Type',
        'Client',
        'Uid',
        'Accept',
        'Accept-Language',
        'Content-Language',
        'Content-Type',
      ],
      expose: [
        'Access-Token',
        'Token-Type',
        'Client',
        'Uid',
        'Cache-Control',
        'Content-Language',
        'Content-Length',
        'Content-Type',
        'Expires',
        'Last-Modified',
        'Pragma',
      ],
      methods: [:get, :post, :put, :patch, :delete]
  end
end
