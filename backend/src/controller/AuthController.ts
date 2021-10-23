import { getRepository } from "typeorm";
import { Request, Response } from "express";
import { User } from '../entity/User';
import * as jwt from 'jsonwebtoken';
import config from '../config/config';
import { validate } from "class-validator";

class AuthController {
    static login = async (req: Request, res: Response) => {
        const { Usrnm, Psswrd } = req.body;
        if (!(Usrnm && Psswrd)) {
            return res.status(400).json({ message: ' Username & Password are required!' });
        }

        const userRepository = getRepository(User);
        let user: User;
        try {
            user = await userRepository.findOneOrFail({ where: { Usrnm: Usrnm } });
        } catch (e) {
            return res.status(400).json({ message: 'Username or password incorrect!' });
        }

        // Check Password
        if (!user.checkPassword(Psswrd)) {
            return res.status(400).json({ message: 'Username or Password are incorrect!' });
        }

        const token = jwt.sign({ userRfrnc: user.Rfrnc, Usrnm: user.Usrnm }, config.jwtSecret, { expiresIn: '1h' });

        //res.send(user);
        res.json({ message: 'OK', token });
    };

    static changePassword = async (req: Request, res: Response) => {
        const { Usr_Rfrnc } = res.locals.jwtPayload;
        const { oldPassword, newPassword } = req.body;

        if(!(oldPassword && newPassword)) {
            res.status(400).json({ message: 'Old password && new password are required' });
        }

        const userRepository = getRepository(User);
        let user: User;

        try {
            user = await userRepository.findOneOrFail(Usr_Rfrnc);
        } catch(e){
            res.status(400).json({ message: 'Something goes wrong!' });
        }

        if(!user.checkPassword(oldPassword)){
            return res.status(401).json({ message: 'Check your old password' });
        }

        user.Psswrd         = newPassword;
        const validationOps = { validationError: { target: false, value: false } }; 
        const errors        = await validate(user, validationOps);
        if(errors.length > 0) {
            return res.status(400).json(errors);
        }

        // Hash password
        user.hashPassword();
        userRepository.save(user);
        res.json({ message: 'Password change!' });
    };
}

export default AuthController;