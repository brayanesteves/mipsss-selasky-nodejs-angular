import {Entity, PrimaryGeneratedColumn, Column, Unique, CreateDateColumn, UpdateDateColumn } from "typeorm";
import { MinLength, IsNotEmpty } from "class-validator";
import * as bcrypt from 'bcryptjs';

@Entity({name: "0_usrs"})
//@Unique(['Usrnm'])
export class User {

    @PrimaryGeneratedColumn()
    Rfrnc: number;

    @Column()
    Usrnm: string;

    @Column()
    Psswrd: string;

    @Column()
    Rfrnc_Prsn: number;

    @Column()
    UsrTyp_Rfrnc: number;

    @Column()
    Cndtn: number;

    @Column()
    Rmvd: number;

    @Column()
    Lckd: number;

    @Column()
    @CreateDateColumn()
    DtAdmssn: Date;

    @Column()
    ChckTm: string;

    hashPassword(): void {
        const salt  = bcrypt.genSaltSync(10);
        this.Psswrd = bcrypt.hashSync(this.Psswrd, salt);
    }

    checkPassword(Psswrd: string): boolean {
        return bcrypt.compareSync(Psswrd, this.Psswrd);
    }
}
