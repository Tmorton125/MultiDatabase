{
  engine:     "MultiDatabase::Engine",
  asset_folder: 'multi_database',
  route_as: 'multidatabase',
  navigation_title: "Database Management",
  links: [ { title: "Connection Management", url: "multidatabase.connections_path", order: 1},
           { title: "MySQL Databases", url: "multidatabase.mysql_databases_path", order: 2},
           { title: "SQLite3 Databases", url: "multidatabase.sqlite_databases_path", order: 3} ]

}