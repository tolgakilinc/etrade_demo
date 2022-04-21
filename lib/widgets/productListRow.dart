import 'package:flutter/material.dart';
import 'package:etrade/utilities/constants.dart';

class ProductListRow extends StatelessWidget {
  String name;
  int currentPrice;
  int originalPrice;
  int discount;
  String imageUrl;

  ProductListRow(
      {this.name,
      this.currentPrice,
      this.originalPrice,
      this.discount,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildProductItemCard(context),
        _buildProductItemCard(context),
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_DETAIL);
      },
      child: Card(
        child: Column(
          children: [
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width / 2.2,
              child: Image.network(this.imageUrl),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.name,
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\$$currentPrice",
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                      ),
                      SizedBox(width: 8.0),
                      Text("\$$originalPrice",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                              decoration: TextDecoration.lineThrough)),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text("\%$discount indirim",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          )),
                      SizedBox(
                        width: 8.0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
