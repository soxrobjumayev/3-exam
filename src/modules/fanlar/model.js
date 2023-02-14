
import { fetch,fetchAll } from "../../utils/db.js";


const GET_fan = async () => {
    try {
        return await fetchAll('select * from fanlar ')
    } catch (error) {
        console.log('fan', error.message);
    }
}

export default {
    GET_fan
}



