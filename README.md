# Project-2 
# project_food_app_flutter
## Details:
I have create 6 screens :

1. logo screen
2. sign in screen
3. sign up screen
4. home screen
5. order screen
6. profile screen

All contents will be explained sequentially , So you better follow it

in lib folder there are :

1. extensions folder :
	- get_color.dart : it is contain a method helps while the user click an elevated buttom the color will change.

2. screens folder : these files contain Scaffold widgets and calling the custom widgets that I have build.
	- logo.dart
	- sign_in.dart
	- sign_up.dart
	- home.dart
	- order.dart
	- profile.dart
	- nav_bar.dart => contain list with  home screen , order screen and profile screen

3. widgets folder : in this folder it is contain the customs widget for each screen

 

		- custom_sign_in_up_widgets folder => for logo , sign in and sign up screen
		
			- logo_screen.dart => logo screen 
			- custom_logo_pic.dart
			- custom_choose_sign_in_up.dart => logo screen
			- custom_sign_in_up_appbar.dart  => sign in and sign up screens
			- custom_connect_with.dart => sign in and sign up screens
			- custom_sign_in.dart => sign in screen
			- custom_sign_up.dart => sign up screen

note: I use the controller in custom_sign_in.dart file and custom_sign_up.dart file and i write code to check that if the controller will take the value that the user will enter it is in custom_sign_up.dart file in line 201 to 216.

logo screen :


![logo screen](https://github.com/rahafwmaq/Project-2/assets/86989761/7373ba5f-bcef-4109-a3a6-1f93bd0e52f9)


sign in screen : 


![Sign_in_screen](https://github.com/rahafwmaq/Project-2/assets/86989761/bc5c1717-6bc6-4530-85a3-981c87fb8c7d)


sign up screen : 


![Sign_up_screen](https://github.com/rahafwmaq/Project-2/assets/86989761/af09a0c5-0aee-4f1b-9528-e26334c68661)




	- custom_home_widgets folder => for home screen
	
		- custom_home_screen.dart
		- custom_home_search_text_field.dart
		- custom_home_location.dart
		- custom_home_food_section.dart
		- custom_home_food_menu folder
			- custom_text_food_menu.dart
			- custom_food_menu.dart
		- custom_home_near_me folder
			- custom_text_near_me.dart
			- custom_near_me.dart
			- custom_container_pic.dart
			- custom_text_restaurant_info.dart

home screen :


![home1_screen](https://github.com/rahafwmaq/Project-2/assets/86989761/d178ed93-c180-412a-b4e0-66b108e7a93b)



![home2_screen](https://github.com/rahafwmaq/Project-2/assets/86989761/db6e407d-9a84-461a-a9c7-f917f4d19156)


	- custom_order_widgets folder => for order screen

		- custom_order.screen.dart
		- custom_order_appbar.dart
		- custom_order_review_food.dart
		- custom_order_info_widgets folder 
			- custom_text_order_review_food
			- custom_like_colored.dart
			- custom_like_uncolored.dart
			- custom_dislike_colored.dart
			- custom_dislike_uncolored.dart
		- custom_order_send_buttom.dart

note : I used custom_container_pic.dart file that located in lib\widgets\custom_home_widgets\custom_home_near_me\custom_container_pic.dart and use it in custom_order_review_food.dart file

order screen :


![order_screen](https://github.com/rahafwmaq/Project-2/assets/86989761/cef2f884-d781-416f-8a5a-f58cef16a237)



	- custom_profile_widgets folder => for profile screen
	
		- custom_profile_screen.dart
		- custom_profile_pic.dart
		- custom_profile_name.dart
		- custom_profile_phone_number.dart
		- custom_profile_info.dart
		- custom_profile_signout_buttom.dart

profile screen :


![profile_screen](https://github.com/rahafwmaq/Project-2/assets/86989761/9611ba78-f2f8-4245-b464-79e965d5cf50)


4. main.dart => is the main calling logo screen.

5. customicons.dart => is the icons that i have donwnloaded for Navigation Bar.
