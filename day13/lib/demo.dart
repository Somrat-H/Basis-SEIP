import 'package:day13/homepage.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController  emailController =TextEditingController();

  TextEditingController  passwordController =TextEditingController();
  TextEditingController  passwordController2 =TextEditingController();

  bool isObsecure=false;

  GlobalKey<FormState> _formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(

            image: DecorationImage(
              image: NetworkImage("https://png.pngtree.com/background/20210711/original/pngtree-light-blue-background-picture-image_1131725.jpg"),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              child: CircleAvatar(

                radius: 25,
                child: Icon(Icons.arrow_back_ios,color: Colors.blue,),backgroundColor: Colors.white,
              ),
              ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                child: Text("Welcome \nBack",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w700),),
              ),
              // Spacer(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                ),
                height: 500,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      TextFormField(
                        controller: emailController,
                        validator: (value){
                          if(value!.isEmpty){
                            return "Email can't be empty";
                          }
                          if(value.length <3){
                            return "Invalid Email";
                          } if(!value.contains("@")){
                            return "Invalid User email";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(

                          fillColor: Colors.blue.withOpacity(0.2),
                           filled: true,
                           hintText: "Enter your Email",
                          labelText: "Enter your Email",
                          hintStyle: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),
                          prefixIcon: Icon(Icons.email) ,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(
                            color: Colors.blue
                          )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),borderSide: BorderSide(
                              color: Colors.blue
                          )
                          ),
                        ),

                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        onEditingComplete: (){
                          if(_formKey.currentState!.validate()){
                            print(" Successfull");
                          }else{

                          }
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password can't be empty";
                          }
                          if(value.length <3){
                            return "Invalid Password";
                          }  if(value.length >10){
                            return "Invalid Password";
                          }
                        },
                        controller: passwordController,
                        obscureText: isObsecure,
                        keyboardType:TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                isObsecure=!isObsecure;
                              });
                            },
                          icon: Icon(Icons.visibility),
                          ),
                          fillColor: Colors.blue.withOpacity(0.2),
                           filled: true,
                           hintText: "Enter your Password",
                          labelText: "Enter your Password",
                          hintStyle: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),
                          prefixIcon: Icon(Icons.email) ,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(
                            color: Colors.blue
                          )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),borderSide: BorderSide(
                              color: Colors.blue
                          )
                          ),
                        ),

                      ),   TextFormField(
                        onEditingComplete: (){
                          if(_formKey.currentState!.validate()){
                            print(" Successfull");
                          }else{

                          }
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password can't be empty";
                          }
                          if(value.length <3){
                            return "Invalid Password";
                          }  if(value.length >10){
                            return "Invalid Password";
                          }
                          if(value!=passwordController.text.toString()){
                            return "Password doesnt match";
                          }
                        },
                        controller: passwordController2,
                        obscureText: isObsecure,
                        keyboardType:TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                isObsecure=!isObsecure;
                              });
                            },
                          icon: Icon(Icons.visibility),
                          ),
                          fillColor: Colors.blue.withOpacity(0.2),
                           filled: true,
                           hintText: "Enter your Password",
                          labelText: "Enter your Password",
                          hintStyle: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),
                          prefixIcon: Icon(Icons.email) ,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(
                            color: Colors.blue
                          )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),borderSide: BorderSide(
                              color: Colors.blue
                          )
                          ),
                        ),

                      ),
                      SizedBox(height: 15,),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("Forget Password",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),)),

                      // Spacer(),
                      MaterialButton(
                        color: Colors.blue,
                        minWidth: double.infinity,shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                          }else{

                          }
                        },
                      child: Text("Sign in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                      ),height: 50,
                      ),
                      SizedBox(height: 12,),

                      RichText(
                        text: TextSpan(
                          text: "Don't have an account",
                          style: TextStyle(fontSize: 14,color: Colors.black54),
                          children:   <TextSpan>[
                            TextSpan(text: 'Sign Up', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 16)),

                          ],
                        ),
                      )




                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
