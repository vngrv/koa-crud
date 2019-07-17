const Koa = require("koa");
const json = require("koa-json");
const KoaRouter = require("koa-router");

const app = new Koa();
const router = new KoaRouter();

// JSON 
app.use(json());

app.use(async ctx => (ctx.body = {'msg': 'Hello World'}));


// Router 
router.get('/test', ctx => (ctx.body = 'Hello Test'));
app.use(router.routes()).use(router.allowedMethods());


app.listen(3000, () => console.log('Server Started...'));

