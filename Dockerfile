# Use a custom base image with Node.js preconfigured
FROM quay.io/souravkl11/rgnk-v3:latest

# Set the working directory
WORKDIR /railway/richu

# Set the timezone
ENV TZ=Asia/Kolkata

# Install tzdata for timezone setting (optional based on your base image)
RUN apk add --no-cache tzdata

# Clone the bot repository
RUN git clone https://github.com/MuhammedRishdinT/richu.git . 

# Install dependencies with Yarn
RUN yarn install --network-concurrency 1

# Start the bot
CMD ["node", "index.js"]
