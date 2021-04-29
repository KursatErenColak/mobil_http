import 'package:flutter/material.dart';
import 'package:mobil_http/models/product.dart';

class ProductListRowWidget extends StatelessWidget{
  Product product;
  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
   return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget> [
            Container(
              child: Image.network('https://cdn.pixabay.com/photo/2015/12/09/17/11/vegetables-1085063__340.jpg',
              height: 50.0,),
              height: 110.0,
              width: MediaQuery.of(context).size.width/2,
            ),
            Text(product.productName),
            Text(product.unitPrice.toString()+" TL",style: TextStyle(fontSize: 18.0,color: Colors.redAccent),)
          ],
        ),
      ),
    );
  }

}