import { Router } from "express";
import controller from './controller.js'
import token from '../../middlewares/checktoken.js'


const router = Router()




router.get('/fanlar',controller.GET)










export default router