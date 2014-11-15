# serverspec-example

An example of how to run serverspec tests on Chef-managed machines.

This is from my 11/18/2014 presentation at [Boston DevOps](http://www.meetup.com/Boston-Devops/events/217839012/).

## setup

Install [ChefDK](https://downloads.getchef.com/chef-dk/) and set it as your default Ruby with:

```
eval "$(chef shell-init myshell)"
```

where *myshell* is the shell you use, like `bash` or `zsh`.

Install the kitchen-docker driver:

```
gem install kitchen-docker
```

You should have a running docker on your system. 
If you're on OSX install [boot2docker](https://github.com/boot2docker/osx-installer/releases)
and set your `DOCKER_HOST` environment variable.

```
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2376
```

## testing

Now you can use `kitchen converge` to converge a docker container.
After convergance, `kitchen verify` will run the serverspec tests.

When you're all done, run `kitchen destroy` to remove the docker container.
