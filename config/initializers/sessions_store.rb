# if Rails.env == "production"
#     Rails.application.config.session_store :cookie_store, key: "_homesteadtogether", domain: "jdh-homesteadtogether.herokuapp.com"
# else
#     Rails.application.config.session_store :cookie_store, key: "_homesteadtogether"
# end

if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_Final_Proj', domain: 'frontend_brain'
  else
    Rails.application.config.session_store :cookie_store, key: '_Final_Proj' 
  end