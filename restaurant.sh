echo "============WELCOME TO FORMOSO'S FAST FOOD RESTAURANT============"
echo "===================================MENU=========================="

echo "|||....FOOD NAME........SIZE........PRICE....|||"
echo "1....Burger..........200/300g...........130/180tk"
echo "2....Chicken Pizza............8/10inch...........120/150tk"
echo "3....French Fry..........300g...........70tk"
echo "4....Coke............300/400/1000img...........30/40/50tk"
echo "5....Coffee............250mg...........65tk"

echo "What do you want to order?"

read choice

if (($choice == 1))
then
echo "Which size of burger you want?\n"
echo "1. 200g 2. 300g"
read burger_size
	if (($burger_size == 1))
	then
	echo "How many burger do you want?\n"
	read burger_quantity
	price=`expr $burger_quantity \* 130`

	elif (($burger_size == 2))
	then
	echo "How many burger do you want?\n"
	read burger_quantity
	price=`expr $burger_quantity \* 180`
	fi

elif (($choice == 2))
then
echo "Which size of pizza you want?\n"
echo "1. 8inch 2. 10inch"
read pizza_size
	if (($pizza_size == 1))
	then
	echo "How many pizza do you want?\n"
	read pizza_quantity
	price=`expr $pizza_quantity \* 120`

	elif (($pizza_size == 2))
	then
	echo "How many pizza do you want?\n"
	read pizza_quantity
	price=`expr $pizza_quantity \* 150`
	fi

elif (($choice == 3))
then
echo "How many plate of French Fries do you want?\n"
read fry_quantity
	price=`expr $fry_quantity \* 70`

elif (($choice == 4))
then
echo "Which size of Coke you want?\n"
echo "1. 300ml 2. 400ml 3. 1000ml"
read coke_size
	if (($coke_size == 1))
	then
	echo "How many coke do you want?\n"
	read coke_quantity
	price=`expr $coke_quantity \* 30`

	elif (($coke_size == 2))
	then
	echo "How many coke do you want?\n"
	read coke_quantity
	price=`expr $coke_quantity \* 40`

	elif (($coke_size == 3))
	then
	echo "How many coke do you want?\n"
	read coke_quantity
	price=`expr $coke_quantity \* 50`
	fi

elif (($choice == 5))
then
echo "How many cups of Coffee do you want?\n"
read coffee_quantity
	price=`expr $coffee_quantity \* 65`
  fi

echo "Do you want to order 1 more item?"
echo "1. Yes 2. No"
read order_choice2

if (($order_choice2 == 1))
then
echo "What do you want to order as a second item?"

read choice
	if (($choice == 1))
then
echo "Which size of burger you want?\n"
echo "1. 200g 2. 300g"
read burger_size
	if (($burger_size == 1))
	then
	echo "How many burger do you want?\n"
	read burger_quantity
		price2=`expr $burger_quantity \* 130`

		elif (($burger_size == 2))
		then
		echo "How many burger do you want?\n"
		read burger_quantity
		price2=`expr $burger_quantity \* 180`
		fi

	elif (($choice == 2))
	then
	echo "Which size of pizza you want?\n"
	echo "1. 8inch 2. 10inch"
	read pizza_size
		if (($pizza_size == 1))
		then
		echo "How many pizza do you want?\n"
		read pizza_quantity
		price2=`expr $pizza_quantity \* 120`

		elif (($pizza_size == 2))
		then
		echo "How many pizza do you want?\n"
		read pizza_quantity
		price2=`expr $pizza_quantity \* 150`
		fi

	elif (($choice == 3))
	then
	echo "How many plate of French Fries do you want?\n"
	read fry_quantity
		price2=`expr $fry_quantity \* 70`

	elif (($choice == 4))
	then
	echo "Which size of Coke you want?\n"
	echo "1. 300ml 2. 400ml 3. 1000ml"
	read coke_size
		if (($coke_size == 1))
		then
		echo "How many coke do you want?\n"
		read coke_quantity
		price2=`expr $coke_quantity \* 30`

		elif (($coke_size == 2))
		then
		echo "How many coke do you want?\n"
		read coke_quantity
		price2=`expr $coke_quantity \* 40`

		elif (($coke_size == 3))
		then
		echo "How many coke do you want?\n"
		read coke_quantity
		price2=`expr $coke_quantity \* 50`
		fi

	elif (($choice == 5))
	then
	echo "How many cups of Coffee do you want?\n"
	read coffee_quantity
		price2=`expr $coffee_quantity \* 65`
		fi

echo "Your Total Bill is:"$((price+price2))
echo "Please pay the bill and wait for collecting the food!"
echo "Thank you for using our service! :)"

elif (($order_choice2 == 2))
then
echo "Your Total Bill is:"$price
echo "Please pay the bill and wait for collecting the food!"
echo "Thank you for using our service! :)"
fi