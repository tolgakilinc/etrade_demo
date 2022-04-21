import 'package:etrade/widgets/productListRow.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  /*const*/ ProductList({Key key}) : super(key: key);
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _buildProductListPage(),
    );
  }

  _buildProductListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 4) {
            return SizedBox(height: 12.0,);
          } else {
            return _buildProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFilterButton("Sırala"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Filtrele")
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: (){
        print(title);
      },
      child: Row(
        children: [
          Icon(Icons.arrow_drop_down,color: Colors.black,),
          SizedBox(width: 10.0,),
          Text(title,style: TextStyle(color: Colors.black87),)
        ],
      ),
    );
  }

  _buildProductListRow() {
    return ProductListRow(name:"Gömlek",currentPrice:150,originalPrice:300,discount:50,imageUrl:"https://productimages.hepsiburada.net/l/44/600-800/10795869339698.jpg");
  }
}

