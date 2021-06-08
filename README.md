**This Project is still work in progress.**

# ETHMiner
Simple to set up Ethereum Miner.

## Running the server
```bash
docker run --detach --name ethminer hetsh/ethminer
```

## Stopping the container
```bash
docker stop ethminer
```

## Time
Synchronizing the timezones will display the correct time in the logs.
The timezone can be shared with this mount flag:
```bash
docker run --mount type=bind,source=/etc/localtime,target=/etc/localtime,readonly ...
```

## Automate startup and shutdown via systemd
The systemd unit can be found in my GitHub [repository](https://github.com/Hetsh/docker-ethminer).
```bash
systemctl enable ethminer --now
```
By default, the systemd service assumes `/etc/localtime` for timezone.
Since this is a personal systemd unit file, you might need to adjust some parameters to suit your setup.

## Fork Me!
This is an open project hosted on [GitHub](https://github.com/Hetsh/docker-ethminer).
Please feel free to ask questions, file an issue or contribute to it.