# Юнирест Технологии — сайт

Статический одностраничный сайт компании «Юнирест Технологии».

## Запуск локально

```bash
python3 -m http.server 8092
```

Затем откройте http://localhost:8092

## Docker

```bash
docker build -t unirest-site .
docker run -d -p 8080:80 --name unirest-site unirest-site
```

Сайт откроется на http://localhost:8080
