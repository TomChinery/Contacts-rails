## Synopsis

A simple app that lets the user login to Google via OAuth and displays
contacts related to that account. Contacts are ordered alphabetically and will display 30 per page.
All contacts are shown even ones without a name.

You can find the app running [here.]()

## Installation

Clone the repository to your desired location and run:

```
    bundle install
```

Then:

```
  rake db:migrate
```

And start the app with:

```
  rails server
```

## Tests

The test suite is written with rspec. To run the test suite run in the project
root directory:

```
  rspec
```
