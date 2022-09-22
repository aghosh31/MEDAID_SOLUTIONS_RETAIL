var express = require('express');
var userModel = require.main.require('./model/medModel');
var router = express.Router();


router.get('/', (req, res)=>{

	userModel.getAll(function(results){
		if(results.length > 0){

			var allData = {
				name: req.session.name,
				result: results
			};
			res.render('home/meds', allData);
		}
	});
});


router.get('/ordermed/:id', (req, res)=>{

	userModel.get(req.params.id, function(result){
		if(result.length >0 ){
			var allData= {
				result : result[0],
				message : ''
			};
			res.render('med-booking', allData);
		}else{
			res.redirect('/');
		}
	});
});


router.post('/', (req, res)=>{

	var user = {
		name: req.body.name,
		email: req.body.email,
		date: req.body.date,
		phone: req.body.phone,
		requestType: req.body.requestType,
		message: req.body.message
	};

	userModel.insertOrder(user, function(results) {
			res.redirect('/');
	});

});






module.exports = router;
