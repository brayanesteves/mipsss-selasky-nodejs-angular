import { checkUsrTyp }     from '../middlewares/UsrTyp';
import { Router } from "express";
import UserController from '../controller/UserController';
import { checkJwt }   from "../middlewares/jwt";

const router = Router();

// Get all users
router.get('/', [checkJwt, checkUsrTyp(['1'])], UserController.getAll);
// Get one user
router.get('/:id', [checkJwt, checkUsrTyp(['1'])], UserController.getById);
// Create a new user
router.post('/', [checkJwt, checkUsrTyp(['1'])], UserController.newUser);
// Edit user
router.patch('/:id', [checkJwt, checkUsrTyp(['1'])], UserController.editUser);
// Delete
router.delete('/:id', [checkJwt, checkUsrTyp(['1'])], UserController.deleteUser);

export default router;