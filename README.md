# Image Super Resolution using in Keras 2+

## Инструкция по запуску

1) Склонируйте репозиторий с проетом
```bash
git clone https://github.com/KAD1029/DL2023.git
```

2) Соберите образ докера:
```bash
docker build -t isr_image .
```

3) Запустите контейнер:
```bash
docker run isr_image
```

В результате будет выведено сообщение вида : `Sum error = val`, где `val` - сумма модулей разности двух изображений - образца из контейнера и полученного в результате эксперимента.