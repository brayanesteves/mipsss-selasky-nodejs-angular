import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";
import { MinLength, IsNotEmpty } from "class-validator";
import * as bcrypt from 'bcryptjs';

@Entity({name: "0_LglPrsns"})
export class LglPrsns {

    @PrimaryGeneratedColumn()
    Rfrnc: number;

    @Column()
    Rfrnc_Ncnlty: number;

    @Column()
    Rfrnc_Cntry: number;

    @Column()
    TxIdntfctn: string;

    @Column()
    RfrntlPhnNmbr: string;

    @Column()
    TxAddrss: string;

    @Column()
    Cndtn: number;

    @Column()
    Rmvd: number;

    @Column()
    Lckd: number;

    @Column()
    DtAdmssn: Date;

    @Column()
    ChckTm: string;
}
