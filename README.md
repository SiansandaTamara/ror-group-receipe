![](https://img.shields.io/badge/Microverse-blueviolet)

#  Recipe app

###  The Recipe app keeps track of all your recipes, ingredients, and inventory. 

[livelink](unavailable)

This README documents steps necessary to get the application up and running.


* Ruby version
  - 3.1.2
* PSQL version
  - PostgreSQL 14.0

* System dependencies
  - See [Dependencies](./Gemfile) gem file

* Configuration
  - Install ruby  - [Installation guides](https://www.ruby-lang.org/en/documentation/installation/)
  - install PostgreSQL - [Installation guides](https://www.postgresql.org/download/linux/)
  - install libpqdev ``` sudo apt install libpq-dev  ``` for linux debian users
  - Make sure your Postgresql is running. If not, start the service by typing ```sudo service postgresql start``` in your terminal (for linux debian users)

* Installation 
  - ```git clone``` this [repo](https://github.com/mandelatuks/Recipe-app)
  - Run:
    - ```cd Recipe-app```
    - ```bundle install```
  
* Database creation
  - Run
       - ```rake db:create```

* Tests
  - Run (*ensure your postgreSQL is running as well*)
      - Integrations
        - **Method 1:** ```bundle exec rspec test/integration/ ```
        > if fails, try
        - **Method 2:**  ```rspec test/integration/```

* Run project
  - ```rails db:migrate:reset db:seed``` then
  - Run ```rails s``` and visit [http://localhost:3000/](http://localhost:3000/) in your browser!

<!-- * Database initialization -->

<!-- * How to run the test suite -->

<!-- * Services (job queues, cache servers, search engines, etc.) -->

<!-- * Deployment instructions -->
## Authors

👤 **Tamara Siansanda**

- GitHub: [@SiansandaTamara](https://github.com/SiansandaTamara)
- Twitter: [@twitterhandle](https://twitter.com/TamaraSiansanda)


👤 **Haji Bamsi**

- GitHub: [@Bamsi](https://github.com/bamsi)
- Twitter: [@Bamsi](https://twitter.com/bamsi)
- LinkedIn: [@bamsi](https://linkedin.com/in/bamsi)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/SiansandaTamara/rails-blog-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.