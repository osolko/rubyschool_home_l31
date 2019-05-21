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
		var x = window.localStorage.getItem('bbb');

		x = x*1 +1;  //x to int use *

		window.localStorage.setItem('bbb',  x);
		
		alert(x);
	}


function add_to_cart(id)
	{
		var key = 'product_' + id

		var x = window.localStorage.getItem(key);
		x = x * 1 +1;
		window.localStorage.setItem(key,  x);

		alert('Item in cart: ' + cart_get_number_of_items())

	}


function cart_get_number_of_items()
	{
		var cnt = 0;
		for(var i=0; i < window.localStorage.length; i++)	
			{
				var key = window.localStorage.key(i); 			//get key from hash
				var value = window.localStorage.getItem(key); 	//get value from hash

				if (key.indexOf('product_') == 0)
					{
						cnt = cnt + value * 1;
					}
			}
			return cnt;
	}


function cart_get_orders()
{
	var orders = '';
	for(var i=0; i < window.localStorage.length; i++)	
		{
			var key = window.localStorage.key(i); 			//get key from hash
			var value = window.localStorage.getItem(key); 	//get value from hash

			if (key.indexOf('product_') == 0)
				{
					orders = orders + key + value + ',' ;
				}
		}
		return orders;
}

