
import { fetch,fetchAll } from "../../utils/db.js";


const GET_savol = async () => {
    try {
        return await fetchAll('select * from savollar ')
    } catch (error) {
        console.log('savol', error.message);
    }
}

export default {
    GET_savol
}



