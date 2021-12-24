Syntax:

fn function_name(var_name: type) -> return_type {
	body
}

Examples:

fn is_allowed (age: i32) -> bool {
	if age > 18 {
		return true
	} else {
		return false
	}
}

or 

fn is_allowed (age: i32) -> bool {
	if age > 18 {
		true // we can return the expression directly
	} else {
		false // we can return the expression directly
	}
}

or 

fn is_allowed (age: i32) -> bool {
	age > 18 // we can return the expression directly
}

This short way above is preferred