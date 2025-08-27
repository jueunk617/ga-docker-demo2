FROM nginx:alpine

# 빌드 타임에 넣을 비밀 파일 위치
# (workflow에서 password.html을 생성해 이 경로로 복사함)
COPY index.html /usr/share/nginx/html/index.html
COPY password.html /usr/share/nginx/html/password.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
