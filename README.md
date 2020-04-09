# Sample Application with Erlang

## Running Locally

First, you need to have a working Erlang environment.

### Compile and Execute

```sh
make run
```

The app listens by default on the port 8080 or the one defined in the `PORT`
environment variable.

## Deploy on Scalingo

Create an application on https://scalingo.com, then:

```
git remote add scalingo git@scalingo.com:<name_of_your_app>.git
git push scalingo master
```

And that's it!

The application is running at this url: https://sample-erlang.osc-fr1.scalingo.io/

## Deploy in One Click

[![Deploy to Scalingo](https://cdn.scalingo.com/deploy/button.svg)](https://my.osc-fr1.scalingo.com/deploy)
