const Koa = require("koa");
const session = require('koa-session-minimal');
const MysqlStore = require('koa-mysql-session');
const config = require('./config/default.js');
const router = require('koa-router');
const app = new Koa();

app.use(require('koa-body')())
app.use(require('./routers/create.js').routes())
app.use(require('./routers/orderby.js').routes())
app.use(require('./routers/update.js').routes())
app.listen(config.port)

console.log(`listening on port ${config.port}`)