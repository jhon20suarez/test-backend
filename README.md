# Test WebAPP

# Required software

* NodeJS 

* Ruby v.2.6.6 min

* Postgresql v.9.6 min.


## Clone Repository
Create Folder and clone el project `test-backend`
```bash
git clone https://github.com/jhon20suarez/test-backend.git
```
... a enter the folder.

## Installation

To install on the default Rails stack:
```bash
rails install
```
# Configure Database
Configure user, password, host and port with your Postgresql
```bash
/config/database.yml
```
# Create Database
In your terminal
```bash
rails db:create
rails db:migrate
rails db:seed
```

All ready!!!
```bash
rails s
```

