# Imagem base para o ambiente de desenvolvimento
FROM ubuntu:latest

# Instala as dependências necessárias
RUN apt-get update && \
    apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# Instala o Flutter SDK
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH=$PATH:/usr/local/flutter/bin

# Define o diretório de trabalho como /app e copia o código fonte para ele
WORKDIR /app
COPY . .

# Instala as dependências do pacote do Flutter
RUN flutter pub get

# Expose a porta 8080
EXPOSE 8080

# Comando padrão que será executado quando o contêiner for iniciado
CMD ["flutter", "run", "--release", "-d", "web-server", "--web-port", "8080", "--web-hostname", "0.0.0.0"]
