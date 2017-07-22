# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* ```bundle```
* ```rake db:setup```
* Navigate to localhost:3000 in your web browser.


# Goals:

AJAX:
* Add products to cart with AJAX. Item goes to cart, number of items increases by one. DONE
* Product details with AJAX. DONE
  * Add a description field to product
  * Seed a description
* Delete with ajax. Remove from shopping cart, adjust price. DONE

FURTHER

* Resize things so they don't look terrible DONE
* Fix the bug with a default value of one/make the field required, make the site validate that it's a positive number
* Implement rails  DONE
* Add flash messages for signing in, updating, signing out DONE
* Add flash messages for adding, updating, deleting products. DONE
* Add paperclip for product image upload
