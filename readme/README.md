# Appcent Debezium Uygulaması

Bu uygulama, Debezium source ve sink connector'larını içeren bir Docker paketidir. İşte uygulamanın kullanımına dair adımlar:

## Başlangıç

1. Docker klasörü altında bulunan Docker imajını oluşturun.

    ```bash
    docker build -t custom-image .
    ```

2. Docker Compose kullanarak uygulamayı başlatın.

    ```bash
    docker-compose up -d
    ```

## Connector'ları Çalıştırma

Uygulama başladıktan sonra, Debezium source veya sink connector'larını çalıştırabilirsiniz.

```bash
# Örnek: MySQL Source Connector'ı başlatma
cd source-connector
sh mysql-connector.sh
```

## Connector'ları Durdurma

Uygulamayı durdurduktan sonra, Debezium source veya sink connector'larını durdurabilirsiniz.

```bash
# Örnek: MySQL Source Connector'ı durdurma
cd source-connector
curl -X DELETE http://localhost:8083/connectors/mysql-source-connector
```


## Not
Not: İp adresleri ve portlar, varsayılan olarak yerel ortama göre yapılandırılmıştır. Farklı ortamlarda çalıştırıyorsanız, docker env özelliklerini kullanarak adresleri ve portları dışardan alacak şekilde güncelleyebilirsiniz.

