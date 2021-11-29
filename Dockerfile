FROM node:14-alpine

# Set working directory
WORKDIR /app

# add app
COPY . ./

# Add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# Install app dependencies
COPY package*.json ./

RUN npm install
RUN npm install react-scripts@4.0.3 -g

# Start app
CMD ["npm", "start"]
