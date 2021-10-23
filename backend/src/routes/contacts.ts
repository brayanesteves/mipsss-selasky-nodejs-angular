import { checkUsrTyp }     from '../middlewares/UsrTyp';
import { Router } from "express";
import ContactsController from '../controller/ContactsController';
import { checkJwt }   from "../middlewares/jwt";

const router = Router();

// Get all users
router.get('/', [checkJwt, checkUsrTyp(['1'])], ContactsController.getAll);
// Get one user
router.get('/:id', [checkJwt, checkUsrTyp(['1'])], ContactsController.getByRfrnc);
// Create a new user
router.post('/', [checkJwt, checkUsrTyp(['1'])], ContactsController.new);
// Edit user
router.patch('/:id', [checkJwt, checkUsrTyp(['1'])], ContactsController.edit);
// Delete
router.delete('/:id', [checkJwt, checkUsrTyp(['1'])], ContactsController.delete);

export default router;