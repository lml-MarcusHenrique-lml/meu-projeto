# Use a imagem base do Node.js
FROM node:14

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do frontend
RUN npm install

# Copie todo o código do frontend para o diretório de trabalho
COPY . .

# Exponha a porta 3000
EXPOSE 3000

# Comando para iniciar a aplicação React
CMD ["npm", "start"]