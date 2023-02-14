
import model from './model.js'
 
const GET = async (req, res) => {

    try {
        const fan = await model.GET_fan()
        res.status(200).send(fan)
    } catch (error) {
        console.log('fan', error.message);
    }


   
}


export default {
 GET
}


