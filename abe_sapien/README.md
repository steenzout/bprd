# AbeSapien
![AbeSapien](https://cldup.com/QXXerR5Km5.png)![abe](https://cldup.com/9kllkT2K8X.jpeg)


### Quick Start Node:

* $ `git clone git@github.com:jrichocean/bprd.git`
* $ `cd bprd/abe_sapien`
* $ `mix test` _(this will run whatever tests & compile app)_
* $ `iex --sname abe_sapien -S mix`


### Distributed Start Instructions:

Instead of starting your mix projects/apps with

$ `iex --sname {foo} -S mix`

You can also start a project with a proper server name and address like:

$ `iex --name {foo}@{ip_addr_of_machine} --cookie {monster} -S mix`

__NOTE:__ if you are starting different projects on different machines you will need to set a common cookie with the `--cookie {whatever}` flag, typically if they are all started locally they will use the cookie in `cat ~/.erlang.cookie` but when they are on different machines they need a common cookie or ssh key set to allow a connection.
