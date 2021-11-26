# highload-sw-arch-hw-09

# Prerequisites
* docker
* linux + bash

# 1. Run MySQL and PostgreSQL
```
./run.sh
```

# 2. Connect to MySQL and PostgreSQL and run queries

PostgreSQL

```
psql -h localhost -p 5432 -U root -W test
```

MySQL
```
mysql -h localhost -P 3306 --protocol=tcp -u root -p test --password=pass
```

# 2. Run cleanup script

```
./cleanup.sh
```

# Dirty Reads, fixed with repeatable read level

Percona
![](./images/percona/percona-dirty-read.png)
![](./images/percona/percona-dirty-percona-dirty-read-fixed.png)

PostgreSQL

# Non-Repeatable Reads, fixed with repeatable read level

Percona
![](./images/percona/percona-repeatable-read.png)
![](./images/percona/percona-repeatable-read-fixed.png)

PostgreSQL

# Phantom Reads, fixed with serializable level, write transaction waiting for another write to be completed

Percona
![](images/percona/percona-phantom-reads.png)
![](images/percona/percona-phantom-percona-phantom-reads-fixed.png)

PostgreSQL