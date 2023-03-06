import 'package:exam/model/accessories_model.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class AccessoriesCart extends StatefulWidget {
  int index;
  int total;
   AccessoriesCart({super.key, required this.index, required this.total});

  @override
  State<AccessoriesCart> createState() => _AccessoriesCartState();
}

class _AccessoriesCartState extends State<AccessoriesCart> {
  

  getTotal(){
    widget.total = (accessoerisList[widget.index].price!.toInt() * accessoerisList[widget.index].quantity);
  }

  @override
  void initState() {
    getTotal();
    // TODO: implement initState
    super.initState();
  }
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
                   InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                     child: Container(
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
                   ),
                  const SizedBox(width: 120,),
                  const Text('Order Details', style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),),
                 
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
                      image: DecorationImage(image: NetworkImage('${accessoerisList[widget.index].image}'),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${accessoerisList[widget.index].name}', style: TextStyle(
                          fontWeight: FontWeight.w700
                        ),),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('${accessoerisList[widget.index].productCatagory}', style: TextStyle(
                          fontWeight: FontWeight.w700
                        ),)),
                       
                       
                       const SizedBox(
                        height: 8,
                       ),
                       Text('\$${accessoerisList[widget.index].price}(\$4.00 Tax)', style: TextStyle(
                          color: Colors.grey.shade500
                        ),),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                               setState(() {
                                if(accessoerisList[widget.index].quantity > 0)
                                 accessoerisList[widget.index].quantity--;
                                 getTotal();
                                 
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
                         SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                            Text('${accessoerisList[widget.index].quantity}', style: const TextStyle(
                              color: Colors.grey
                            ),),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                              InkWell(
                                onTap: (){
                                   setState(() {
                              
                                 accessoerisList[widget.index].quantity++;
                                 getTotal();
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
                             SizedBox(width: MediaQuery.of(context).size.width * 0.35,),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
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
                              children: [
                                const Text('SubTotal', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                 Text('\$${accessoerisList[widget.index].price}', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            
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
                              const SizedBox(height: 12,),
                           Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Total', style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                  Text('\$${widget.total}', style: TextStyle(
                                  
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .05,
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color.fromARGB(255, 13, 52, 212),
                              ),
                              child: Center(
                                child: Text('CHECKOUT (\$${widget.total})', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                                ),),
                              ),
                            )
                          ],
                        )
            ],
          ),
        ),
      )
    );
  }
}