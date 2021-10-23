import {getRepository} from "typeorm";
import {NextFunction, Request, Response} from "express";
import { User } from "../entity/User";
import { validate } from 'class-validator';
import * as moment from 'moment';

export class UserController {
    //
    static getAll = async (req: Request, res: Response) => {
        const userRepository = getRepository(User);
        let users;
        try {
           users = await userRepository.find();
        } catch(e){
            res.status(404).json({ message: 'Something goes wrong!' });
        }

        if (users.length > 0) {
            res.send(users);
        } else {
            res.status(404).json({ message: 'Not result' });
        }
    };

    static getById = async (req: Request, res: Response) => {
        const { id } = req.params;
        const userRepository = getRepository(User);
        try {
            const user = await userRepository.findOneOrFail(id);
            res.send(user);
        } catch(e) {
            res.status(404).json({ message: 'Not result' });
        }
    };

    static newUser = async (req: Request, res: Response) => {
        const { Usrnm, Psswrd, Rfrnc_Prsn, UsrTyp_Rfrnc } = req.body;
        const user        = new User();
        user.Usrnm        = Usrnm;
        user.Psswrd       = Psswrd;
        user.Rfrnc_Prsn   = Rfrnc_Prsn;
        user.UsrTyp_Rfrnc = UsrTyp_Rfrnc;
        user.Cndtn        = 1;
        user.Rmvd         = 0;
        user.Lckd         = 0;
        user.DtAdmssn     = new Date();
        user.ChckTm       = moment(new Date()).format('HH:mm:ss');

        // Validate
        const validationOpt = { validationError: { target: false, value: false } };
        const errors        = await validate(user, validationOpt);
        if(errors.length > 0) {
            return res.status(400).json(errors);
        }

        // TODO: Hash Password
        const userRepository = getRepository(User);
        try {
            user.hashPassword();
            await userRepository.save(user);
        } catch(e) {
            return res.status(409).json({ message: 'Username already exist' + res});
        }

        // All ok
        res.send('User created');
    };

    static editUser = async (req: Request, res: Response) => {
        let user;
        const { Rfrnc } = req.params;
        const { Usrnm, Psswrd, Rfrnc_Prsn, UsrTyp_Rfrnc } = req.body;
        const userRepository = getRepository(User);
        // Try get user
        try {
            user = await userRepository.findOneOrFail(Rfrnc);
        } catch(e) {
            return res.status(404).json({ message: 'User not found' });
        }
        user.Usrnm        = Usrnm;
        user.Psswrd       = Psswrd;
        user.Rfrnc_Prsn   = Rfrnc_Prsn;
        user.UsrTyp_Rfrnc = UsrTyp_Rfrnc;
        user.Cndtn        = 1;
        user.Rmvd         = 0;
        user.Lckd         = 0;

        const validationOpt = { validationError: { target: false, value: false } };
        const errors        = await validate(user, validationOpt);
        if(errors.length > 0) {
            return res.status(400).json(errors);
        }

        // Try to save user
        try {
            await userRepository.save(user);
        } catch (e) {
            return res.status(409).json({ message: 'Username already in user' });
        }
        res.status(201).json({ message: 'User update' });
    };

    static deleteUser = async (req: Request, res: Response) => {
        const { Rfrnc } = req.params;
        const userRepository = getRepository(User);
        let user: User;

        try {
            user = await userRepository.findOneOrFail(Rfrnc);
        } catch(e) {
            return res.status(404).json({ message: 'User not found' });
        }

        // Remove user
        userRepository.delete(Rfrnc);
        res.status(201).json({ message: 'User deleted' });
    };
}

export default UserController;