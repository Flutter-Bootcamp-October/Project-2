import 'package:first/afterloginpage.dart';
import 'package:flutter/material.dart';

class SignInpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      
      
       body: 
        Center(
          child: Column(children: [
            SizedBox(height: 200,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Sign in",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              
            )
           , SizedBox(height: 20,)
            ,ClipRRect(
              
              borderRadius: BorderRadius.circular(25),
              child: Container(width: 350,height: 50,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Username",style: TextStyle(color: Colors.grey),),
              ),
              ),
            )
            ,SizedBox(height: 20,)
            ,ClipRRect(
              
              borderRadius: BorderRadius.circular(25),
              child: Container(width: 350,height: 50,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Password",style: TextStyle(color: Colors.grey),),
                
              ),
              ),
            )
            ,SizedBox(height: 20,)
            ,Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(primary: Colors.orange[900],fixedSize: Size(350, 55)),
                  
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
                  },
                  child: Text("Sign Up"),
                ),
              ),
            ),
            Container(child: Padding(
              padding: const EdgeInsets.only(left: 225,top: 15),
              child: Text("Forgot Password?"),
          
          
          
            ),
            
            )
            ,Container(child: Padding(
              padding: const EdgeInsets.only(left: 225,top: 15),
            
            ),)
           ,SizedBox(height: 30,)
             ,Row(
    children: <Widget>[
        Expanded(
            child: Divider()
        ),       

        Text("Or Connect with    "),    

        

       
    ]
)
             
               ,Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 280,top: 30),
                  child: Row(children: [
                    
                Container(child: Image.asset("imges\\facebook.png"),)
                ,SizedBox(width: 10,)
                ,Container(child: Image.asset("imges\\google.png"),)
                  ],),
                )
          
        ],)  
           
          ],
          
          ),
          
        )
    
    );
  }
}

class SignUppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( appBar: AppBar(
      leading: BackButton(color: Colors.black,
        onPressed: () => Navigator.pop(context)
      ),
      elevation: 0,backgroundColor: Color.fromARGB(0, 0, 0, 0),
    ),
      body: 
    
   Center(
          child: Column(children: [
            SizedBox(height: 200,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Sign Up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              
            )
           , SizedBox(height: 20,)
            ,ClipRRect(
              
              borderRadius: BorderRadius.circular(25),
              child: Container(width: 350,height: 50,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Enter Username",style: TextStyle(color: Colors.grey),),
              ),
              ),
            )
             , SizedBox(height: 20,)
            ,ClipRRect(
              
              borderRadius: BorderRadius.circular(25),
              child: Container(width: 350,height: 50,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Enter Password",style: TextStyle(color: Colors.grey),),
              ),
              ),
            )
            ,SizedBox(height: 20,)
            ,ClipRRect(
              
              borderRadius: BorderRadius.circular(25),
              child: Container(width: 350,height: 50,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Re-enter Password ",style: TextStyle(color: Colors.grey),),
                
              ),
              ),
            )
            ,SizedBox(height: 20,)
            ,Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(primary: Colors.orange[900],fixedSize: Size(350, 55)),
                  
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
                  },
                  child: Text("Sign In"),
                ),
              ),
            ),
            Container(child: Padding(
              padding: const EdgeInsets.only(left: 225,top: 15),
              child: Text("Forgot Password?"),
            ),)
           ,SizedBox(height: 30,)
             ,Row(
    children: <Widget>[
        Expanded(
            child: Divider()
        ),       

        Text("Or Connect with    "),    

        

       
    ]
)
             
               ,Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 280,top: 30),
                  child: Row(children: [
                    
                Container(child: Image.asset("imges\\facebook.png"),)
                ,SizedBox(width: 10,)
                ,Container(child: Image.asset("imges\\google.png"),)
                  ],),
                )
          
        ],)  
           
          ],
          
          
          ),
        )
    
    ,);
  }
}

class FirstHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( body: 
    Center(
      child:
      Text("FirstHomepage")
    )
    
    ,);
  }
}



class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( body: 
    Center(
      child:
      Text("OrderPage")
    )
    
    ,);
  }
}


class Localpage extends StatefulWidget {
  Localpage({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int number1 = 0;

class _HomeScreenState extends State<Localpage> {
  int current = 1;
  Color screencolor = Color.fromARGB(255, 223, 100, 100);
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
      
      
      
       SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.orangeAccent,
                  width: 300,
                  height: 300,
                  child: Image.asset("imges\\bruger.png"),
                ),
              ),
            ),
            SizedBox(height: 59),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(primary: Colors.orange,fixedSize: Size(300, 55)),
                  
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUppage()));
                  },
                  child: Text("Sign Up"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(primary: Colors.grey[700],fixedSize: Size(300, 55)),

                  onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInpage()));
                  },
                  
                 // color: Colors.amber,
                  //padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                     child: Text("Sign In"),
                ),
              ),
            ),
            Container(child: Padding(
              padding: const EdgeInsets.only(left: 225,top: 15),
             
            ),)
           ,SizedBox(height: 30,)
             ,Row(
    children: <Widget>[
        Expanded(
            child: Divider()
        ),       

        Text("Or Connect with    "),    

        

       
    ]
)
             
               ,Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 280,top: 30),
                  child: Row(children: [
                    
                Container(child: Image.asset("imges\\facebook.png"),)
                ,SizedBox(width: 10,)
                ,Container(child: Image.asset("imges\\google.png"),)
                  ],),
                )
          
        ],)  
           
          ],
        ),
      ),
    );
  }
}
