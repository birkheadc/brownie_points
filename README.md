# Brownie Points

A game for partners where you fight over brownie points by doing favors for each other.

# The Game

Brownie Points is a game for two to play. The game takes place over rounds that last a week. At the end of the week, the winner is chosen semi-randomly based on who has more points; the larger the gap, the higher your chance of winning. Victory is never guarunteed, so every point counts!

The winner recieves a pre-determined Victory Favor from the loser, and then points are rebalanced. Points don't reset entirely, so don't give up on a week just because you don't care about this week's Victory Favor; you'll need those points eventually!

Points are exchanged via Favors. At any point, a player may:
- Ask the other player for a Favor, in exchange for an amount of points.
- Proactively offer the other player a Favor, again for an amount of points.

The receiving player may then counter with a different price, or accept the terms. If a counter-offer is provided, the original player may then accept or decline the transaction.

Once the agreed upon Favor is completed, the recieving player checks it as so, and points are exchanged.

Players may also freely donate their points, possibly to show appreciation for Favors that were not explicitly a part of the game, or maybe to cheer your partner up if they're feeling down.

# The Code

Built with Ruby on Rails. Rails might not be the best choice for this project, but I chose it anyway to practice it.

The game client is just a standard web page; the 'game' all occurs outside in real life, the application just keeps track of points.

Ruby Version: 3.1.2p20
Rails Version: 7.0.4

# Setup

## Database

This application uses PostgreSQL. In development, 

## Secrets

In **Development** store secrets in `/config/secrets.rb`
The following environment variables are required for the application to build and run.

- `ENV["RAILS_BROWNIE_POINTS_DEVELOPMENT_DATABASE_PASSWORD"] = 'password'`
- `ENV["RAILS_BROWNIE_POINTS_TEST_DATABASE_PASSWORD"] = 'password'`

In **Production**, this secrets file is ***not used***. Instead, I suggest including these environment variables as arguments in the `Dockerfile`, and passing them from the `docker-compose.yml` used to deploy the app. The following environment variables are required in Production:

- `RAILS_BROWNIE_POINTS_PRODUCTION_DATABASE_PASSWORD`

<!-- Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
