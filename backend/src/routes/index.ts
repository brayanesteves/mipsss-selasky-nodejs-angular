import { Router } from 'express';
import auth from './auth';
import user from './user';
import legalpersons from './legalpersons';
import contacts from './contacts';

const routes = Router();
routes.use('/auth', auth);
routes.use('/users', user);
routes.use('/legalpersons', legalpersons);
routes.use('/contacts', contacts);

export default routes;