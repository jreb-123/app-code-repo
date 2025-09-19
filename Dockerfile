# Imagen base ligera de Python
FROM python:3.12-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos de la app
COPY app.py .

# Instalamos Flask
RUN pip install flask

# Exponemos el puerto
EXPOSE 80

# Comando para arrancar la app
CMD ["python", "app.py"]
