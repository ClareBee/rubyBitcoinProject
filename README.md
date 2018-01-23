# rubyBitcoinProject
A mini-project using Ruby, Sinatra, a Cryptocurrency API and AnyChart

![Logo of the project](./welcome.png)


# Cryptonite: a Basic Cryptocurrency Tracker 
* Features very basic functionality on the back end - ability to add and delete coins 
* Project could be extended to involve more data analysis and CRUD 


## Installing / Getting started

App runs on localhost:4567

```
psql -d coin_tracker -f db/cointracker.sql
ruby seeds.rb to seed the db
psql
\c coin_tracker to connect to db
ruby app.rb to start Sinatra

```

## Developing
API used: https://coinmarketcap.com/ (no API key needed)

### Built With
Ruby, Sinatra, postgreSQL, AnyChart, hashie, React:Client


![image of coin data](./bitcoins.png)
![image of graph](./graph.png)
![image of new coins](./newcoins.png)
![image of coin form](./addcoins.png)
