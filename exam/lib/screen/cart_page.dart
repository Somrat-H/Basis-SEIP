import 'package:exam/model/product_model.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class CartPage extends StatefulWidget {
  int index;
   CartPage({super.key, required this.index});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          right: 10,
          top: 15,
          ),
          child: Column(
            children: [
              Row(
                children: [
                   Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                  ),
                  const SizedBox(width: 120,),
                  const Text('Order Details'),
                 
                ],
              ),
              const SizedBox(height: 20,),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("My Cart", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700
                ),)),
                const SizedBox(
                  height: 10,
                ),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        const BoxShadow(
                          blurRadius: 12,
                          color: Colors.grey,
                          offset: Offset(1, -1)
                        )
                      ],
                      image: DecorationImage(image: NetworkImage('${productList[widget.index].image}'),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${productList[widget.index].name}'),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('${productList[widget.index].productCatagory}')),
                       
                       
                       const SizedBox(
                        height: 8,
                       ),
                       Text('\$${productList[widget.index].price}(\$4.00 Tax)'),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                               setState(() {
                                if(productList[widget.index].quantity > 0)
                                 productList[widget.index].quantity--;
                               });
                              },
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Icon(Icons.remove, color: Colors.grey,),
                              ),
                            ),
                            const SizedBox(width: 10, ),
                            Text('${productList[widget.index].quantity}', style: const TextStyle(
                              color: Colors.grey
                            ),),
                            const SizedBox(width: 10,),
                              InkWell(
                                onTap: (){
                                   setState(() {
                              
                                 productList[widget.index].quantity++;
                               });
                                },
                                child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                              
                                child: const Icon(Icons.add, color: Colors.grey,),
                                                          ),
                              ),
                            const SizedBox(width: 150,),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black38),
                              ),

                              child: const Icon(Icons.delete, color: Colors.grey,),
                            ),

                          ],
                        ),
                      
                        
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
                Column(
                  
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text('Order Info', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                              ),)),
                            const SizedBox(
                              height: 30,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                const Text('SubTotal', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                 const Text('\$199.0', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Shipping Cost', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                 const Text('+\$4.0', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                              ],
                            ),
                           
                          ],
                        )
            ],
          ),
        ),
      )
    );
  }
}