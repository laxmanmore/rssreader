* Ruby version used: 2.5.1
* Rails version used: 5.2.1
* Database used: SQLite3

To start the rssreader demo app

1. clone this repo
2. bundle install
3. rake db:create
4. rake db:migrate
5. rake db:seed
6. rake sync:feeds
7. rails s
8. Visit http://localhost:3000/
