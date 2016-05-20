const http = require('http');
const Koa = require('koa');
const router = require('koa-router')();
const logger = require('koa-logger');

const port = process.env.PORT || 8080;
const app = new Koa();

router.use(logger());

router.get('/', ctx => {
  ctx.body = 'Hello World!';
});

app
  .use(router.routes())
  .use(router.allowedMethods());

const server = http.createServer(app.callback());

server.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
