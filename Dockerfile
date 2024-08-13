# Use the official Node.js image.
FROM node:14

# Create and set the working directory inside the container.
WORKDIR /app

# Copy the package.json and package-lock.json to the working directory.
COPY package*.json ./

# Install the dependencies.
RUN npm install

# Copy the rest of the application code to the working directory.
COPY . .

# Expose the port your app runs on.
EXPOSE 3000

# Define the command to run your app.
CMD ["npm", "start"]
