# apache-hive

Finding the top 5 airlines with the greatest average DEPARTURE_DELAY using Apache Hive.

## Requirements

* [Docker 24+](https://www.docker.com/get-started)

## Bootstraping your environment

* Download datasets from [Kaggle](https://www.kaggle.com/datasets/usdot/flight-delays?select=flights.csv) and put them to "apache-hive/pkg/dataset/" folder

```sh
$ docker-compose up -d
# wait while environment initialization is complete
```
## Run
```sh
$ ./run.sh
```

