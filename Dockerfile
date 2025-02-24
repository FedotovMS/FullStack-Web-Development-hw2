# Вибір базового образу (для Python)
FROM python:3.10

ENV APP_HOME /app

# Вказуємо робочий каталог у контейнері
WORKDIR $APP_HOME

# Копіюємо вимоги для встановлення залежностей
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install -r requirements.txt

# Копіюємо решту файлів у контейнер
COPY . .

# Вказуємо команду для запуску застосунку
CMD ["python", "main.py"]