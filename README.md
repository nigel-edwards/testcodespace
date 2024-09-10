# testcodespace

To setup a mysql in codespace:

```bash
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_DATABASE=mydb -p 3306:3306 -d mysql:latest
```

Then install msql-client:

```bash
sudo apt update
sudo apt install mysql-client -y
```

To start and stop th econtainer

```bash
docker stop mysql-container

docker start mysql-container
```
