import { Router } from "express";
import controller from './controller.js'


const router = Router()

router.post('/register',controller.REGISTER)








export default router