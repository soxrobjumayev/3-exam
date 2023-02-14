
import { fetch,fetchAll } from "../../utils/db.js";


const GET_javoblar = async () => {
    try {
        return await fetchAll('select * from javoblar ')
    } catch (error) {
        console.log('javob', error.message);
    }
}

export default {
    GET_javoblar
}



