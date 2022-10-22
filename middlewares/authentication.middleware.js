const jwt = require('jsonwebtoken')



const authCheck = (req,res,next) =>{
    const token = req.cookies.jwt;

    if(token){
        jwt.verify(token, )
    } else {
        res.redirect('/login');
    }
};