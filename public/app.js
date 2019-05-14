function something()
	{
		alert('Hello');
	}

var x=1

function increment()
	{
		alert(x);
		x= x+1;
	}


function something_1()
	{
		var x = window.localStorage.getItem('aaa');

		window.localStorage.setItem('aaa',  555);
		
		alert(x);
	}



function something_2()
	{
		var x = window.localStorage.getItem('aaa');

		x = x*1 +1;  //x to int use *

		window.localStorage.setItem('aaa',  x);
		
		alert(x);
	}