import { Router } from "express";
import controller from './controller.js'


const router = Router()




router.get('/javoblar',controller.GET)










export default router