MultiDatabase::Engine.routes.draw do
	resources :connections

	resources :mysql_databases do

		member do
			get 'show_schema'
		end
	end

	resources :sqlite_databases do

		member do
           get 'show_schema'
		end
	end
end
