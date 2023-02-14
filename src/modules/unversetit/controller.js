
import model from './model.js'
 
const GET = async (req, res) => {

    try {
        const universitett = await model.GET_UNVERSETIT()
        res.status(200).send(universitett)
    } catch (error) {
        console.log('elonlaa', error.message);
    }


   
}


export default {
 GET
}


