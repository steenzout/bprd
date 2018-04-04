# this will run whatever tests & compile app
$ mix test
$ export BPRD_CAPTAIN_IP=10.10.55.66
$ export BPRD_ME_IP=$(ifconfig | grep '10.10.' | awk '{print $2}')

// $ iex --name "capt@${BPRD_CAPTAIN_IP}" --cookie monster -S mix
$ iex --name abe_sapien@${BPRD_ME_IP} --cookie monster -S mix
$ Node.ping :'capt@<BPRD_CAPTAIN_IP>'

:rpc.call(:"capt@10.10.55.66", CaptBenDaimio, :check_in, [Node.self()])
:rpc.call(:"capt@10.10.55.66", CaptBenDaimio.Checkin, :check_in, [Node.self()])
> :rpc.call(:"capt@<capt IP>", CaptBenDaimio, :check_in, [Node.self()])
```


```
message = :rpc.call(:"capt@10.10.55.66", CaptBenDaimio.FieldEncryptor, :encrypt, [Application.get_env(:abe_sapien, :mission_one)[:rot_key]])
<<arg::utf32, tail::binary>> = message
rot_key = Application.get_env(:abe_sapien, :mission_one)[:rot_key]
pub_key = Application.get_env(:abe_sapien, :mission_one)[:pub_key]
drot_key = arg - pub_key

tail_list = :binary.bin_to_list tail

<<arg::utf32, tail::binary>> = message

AbeSapien.Derotator.bin(tail_list, drot_key)
```
