const jwt = require('jsonwebtoken');





module.exports = {
    getSignup(req,res) {
        res.render('signup');
    },

    getLogin(req,res){
        res.render('login');
    },
    async postSignup(req,res){
        const {mail,password}=req.body;

        try {
            
        } catch (error) {
            console.error('Error in a signup request ', error);
            res.status(400);
        }
    },

    async postLogin(req,res){

        try {
            
        } catch (error) {
            
        }
    },
    getLogout(req,res){
        res.cookie('jwt','',{maxAge:1});
        res.redirect('/');
    }


}