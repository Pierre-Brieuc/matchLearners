const jwt = require('jsonwebtoken');
const {render} = require('ejs')

const maxAge = 1800;


module.exports = {
    getSignup(req,res) {
        res.render('signup');
    },

    getLogin(req,res){
        res.render('login');
    },
    async postSignup(req,res){
        const {mail,passwordz} = req.body;

        try {
            
        } catch (error) {
            console.error('Error in a signup request ', error);
            res.status(400);
        }
    },

    async postLogin(req,res){
        const {mail,password}= req.body;
        try {
            
        } catch (error) {
            console.error('Could not login, check for the credentials ', error);
            res.status(400);
        }
    },
    getLogout(req,res){
        res.cookie('jwt','',{maxAge:1});
        res.redirect('/');
    }


}