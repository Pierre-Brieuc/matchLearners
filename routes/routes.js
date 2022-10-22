import { Router } from 'express';
const authController = require('../controllers/authentication.controller')

const router=Router();

router.get('/signup',authController.getSignup);

router.get('/login',authController.getLogin);

router.get('/profile');
router.get('logout',authController.getLogout);
router.get('/');

router.post('/login',authController.postLogin);
router.post('/signup',authController.postSignup);
roouter.post('/profile');



module.exports = router;
