import { Router, Request, Response } from 'express';
import {
    createOrder,
    updateOrder,
    listOrders,
    getOrder,
} from './ordersController.js';
import { validateData } from '../../middlewares/validationMiddleware.js';
import {
    insertOrderWithItemsSchema,
    updateOrderSchema,
} from '../../db/ordersSchema.js';
import { verifyToken } from '../../middlewares/authMiddleware.js';

const router = Router();

router.post(
    '/',
    verifyToken,
    validateData(insertOrderWithItemsSchema),
    createOrder
);

router.get('/', verifyToken, listOrders);
router.get('/:id', verifyToken, getOrder);
router.put('/:id', verifyToken, validateData(updateOrderSchema), updateOrder);

export default router;
