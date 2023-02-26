# Installation
## Prerequisites
- ruby 3.2.0
- git 2.32.1
- sqlite 3.37.0
- VSCode (Run as Admin)
  
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

## Drop Existing Database (Optional - Only if already exists)
```bash
rake db:drop
```
## Run Database Migrations
```bash
rake db:create db:migrate
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