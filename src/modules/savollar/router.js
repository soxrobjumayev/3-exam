import { Router } from "express";
import controller from './controller.js'


const router = Router()




router.get('/savollar',controller.GET)










export default router