# Step 1: Use a base Node.js image
FROM node:18-alpine

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Step 4: Install dependencies (including Skeleton UI and Tailwind)
RUN npm install

# Step 5: Copy the rest of the app's source code
COPY . .

# Step 6: Install Tailwind and run it
RUN npx tailwindcss init

# Step 7: Expose the port the app will run on
EXPOSE 5173

# Step 8: Start the app in development mode
CMD ["npm", "run", "dev", "--", "--host"]
