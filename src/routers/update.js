const Router = require('koa-router');
const controller = require('../controllers/update.js');

const router = new Router();

router.post('/update/:id', controller.update)

module.exports = router;