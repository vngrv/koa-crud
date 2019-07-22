const userModel = require('../lib/mysql.js')

/**
 * render all books what we have in db
 * @return books {json} [all books in db]
 */
exports.getAll = async ctx => {
    await userModel.findAll()
        .then(result => {
            ctx.body = {
                code: 200,
                data: result
            }
        }).catch((error) => {
            ctx.body = {
                code: 500,
                error: error
            }
        })
}

/**
 * create New book
 * @param  body {json} ctx [title, author, description, image]
 * @return status {json}     [success or fail]
 */
exports.create = async ctx => {

    let { title, author, image, description } = ctx.request.body
    let date = new Date()

    await userModel.insertBook([title, author, description, image, date])
        .then((result) => {
            ctx.body = {
                code: 200,
                data: result
            }
        }).catch((error) => {
            ctx.body = {
                code: 500,
                error: error
            }
        })
}