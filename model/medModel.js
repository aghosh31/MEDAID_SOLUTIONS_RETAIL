var db = require('./db');

module.exports={

	get: function(userId, callback){
		var sql = "select * from products where id=?";

		db.getResult(sql, [userId], function(result){
			callback(result);
		});
	},
	getAll: function(callback){
		var sql = "select * from products";
		db.getResult(sql, [], function(results){
			callback(results);
		});
	},
	getAllOrders: function(callback){
		var sql = "Select * from Enquiry";
		db.getResult(sql, [], function(results){
			callback(results);
		});
	},
	validate: function(user, callback){
		var sql = "select * from users where username=? and password=?";

		db.getResult(sql, [user.uname, user.password], function(result){
			callback(result);
		});
	},
	insert: function(user, callback){
		var sql = "insert into products values (NULL,?,?,?,?,?,?,?,?)";
		db.execute(sql, [user.name, user.price, user.med_desc,user.category, user.image, user.vendor,user.type, user.availability], function(status){
			callback(status);
		});
	},
	insertOrder: function(user, callback){
		var sql = "insert into Enquiry(name, email, date, phone, message,requestType) values (?,?,?,?,?,?)";
		db.execute(sql, [user.name, user.email, user.date, user.phone, user.message, user.requestType], function(status){
			callback(status);
		});
	},

	update: function(user, callback){
		var sql = "update user set username=?,password=?, type=? where id=?";
		db.execute(sql, [user.uname, user.password,user.type, user.id], function(status){
			callback(status);
		});
	},
	updateMedInfo: function(user, callback){
		var sql = "UPDATE products SET name= ? , price= ? , description= ? , category= ? , vendor= ? , type= ? , availability= ?  where id= ?";
		db.execute(sql, [user.result.name, user.result.price,user.result.med_desc, user.result.category, user.result.vendor, user.result.type, user.result.availability, user.id], function(status){
			callback(status);
		});
	},
	delete: function(userId, callback){
		var sql = "delete from products where id=?";
		db.execute(sql, [userId], function(status){
			callback(status);
		});
	}
}
