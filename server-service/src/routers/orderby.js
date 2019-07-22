const Router = require('koa-router');
const controller = require('../controllers/orderby.js');

const router = new Router();

router.post('/orderby/', controller.orderBy)

module.exports = router;