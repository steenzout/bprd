B.P.R.D
_(BEAM Practice Research & Deconstruction)_
---

The B.P.R.D. project is a set of mix projects to learn more about the BEAM VM.

This projects main layout & challenge is layed out in the private CaptBenDaimio project.

Clone the repo with: $ `git clone git@github.com:jrichocean/bprd.git`


### Quick Start Instructions for {foo} Project:

*__Abe Sapian__*

	$ `cd bprd/abe_sapien`
	$ `mix test` _(this will run whatever tests & compile app)_
	$ `iex --sname abe_sapien -S mix`

*__Hellboy__*

	$ `cd bprd/hellboy`
	$ `mix test` _(this will run whatever tests & compile app)_
	$ `iex --sname hellboy -S mix`

*__Johann Kraus__*

	$ `cd bprd/johann_kraus`
	$ `mix test` _(this will run whatever tests & compile app)_
	$ `iex --sname johann_kraus -S mix`

*__Liz Sherman__*

	$ `cd bprd/liz_sherman`
	$ `mix test` _(this will run whatever tests & compile app)_
	$ `iex --sname liz_sherman -S mix`

*__Roger the Homunculus__*

	$ `cd bprd/roger_the_homunculus`
	$ `mix test` _(this will run whatever tests & compile app)_
	$ `iex --sname roger -S mix`

*__Lobster Johnson__*

	$ `cd bprd/lobster_johnson`
	$ `mix test` _(this will run whatever tests & compile app)_
	$ `iex --sname lobster_johnson -S mix`

__*Notes:*__
The `--sname` flag locally will _typically_ resolve to your computers name or localhost.  On some machines the `/etc/hosts` might not be configured right & your computers name will not resolve to `localhost`.  In those cases you can append `@localhost` to your server name, if this does not work, make sure that your `/etc/hosts` file at least has a line that looks like **`127.0.0.1   localhost`** in it or you can add **`127.0.0.1   {your_computer_name}`** to your host file and those should resolve the issues, if not feel free to submit a question as an issue or message me (`@jrichocean`) on the elixir slack.


## Distributed Start Instructions:

Instead of starting your mix projects/apps with

$ `iex --sname {foo} -S mix`

You can also start a project with a proper server name and address like:

$ `iex --name {foo}@{ip_addr_of_machine} --cookie {monster} -S mix`

__NOTE:__ if you are starting different projects on different machines you will need to set a common cookie with the `--cookie {whatever}` flag, typically if they are all started locally they will use the cookie in `cat ~/.erlang.cookie` but when they are on different machines they need a common cookie or ssh key set to allow a connection.

