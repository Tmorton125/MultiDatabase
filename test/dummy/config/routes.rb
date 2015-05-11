Rails.application.routes.draw do

  mount MultiDatabase::Engine => "/multi_database"
end
