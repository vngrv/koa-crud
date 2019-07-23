const userModel = require('../lib/mysql.js')

/**
 * update book
 * @param id {strin} ctx [book id]
 * @param body {json} ctx [new date for book]
 * @return status {json} [success or fail]
 */
exports.update = async ctx => {
    
    let id = ctx.params.id
    let newBody = ctx.request.body
    let newData = []

    Object.keys(newBody).forEach(function(key) {
         newData.push(`${key}='${newBody[key]}'`)
    })

    await userModel.update(newData.join(", "), id)
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

