
import { fetch,fetchAll } from "../../utils/db.js";


const REGISTERS = `insert into users(username,email,password) values($1,$2,$3) returning * `


const REGISTER = async ({username,email,password}) => {
    try {
        
   
        return await fetchAll(REGISTERS,[username,email,password])
    } catch (error) {
        console.log('getuser', error.message);
    }
}



export default {
    REGISTER
}


