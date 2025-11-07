# 1️⃣ Use Node base image
FROM node:18-alpine

# 2️⃣ Set working directory
WORKDIR /app

# 3️⃣ Copy package files first
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install

# 5️⃣ Copy rest of the code
COPY . .

# 6️⃣ Expose frontend port (React default port is 3000)
EXPOSE 3000

# 7️⃣ Start React app
CMD ["npm", "start"]
