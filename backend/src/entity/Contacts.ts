import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";
import { MinLength, IsNotEmpty, IsEmail } from "class-validator";
import * as bcrypt from 'bcryptjs';

@Entity({name: "0_Cntcts", synchronize: false})
export class Contacts {

    @PrimaryGeneratedColumn()
    Rfrnc: number;

    @Column()
    Nm: string;

    @Column()
    @IsEmail()
    Eml: string;
    
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
