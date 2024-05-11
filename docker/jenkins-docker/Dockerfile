# Используем образ с Ubuntu
FROM ubuntu:latest

# Обновляем пакеты и устанавливаем необходимые пакеты, включая JDK 17 и Git
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Устанавливаем переменные окружения Java
ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

# Опционально: создаем рабочую директорию
WORKDIR /app

# Команда, которая будет выполнена при запуске контейнера
# CMD ["java", "-jar", "your-application.jar"]

# Копируем jenkins.war в контейнер
COPY jenkins.war /usr/share/jenkins/jenkins.war

# Устанавливаем рабочую директорию
WORKDIR /usr/share/jenkins

# Определяем порт, который будет доступен извне
EXPOSE 8080

# Команда для запуска Jenkins при старте контейнера
CMD ["java", "-jar", "jenkins.war"]