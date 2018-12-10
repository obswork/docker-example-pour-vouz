FROM node:slim

# Add a directory for your app inside the container
RUN mkdir -p /www/

# Copy your application code into the container
COPY . /www

# Self-explanatory
WORKDIR /www

# Install packages
RUN npm install

# Expose port 3000 inside your container to the outside world
EXPOSE 3000
CMD [ "node", "app.js" ]
