# AbeSapian
![AbeSapian](https://cldup.com/QXXerR5Km5.png)![abe](https://cldup.com/9kllkT2K8X.jpeg)

## To Start Node

```shell
$ git clone git@github.com:jrichocean/bprd.git
$ cd bprd/abe_sapien

# this will run whatever tests & compile app
$ mix test
$ iex --name capt@<capt IP> --cookie monster -S mix
$ iex --sname abe_sapien@0.0.0.0 -S mix
> :rpc.call(:"capt@<capt IP>", CaptBenDaimio, :check_in, [Node.self()])
```
