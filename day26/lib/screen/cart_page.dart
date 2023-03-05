

import 'package:day26/model/product_model.dart';
import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  List<ProductModel> ?cart;
  CartPage({super.key, this.cart});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  void initState() {
    getTotal();
    // TODO: implement initState
    super.initState();
  }
   var netTotal;

  void getTotal(){
    netTotal = widget.cart!.map((item) => item.price!.toInt() * item.quantity )
        .reduce((value, element) => value+element);
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios_new),),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('My Cart', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ],
            ),
            Expanded(
              child: Container(
                
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.cart!.length,
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        
                      )),
                      padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                            children: [
                               Image.network('${widget.cart![index].image}', height: 100,width: 100,),
                            Text('${widget.cart![index].name}'),
                            ],
                           ),
                          
                           Row(
                            
                            children: [
                               CircleAvatar(
                              child: IconButton(onPressed: (){
                                setState(() {
                                  widget.cart![index].quantity>0?  widget.cart![index].quantity-- : null;
                                  getTotal();
                                });
                              }, icon: const Icon(Icons.remove)),
                            ),
                            const SizedBox(width: 10,),
                            Text('${widget.cart![index].quantity}'),
                            const SizedBox(width: 10,),
                             CircleAvatar(
                              child: IconButton(onPressed: (){
                                setState(() {
                                  widget.cart![index].quantity++;
                                  getTotal();
                                  
                                });
                              }, icon: const Icon(Icons.add)),
                            ),
                          
                            ],
                           ),
                           Text("\$${widget.cart![index].price! * widget.cart![index].quantity}")
                          ],
                          
                        ),
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Container(
                
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 255, 107, 16)
                
                ),
                child: Center(child: Text("Total price is  ${netTotal ??0} \$", style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),)),
              ),
            )
          ],
        )
      ),
    );
  }
}