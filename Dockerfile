# Используем базовый образ с Java 11 и Gradle для сборки
FROM gradle:7.3.3-jdk17 AS builder

# Копируем исходный код в контейнер
COPY . /app/

# Устанавливаем рабочую директорию
WORKDIR /app

# Собираем приложение с помощью Gradle
RUN gradle build --no-daemon
# Используем базовый образ с Java 11 для запуска приложения
FROM openjdk:17

# Копируем собранный JAR файл из предыдущего этапа сборки
COPY --from=builder /app/build/libs/CI_CD_Project-1.0-SNAPSHOT.jar /app/app.jar

# Устанавливаем рабочую директорию
WORKDIR /app

# Определяем команду для запуска приложения
CMD ["java", "-jar", "app.jar"]