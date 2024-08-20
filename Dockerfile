# ใช้ Node.js image
FROM node:18

# ตั้งค่า working directory
WORKDIR /usr/src/app

# คัดลอก package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกโค้ดทั้งหมด
COPY . .

# เปิดพอร์ตที่แอปพลิเคชันของคุณใช้
EXPOSE 3000

# ใช้ npm run dev สำหรับการพัฒนา
CMD [ "npm", "run", "dev" ]
