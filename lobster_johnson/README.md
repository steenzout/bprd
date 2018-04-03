# Lobster Johnson

![lobster johnson](https://cldup.com/ZvUOm-lwYl.jpg)![lobster johnson](https://cldup.com/9E03KAFLh3.png)

### Quick Start Node:

* $ `git clone git@github.com:jrichocean/bprd.git`
* $ `cd bprd/lobster_johnson`
* $ `mix test` _(this will run whatever tests & compile app)_
* $ `iex --sname lobster_johnson -S mix`


### Distributed Start Instructions:

Instead of starting the project with

$ `iex --sname {foo} -S mix`

You can also start a project with a proper server name and address like:

$ `iex --name {foo}@{ip_addr_of_machine} --cookie {monster} -S mix`

__NOTE:__ if you are starting different projects on different machines you will need to set a common cookie with the `--cookie {whatever}` flag, typically if they are all started locally they will use the cookie in `cat ~/.erlang.cookie` but when they are on different machines they need a common cookie or ssh key set to allow a connection.

