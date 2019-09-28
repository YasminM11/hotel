1.What classes does each implementation include? Are the lists the same?

-Each implementation include three classes: CartEntry, ShoppingCart, Order

2.Write down a sentence to describe each class.

-CartEntry has an initialize method assigned the values of the local variables unit-price, quantity to an instance variable  @unit_price and @quantity.
-ShoppingCart has an empty array that responsible to store all the entries in @entries.
-Order calculate the total_price and TAX.


3.How do the classes relate to each other? It might be helpful to draw a diagram on a whiteboard or piece of paper.

-each class contains data to the other class for example:
the order class created an instance of ShoppingCart which has all the entries and also has a method to calculate the price and tax by using the data from cart entries.


4.What data does each class store? How (if at all) does this differ between the two implementations?

-CartEntry: unit_price and quantity.
-ShoppingCart: 
Implementation A: entries
Implementation B: entries and total price of the entries.
-Order: cart,the total price and the tax.


5.What methods does each class have? How (if at all) does this differ between the two implementations?

-Implementation A: 
CartEntry:  constructor method.
ShoppingCart: constructor method.
Order: constructor and total_price method.
-Implementation B: 
CartEntry: constructor method and price.
ShoppingCart: constructor method and price.
Order: constructor and total_price method.

6.Consider the Order#total_price method. In each implementation:
Is logic to compute the price delegated to "lower level" classes like ShoppingCart and CartEntry, or is it retained in Order?

-Implementation A: the Order#total_price method is retained in Order.
-Implementation B: Is logic to compute the price delegated to "lower level" classes like ShoppingCart and CartEntry.


7.Does total_price directly manipulate the instance variables of other classes?

-In Implementation A: yes
In Implementation B: no, because it just accessing the instance variables.  


8.If we decide items are cheaper if bought in bulk, how would this change the code? Which implementation is easier to modify?
In Implementation A: we can keep it inside the total-price method, and check if the quantity bigger than a certain amount and change the price of the item. 
In Implementation B: we can apply inside the price method in the CartEntry class by  checking if the quantity bigger than a certain amount and change the price of the item. 


9.Which implementation better adheres to the single responsibility principle?
In Implementation B better adheres to the single responsibility principle.
,so that each class is responsible for its own method, and in the same time make the code more flexible to add or test in the future. 


##Bonus question once you've read Metz ch. 3: Which implementation is more loosely coupled?

In my Hotel project:I have three classes:
The class Reservation is responsible for calculate the total_days_cost.
The hotel_system class is responsible for  available_rooms, make_reservation.
The date_range class to control the days for the guests and the overlap date-range.
so, I think in my project each class has it is own responsibility. 