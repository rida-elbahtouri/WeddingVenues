Rails.application.config.middleware.insert_before 0, Rack::Cors do 
    allow do
      origins 'https://mighty-headland-70407.herokuapp.com'
    
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
    allow do
        origins 'http://127.0.0.1:3000'
      
        resource '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head],
          credentials: true
      end
  end