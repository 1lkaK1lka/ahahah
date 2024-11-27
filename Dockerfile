# Базовый образ с Node.js
FROM node:16

# Установка рабочей директории
WORKDIR /app

# Копирование package.json и package-lock.json
COPY package*.json ./

# Установка зависимостей
RUN npm install

# Копирование всех файлов проекта
COPY . .

# Выполнение тестов
RUN npm test

# Указание порта, на котором работает приложение (опционально)
EXPOSE 3000

# Команда по умолчанию (запуск приложения)
CMD ["npm", "start"]

