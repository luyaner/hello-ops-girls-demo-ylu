FROM node:19-slim
## 指定工作目录
WORKDIR /app
COPY yarn.lock package.json /app/
## 安装依赖
RUN yarn install
## 复制代码
COPY . /app/
## 把typescript转换
RUN npx tsc
EXPOSE 8000
## 启动程序
CMD ["yarn","start"]