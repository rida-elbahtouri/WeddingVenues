if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_weddingvenues', domain: 'https://mighty-headland-70407.herokuapp.com'
  else
    Rails.application.config.session_store :cookie_store, key: '_weddingvenues'
  end