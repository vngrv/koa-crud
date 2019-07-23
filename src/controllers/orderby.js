const userModel = require('../lib/mysql.js')

/**
 * output values based on the selector
 * @param  {json} ctx [field1 {arr}, field2 {arr}]
 * @return {json}     [success or fail]
 */
exports.orderBy = async ctx => {

	let { field1, field2 } = ctx.request.body
	
	if(field1.length > 1) {
		field1 = field1.join(", ")
	}

	if(field2.length > 1) {
		field1 = field1.join(", ")
	}

    await userModel.orderBy(field1, field2)
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

