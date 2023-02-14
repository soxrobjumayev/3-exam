
import { fetch,fetchAll } from "../../utils/db.js";


const GET_UNVERSETIT = async () => {
    try {
        return await fetchAll('select * from universitet ')
    } catch (error) {
        console.log('getuser', error.message);
    }
}

export default {
    GET_UNVERSETIT
}



