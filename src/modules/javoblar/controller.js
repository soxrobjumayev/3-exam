
import model from './model.js'
 
const GET = async (req, res) => {

    try {
        const javob = await model.GET_javoblar()
        res.status(200).send(javob)
    } catch (error) {
        console.log('javob', error.message);
    }


   
}


export default {
 GET
}


