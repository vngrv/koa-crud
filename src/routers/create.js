const Router = require('koa-router');
const controller = require('../controllers/create.js');

const router = new Router();

router.get('/create/', controller.getAll)
router.post('/create/', controller.create)

module.exports = router;