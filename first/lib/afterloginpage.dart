
import 'package:first/pages.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( body: 
    
    
    
   Center(
     child: SafeArea(
      
       child: Column(
        
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
            
              child: Image.asset("imges\\profile.png"),
            ),
          )
         , SizedBox(height: 20,)
          ,Text("Itoh",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ,SizedBox(height: 10,)
          ,Text("1 11229382748",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
         , 

        
         profilesc(name: "My Profile",),
          profilesc(name: "Change Password",),
           profilesc(name: "Payment Settings",),
            profilesc(name: "My Voucher",),
             profilesc(name: "Notification",),
              profilesc(name: "About Us",),
              profilesc(name: "Contact Us",),
         
         
         SizedBox(height: 10,),
           ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
             child: Container(
                     color: Color.fromARGB(52, 180, 171, 171),
                     width: 350,
                     height: 50,
                     child: Center(child: Text("Sign Out",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
           )
          
        ],
        
    
       ),
     ),
     
   )
   
    ,);
  }
}

class profilesc extends StatelessWidget {
   profilesc({
    this.name,
    
    super.key,
  });
String? name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
    
         Text(name!),
         
         Icon(Icons.chevron_right)
           
       ],
      ),
    );
  }
}

class Loginscreen extends StatefulWidget {
   Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
int selected =0;
final pagelist =[
FirstHomepage(),OrderPage(),ProfilePage()];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
      
           elevation: 0,backgroundColor: Color.fromARGB(0, 0, 0, 0),

      ),
    
      body:
      pagelist[selected],

bottomNavigationBar: BottomNavigationBar(
  
  currentIndex: selected,
  items: [
  
  
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Order'),
  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
  
],

onTap: (Index) {
   setState(() {
    selected=Index;
  });
 
},
),        
    );
  }
}


class FirstHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( body: 
 Center(
   child: Column(children: [
    Text("Review Food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      ,foods()
      ,foods()
      ,foods(),
      SizedBox(height: 200,)
          , ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(primary: Colors.orange[800],fixedSize: Size(350, 55)),

                  onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInpage()));
                  },
                  
                 // color: Colors.amber,
                  //padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                     child: Text("send",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                ),
              ),
    
   ],
   
   
   
   ),
 )
    
    ,);
  }
}



class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( body: 
   Column(children: [
    Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.grey[300],width: 350,height: 45,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search_outlined),
              )
              ,Text("Serch")
            ],
          ),
        ),
      ),
    ),
    Container(
      child: Row(children: [
         Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.location_on),
              )
               ,Text("9 west 46 Th Street,New York City")
      ],),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
Container(child: Column(
     
      children: [
      
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(height: 70,width: 70,color: Colors.grey,
          child: Icon(Icons.coffee_outlined),),
          
      ),
       Text("Drink")
      
     
        
    ],
    ),
    )
    ,Container(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(height: 70,width: 70,color: Colors.orange[900],
          child: Icon(Icons.fastfood_rounded),),
          
      ),
       Text("Food")
      
     
        
    ],
    ),
    )
   , Container(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(height: 70,width: 70,color: Colors.grey,
          child: Icon(Icons.cake_outlined),),
          
      ),
       Text("Cake")
      
     
        
    ],
    ),
    )
   
    
    ,Container(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(height: 70,width: 70,color: Colors.grey,
          child: Icon(Icons.icecream_outlined),),
          
      ),
       Text("Snack")
      
     
        
    ],
    ),
    )
    ],
    )
    ,SizedBox(height: 30,)
    ,Row(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Food menu",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold),),

      )
    ],
    )
    ,SizedBox(height: 10,)
  ,Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Stack(
  children: <Widget>[
    ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(15),
      child: Container(
        width: 130,
        height: 130,
        color: Colors.blue[100],
      ),
    ),
    Container(child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text("Burgers",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
    ),),
    Container(child: Image.asset("imges\\burger.png"),)
   
    
  ],
),
Stack(
  children: <Widget>[
    ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(15),
      child: Container(
        width: 130,
        height: 130,
        color: Colors.pink[100],
      ),
    ),
    Container(child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text("Pizza",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
    ),),
    Container(child: Image.asset("imges\\piza.png"),)
   
    
  ],
),

  ],
  )
  ,Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Near me",style: TextStyle(fontSize: 25),),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("view all"),
    )

  ],)
  ,food2()
   ],
   )
    
    
    ,);
  }
}

class menu extends StatelessWidget {
  const menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(15),
      child: Container(color: Colors.blue,height: 100,width: 100,));
  }
}


class foods extends StatelessWidget {
  const foods({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
    Row(children: [
     Container(
      padding: EdgeInsets.only(top: 20,left: 30),
      child: Image.asset("imges\\food.png"),
      
    )
    ,Padding(
      padding: const EdgeInsets.only(bottom: 0,left: 30,top: 30),
      child: Column(children: [
        Text("Dogmie jagong tutung",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 5),
          child: Row(children: [
            Icon(Icons.thumb_up_outlined),
            SizedBox(width: 10,),
            Text("999+"),
            Text("  |  "),
             Icon(Icons.thumb_down_alt_outlined),
            SizedBox(width: 10,),
              Text("93+"),
             
             
              
          ],),
        )
        ,SizedBox(height: 5,)
        
        ,Padding(
          padding: const EdgeInsets.only(right: 90,),
          child: Text("\$99.99",style:TextStyle(color: Colors.greenAccent[700]),),
        )
      ],),
    )

    ],)

    ],);
  }
}



class food2 extends StatelessWidget {
  const food2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
    Row(children: [
     Container(
      padding: EdgeInsets.only(top: 20,left: 30),
      child: Image.asset("imges\\food.png",height: 129,width: 120,fit: BoxFit.fitWidth,),
      
    )
    ,Padding(
      padding: const EdgeInsets.only(bottom:20,),
      child: Column(children: [
        Text("Dogmie jagong tutung",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 5),
          child: Row(children: [
            Icon(Icons.location_on_sharp),
            
            Text("13 th Street,46 W 12th St, NY"),
            
          ],
          ),

        )
        ,Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Row(children: [
            Icon(Icons.punch_clock_outlined),
          Text("  3 min-1.1km"),
          ],),
        )
        
        ,SizedBox(height: 5,)
        ,Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Row(children: [
         Icon(Icons.star,color: Colors.yellow[600],size: 20,),
         Icon(Icons.star,color: Colors.yellow[600],size: 20,),
         Icon(Icons.star,color: Colors.yellow[600],size: 20,),
         Icon(Icons.star,color: Colors.yellow[600],size: 20,),
         Icon(Icons.star,color: Colors.yellow[600],size: 20,),
          ],),
        )
      
      ],),
    )

    ],)

    ],);
  }
}


