# 1. Node.js 20 버전 환경을 사용합니다 [cite: 229, 404]
FROM node:20-alpine

# 2. 컨테이너 내부의 작업 디렉토리를 설정합니다
WORKDIR /app

# 3. 내 컴퓨터의 모든 파일을 컨테이너로 복사합니다 [cite: 258, 266]
COPY . .

# 4. 필요한 패키지들을 설치합니다 [cite: 241, 416]
RUN npm ci

# 5. 소스 코드를 실행 가능한 상태로 빌드합니다 [cite: 243, 418]
RUN npm run build

# 6. 서버를 실행합니다
CMD ["npm", "run", "start:prod"]

# 7. 3000번 포트를 사용한다고 명시합니다 [cite: 95]
EXPOSE 3000
