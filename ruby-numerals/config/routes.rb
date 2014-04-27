Rails.application.routes.draw do
  root to: "convert#to_english"
  get "to_english", to: 'convert#to_english'
  post "to_english", to: 'convert#to_english'

end
