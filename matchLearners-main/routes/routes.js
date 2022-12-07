import { Router } from 'express';
const authController = require('../controllers/authentication.controller')
const globalController = require('../controllers/global.controller')

const router=Router();

router.get('/signup',authController.getSignup);

router.get('/login',authController.getLogin);

router.get('/profile');
router.get('logout',authController.getLogout);
router.get('/',globalController.getHome);

router.post('/login',authController.postLogin);
router.post('/signup',authController.postSignup);
//router.post('/profile');



module.exports = router;
