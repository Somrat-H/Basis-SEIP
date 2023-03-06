import 'package:exam/model/accessories_model.dart';
import 'package:exam/model/product_model.dart';
import 'package:exam/screen/accessories_cart.dart';
import 'package:exam/screen/cart_page.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
 ProductPage({super.key});

  

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 8,
                    ),
                    child: Icon(
                      Icons.search,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hi-Fi Shop & Service',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Audio shop on Rustaveli Ave 57.\nThis shop offers both products and services',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Products',
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('${productList.length}'),
                  ],
                ),
                Text('Show All',  style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 13, 80, 206)
                      ),),
              ],
            ),
            Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return CartPage(index: index, total: productList[index].price!.toInt(),);
                            
                          }));
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height * 0.2,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                            '${productList[index].image}',
                                          ),
                                        )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '${productList[index].name}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                 Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '${productList[index].productCatagory}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '\$${productList[index].price}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, int) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: productList.length)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Accessories',  style: TextStyle(
                        fontWeight: FontWeight.w600,
                       
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('${productList.length}'),
                  ],
                ),
                Text('Show all',  style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 13, 80, 206)
                      ),),
              ],
            ),
            Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return AccessoriesCart(index: index, total: accessoerisList[index].price!.toInt(),);
                            
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height * 0.2,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                            '${accessoerisList[index].image}',
                                          ),
                                        )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '${accessoerisList[index].name}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: accessoerisList[index].isAvilable == false ? Row(
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                      ), 
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Unavailable', style: TextStyle(
                                        color: Colors.red,
                                      ),)
                                    ],
                                  ): Row(
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                      ), 
                                       SizedBox(
                                        width: 5,
                                      ),
                                      Text('Available', style: TextStyle(
                                        color: Colors.green,
                                      ),)
                                    ],
                                  )
                                ),
                                 SizedBox(
                                        height: 5,
                                      ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '\$${accessoerisList[index].price}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, int) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: accessoerisList.length)),
          ],
        ),
      )),
    );
  }
}
