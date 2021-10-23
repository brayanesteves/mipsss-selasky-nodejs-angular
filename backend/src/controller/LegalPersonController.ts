import {getRepository} from "typeorm";
import {NextFunction, Request, Response} from "express";
import { LglPrsns } from "../entity/LegalPersons";
import { validate } from 'class-validator';
import * as moment from 'moment';

export class LegalPersonController {
    //
    static getAll = async (req: Request, res: Response) => {
        const lglPrsnsRepository = getRepository(LglPrsns);
        let lglPrsnss;
        try {
           lglPrsnss = await lglPrsnsRepository.find();
        } catch(e){
            res.status(404).json({ message: 'Something goes wrong!' });
        }

        if (lglPrsnss.length > 0) {
            res.send(lglPrsnss);
        } else {
            res.status(404).json({ message: 'Not result' });
        }
    };

    static getByRfrnc = async (req: Request, res: Response) => {
        const { Rfrnc } = req.params;
        const lglPrsnsRepository = getRepository(LglPrsns);
        try {
            const lglPrsns = await lglPrsnsRepository.findOneOrFail(Rfrnc);
            res.send(lglPrsns);
        } catch(e) {
            res.status(404).json({ message: 'Not result' });
        }
    };

    static new = async (req: Request, res: Response) => {
        const { Rfrnc_Ncnlty, Rfrnc_Cntry, TxIdntfctn, RfrntlPhnNmbr, TxAddrss } = req.body;
        const lglPrsns         = new LglPrsns();
        lglPrsns.Rfrnc_Ncnlty  = Rfrnc_Ncnlty;
        lglPrsns.Rfrnc_Cntry   = Rfrnc_Cntry;
        lglPrsns.TxIdntfctn    = TxIdntfctn;
        lglPrsns.RfrntlPhnNmbr = RfrntlPhnNmbr;
        lglPrsns.TxAddrss      = TxAddrss;
        lglPrsns.Cndtn         = 1;
        lglPrsns.Rmvd          = 0;
        lglPrsns.Lckd          = 0;
        lglPrsns.DtAdmssn      = new Date();
        lglPrsns.ChckTm        = moment(new Date()).format('HH:mm:ss');

        // Validate
        const validationOpt = { validationError: { target: false, value: false } };
        const errors        = await validate(lglPrsns, validationOpt);
        if(errors.length > 0) {
            return res.status(400).json(errors);
        }

        // TODO: Hash Password
        const lglPrsnsRepository = getRepository(LglPrsns);
        try {
            await lglPrsnsRepository.save(lglPrsns);
        } catch(e) {
            return res.status(409).json({ message: 'Legal Persons already exist' + res});
        }

        // All ok
        res.send('Legal Persons created');
    };

    static edit = async (req: Request, res: Response) => {
        let lglPrsns;
        const { Rfrnc } = req.params;
        const { Rfrnc_Ncnlty, Rfrnc_Cntry, TxIdntfctn, RfrntlPhnNmbr, TxAddrss } = req.body;
        const lglPrsnsRepository = getRepository(lglPrsns);
        // Try get lglPrsns
        try {
            lglPrsns = await lglPrsnsRepository.findOneOrFail(Rfrnc);
        } catch(e) {
            return res.status(404).json({ message: 'Legal Persons not found' });
        }        
        lglPrsns.Rfrnc_Ncnlty  = Rfrnc_Ncnlty;
        lglPrsns.Rfrnc_Cntry   = Rfrnc_Cntry;
        lglPrsns.TxIdntfctn    = TxIdntfctn;
        lglPrsns.RfrntlPhnNmbr = RfrntlPhnNmbr;
        lglPrsns.TxAddrss      = TxAddrss;
        lglPrsns.Cndtn         = 1;
        lglPrsns.Rmvd          = 0;
        lglPrsns.Lckd          = 0;

        const validationOpt = { validationError: { target: false, value: false } };
        const errors        = await validate(lglPrsns, validationOpt);
        if(errors.length > 0) {
            return res.status(400).json(errors);
        }

        // Try to save lglPrsns
        try {
            await lglPrsnsRepository.save(lglPrsns);
        } catch (e) {
            return res.status(409).json({ message: 'Legal Persons already exists' });
        }
        res.status(201).json({ message: 'Legal Persons update' });
    };

    static delete = async (req: Request, res: Response) => {
        const { Rfrnc } = req.params;
        const lglPrsnsRepository = getRepository(LglPrsns);
        let lglPrsns: LglPrsns;

        try {
            lglPrsns = await lglPrsnsRepository.findOneOrFail(Rfrnc);
        } catch(e) {
            return res.status(404).json({ message: 'Legal Persons not found' });
        }

        // Remove lglPrsns
        lglPrsnsRepository.delete(Rfrnc);
        res.status(201).json({ message: 'Legal Persons deleted' });
    };
}

export default LegalPersonController;