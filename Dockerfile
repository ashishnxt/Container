FROM ubuntu/postgres:16-24.04_edge

WORKDIR /app

COPY package*.json  ./

RUN npm install

COPY . .

EXPOSE 3000

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
# \. "$HOME/.nvm/nvm.sh"
# nvm install 24 
# npm -v && node -v   # Should print "v24.15.0"

CMD ["node", "index"]
