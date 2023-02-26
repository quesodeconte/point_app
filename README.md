# Installation
## Prerequisites
- ruby 3.2.0
  
## Clone the Repo
```bash
git clone https://github.com/quesodeconte/point_app.git
```
```bash
cd point_app
```

## Install Dependencies
```bash
bundle install
```

## Run Database Migrations
```bash
rake db:drop db:create db:migrate
```

## Run Database Seeding
```bash
rake db:seed
```
# Start the App
## Run Rails Server
```bash
rails s
```

## Navigate to the Login Page
http://localhost:3000/admin