# Weddingvenue(API)

This project is a backend Api build with Rails for my project Weddingvenue that will allow user to sign in and explor weddinvenues avariable and apply for it.

## Project features

- sign in/up
- see wedding venues
- add venues to your favourite

## Built With

- Ruby v2.7.1
- Ruby on Rails v6.0.2

## Live vesion

(you can test it with an Api client like Postman)
[click here](https://mighty-headland-70407.herokuapp.com/)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.7.1

Rails: 6.0.2

Postgres: >=9.5

an API client like postman

### Clone the Project

```
$ git clone https://github.com/rida-elbahtouri/WeddingVenues.git

$ cd WeddingVenues
```

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Base URL : https://mighty-headland-70407.herokuapp.com

### Create Users

Post your username with the param username
To: BaseUrl/users

- it will return the User Token (that change after each login)

### Log in with username and password

Post your username with the param username
and password with param password
To: BaseUrl/logs

- it will return the User token

### before favourite and add to favourie

send a header of

- Authorization:token

### add to favourite

Post the the weddingvenue_id to BaseUrl/favourites

- it will return "we added to your favourites"

### see all Weddingvenues

Get BaseUrl/weddingvenues

- it will return all the weddingvenue

### get details of a weddingvenue

Get BaseUrl/weddingvenues/:id

- it will return a details about selected venue

# Testing

Run this command

```
rspec
```

## Developer

👤 **Rida Elbahtouri**

- [Github](https://github.com/rida-elbahtouri)
- [Twitter](https://twitter.com/RElbahtouri)
- [Linkedin](https://www.linkedin.com/in/rida-elbahtouri/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the <a href="https://github.com/rida-elbahtouri/WeddingVenues/issues" target="_blank">issues page</a>.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- <a href="https://www.theodinproject.com/" target="_blank">The Odin Project</a>
- <a href="https://guides.rubyonrails.org/" target="_blank">Rails Guides</a>
