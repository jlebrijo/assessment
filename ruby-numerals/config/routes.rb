Rails.application.routes.draw do

  get "to_english", to: 'convert#to_english'
  post "to_english", to: 'convert#to_english'

end
