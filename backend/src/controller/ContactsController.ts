import {getRepository} from "typeorm";
import {NextFunction, Request, Response} from "express";
import { Contacts } from "../entity/Contacts";
import { validate } from 'class-validator';
import * as moment from 'moment';

export class ContactsController {
    //
    static getAll = async (req: Request, res: Response) => {
        const ContactsRepository = getRepository(Contacts);
        let Contactss;
        try {
           Contactss = await ContactsRepository.find();
        } catch(e){
            res.status(404).json({ message: 'Something goes wrong!' });
        }

        if (Contactss.length > 0) {
            res.send(Contactss);
        } else {
            res.status(404).json({ message: 'Not result' });
        }
    };

    static getByRfrnc = async (req: Request, res: Response) => {
        const { Rfrnc } = req.params;
        const ContactsRepository = getRepository(Contacts);
        try {
            const Contacts = await ContactsRepository.findOneOrFail(Rfrnc);
            res.send(Contacts);
        } catch(e) {
            res.status(404).json({ message: 'Not result' });
        }
    };

    static new = async (req: Request, res: Response) => {
        const { Nm, Eml } = req.body;
        const contacts         = new Contacts();
        contacts.Nm       = Nm;
        contacts.Eml      = Eml;
        contacts.Cndtn    = 1;
        contacts.Rmvd     = 0;
        contacts.Lckd     = 0;
        contacts.DtAdmssn = new Date();
        contacts.ChckTm   = moment(new Date()).format('HH:mm:ss');

        // Validate
        const validationOpt = { validationError: { target: false, value: false } };
        const errors        = await validate(Contacts, validationOpt);
        if(errors.length > 0) {
            return res.status(400).json(errors);
        }

        // TODO: Hash Password
        const ContactsRepository = getRepository(Contacts);
        try {
            await ContactsRepository.save(contacts);
        } catch(e) {
            return res.status(409).json({ message: 'Contacts already exist'});
        }

        // All ok
        res.send('Contacts created');
    };

    static edit = async (req: Request, res: Response) => {
        let contacts;
        const { Rfrnc } = req.params;
        const { Nm, Eml } = req.body;
        const ContactsRepository = getRepository(Contacts);
        // Try get Contacts
        try {
            contacts = await ContactsRepository.findOneOrFail(Rfrnc);
        } catch(e) {
            return res.status(404).json({ message: 'Contacts not found' });
        }        
        contacts.Nm       = Nm;
        contacts.Eml      = Eml;
        contacts.Cndtn    = 1;
        contacts.Rmvd     = 0;
        contacts.Lckd     = 0;
        contacts.DtAdmssn = new Date();
        contacts.ChckTm   = moment(new Date()).format('HH:mm:ss');

        const validationOpt = { validationError: { target: false, value: false } };
        const errors        = await validate(Contacts, validationOpt);
        if(errors.length > 0) {
            return res.status(400).json(errors);
        }

        // Try to save Contacts
        try {
            await ContactsRepository.save(contacts);
        } catch (e) {
            return res.status(409).json({ message: 'Contacts already exists' });
        }
        res.status(201).json({ message: 'Contacts update' });
    };

    static delete = async (req: Request, res: Response) => {
        const { Rfrnc } = req.params;
        const ContactsRepository = getRepository(Contacts);
        let contacts: Contacts;

        try {
            contacts = await ContactsRepository.findOneOrFail(Rfrnc);
        } catch(e) {
            return res.status(404).json({ message: 'Contacts not found' });
        }

        // Remove Contacts
        ContactsRepository.delete(Rfrnc);
        res.status(201).json({ message: 'Contacts deleted' });
    };
}

export default ContactsController;