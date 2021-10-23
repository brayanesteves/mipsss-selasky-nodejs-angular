import { checkUsrTyp }     from '../middlewares/UsrTyp';
import { Router } from "express";
import LegalPersonController from '../controller/LegalPersonController';
import { checkJwt }   from "../middlewares/jwt";

const router = Router();

// Get all users
router.get('/', [checkJwt, checkUsrTyp(['1'])], LegalPersonController.getAll);
// Get one user
router.get('/:id', [checkJwt, checkUsrTyp(['1'])], LegalPersonController.getByRfrnc);
// Create a new user
router.post('/', [checkJwt, checkUsrTyp(['1'])], LegalPersonController.new);
// Edit user
router.patch('/:id', [checkJwt, checkUsrTyp(['1'])], LegalPersonController.edit);
// Delete
router.delete('/:id', [checkJwt, checkUsrTyp(['1'])], LegalPersonController.delete);

export default router;