MultiDatabase::Engine.routes.draw do
	resources :connections

	resources :mysql_databases
	resources :sqlite_databases
end
