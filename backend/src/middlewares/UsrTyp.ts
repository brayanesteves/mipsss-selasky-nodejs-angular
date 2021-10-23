import { getRepository } from 'typeorm';
import { Request, Response, NextFunction } from 'express';
import { User } from '../entity/User';

export const checkUsrTyp = (UsrTyp: Array<string>) => {
    return async (req: Request, res: Response, next: NextFunction) => {
        const { Usr_Rfrnc } = res.locals.jwtPayload;
        const userRepository = getRepository(User);

        let user: User;

        try {
            user = await userRepository.findOneOrFail(Usr_Rfrnc);

        } catch(e) {
            return res.status(401).json({ message: 'Not Authorized' });
        }

        // Check
        const { UsrTyp_Rfrnc } = user;
        if(String(UsrTyp_Rfrnc).includes(String(UsrTyp_Rfrnc))){
            next();
        } else {
            res.status(401).json({ message: 'Not Authorized' });
        }
    }
};