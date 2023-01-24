- run `docker compose -f hk4e-everything.yaml build`
- run `docker compose -f hk4e-everything.yaml up -d mysql`
- change line:350 in file `config/sql/db_hk4e_deploy_config_os_beta01.sql` to **`YOUR SDK SERVER`** which responses like `{"data":{"account_type":1,"ip_info":{"country_code":"us"}},"message":"OK","retcode":0}`
- create database using `config/sql/*.sql`
- put `srv-bins/3.2_beta` into `bin/3.2_beta`
- put `welink-pkg/welink_3.2_qa` into `data/welink_3.2_qa`
- run `docker compose -f hk4e-everything.yaml up -d`
- run `docker ps` check contianer status is **Up**
- the `mysql` will listen on `0.0.0.0:3306`
- the `redis` will listen on `0.0.0.0:6379`
- the `gateserver` will listen on `0.0.0.0:18101` and `0.0.0.0:18101/udp`
- the `dispatch` will listen on `0.0.0.0:18401` and `0.0.0.0:18421`
- the `muipserver` will listen on `0.0.0.0:18541`
- the `oaserver` will listen on `0.0.0.0:18601`
- wait about 10 mins, then enjoy the official server!

- alternately, use the least setup `docker compose -f hk4e-least-setup.yaml up -d`
- the `mysql` will listen on `0.0.0.0:3306`
- the `redis` will listen on `0.0.0.0:6379`
- the `gateserver` will listen on `0.0.0.0:18101` and `0.0.0.0:18101/udp`
- the `muipserver` will listen on `0.0.0.0:18541`
- this setup will significantly reduce the hardware requirements, but you will need an external dispatch server such as `grasscutter`

// 据说来自钟旭东

// [二进制下载](https://mirror.tomys.top/OneDrive/%E8%BD%AF%E4%BB%B6/Games/%E5%8E%9F%E7%A5%9E/leaksrv)
