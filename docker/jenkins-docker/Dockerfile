# Используем базовый образ с Java
FROM openjdk:17

# Копируем jenkins.war в контейнер
COPY jenkins.war /usr/share/jenkins/jenkins.war

# Устанавливаем рабочую директорию
WORKDIR /usr/share/jenkins

# Определяем порт, который будет доступен извне
EXPOSE 8080

# Команда для запуска Jenkins при старте контейнера
CMD ["java", "-jar", "jenkins.war"]