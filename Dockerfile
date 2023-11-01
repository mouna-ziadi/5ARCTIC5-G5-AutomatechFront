# Utilisez l'image Node.js officielle comme image de base
FROM node:16

# Installez Angular CLI globalement
RUN npm install -g @angular/cli

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installez les dépendances de l'application
RUN npm install

# Copiez le reste du code source de l'application dans le conteneur
COPY . .

# Construisez l'application Angular
RUN ng build --prod

# Exposez le port
EXPOSE 4200

# Démarrez l'application Angular
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200", "--disable-host-check"]
