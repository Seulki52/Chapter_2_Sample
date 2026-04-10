# 1. Node.js 20 버전 환경을 사용합니다
FROM node:20-alpine

# 2. 컨테이너 내부의 작업 디렉토리를 설정합니다
WORKDIR /app

# 3. 내 컴퓨터의 모든 파일을 컨테이너로 복사합니다
COPY . .

# 4. 수정: npm ci 대신 install을 사용하고 lock 파일을 무시합니다 (에러 해결 핵심!)
RUN npm install --no-package-lock

# 5. 수정: 빌드 명령어가 따로 없다면 이 줄은 지우거나 주석 처리합니다
# (일반적인 샘플 앱은 build 단계가 필요 없을 수 있습니다. 에러 나면 이 줄을 지우세요)
# RUN npm run build

# 6. 서버를 실행합니다
CMD ["node", "src/index.js"]

# 7. 3000번 포트를 사용한다고 명시합니다
EXPOSE 3000