package models;

typedef User = {
	firstName:String,
	lastName:String,
	username:String,
	email:String,
	phone:String,
	id:String,
	joinDate:Int,
	leaveDate:Int,
	customDates:Map<String, Int>,
	groups:Array<Int>
}
