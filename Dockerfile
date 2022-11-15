# always starts with FROM
# importing a node image found on hub.docker.com
# Alpine Linux with Node 16
FROM node:16-alpine3.15

# create a working directory and copy all files (except .dockerignore files)
WORKDIR /src/
COPY . .

# install dependencies
RUN npm install

# enviromental variables
# in js use process.env.PORT
ENV PORT 3000

# open this port
EXPOSE 3000

# command to run when starting a new container
CMD ["npm", "start"]
