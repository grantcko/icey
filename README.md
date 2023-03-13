# 🥶 ICEY

Icey is an online marketplace focused on renting out expensive jewelry to people who want to show out without having to buy a piece outright.

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/121933082/224597809-c991ce5b-6fd1-41cd-8ff6-31f5200c0b2d.png">
<img width="816" alt="image" src="https://user-images.githubusercontent.com/121933082/224597911-d726251c-4e31-4fbe-a4b4-6c6e90c55d21.png">


<br>
App home: https://icey-marketplace.herokuapp.com/
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements
My teamates and I learned the skills I needed to create this project at Le Wagon in Tokyo, Japan.

## Team Members
- [Taka Nakagami](https://www.linkedin.com/in/takaaki-nakagami-a5866154/)
- [Anik Dutta](https://www.linkedin.com/in/anikdutta/)
- [Tan Rungthip](https://www.linkedin.com/in/rungthip-c-24937b230/)
- [Grant Hall](https://www.linkedin.com/in/grant-hall-38584a16b/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
