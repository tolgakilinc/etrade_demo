import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Product Detail",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: _buildProductDetails(context),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  _buildProductDetails(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProductImages(),
              _buildProductTitle(),
              SizedBox(
                height: 12.0,
              ),
              _buildProductPrice(),
              SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12.0,
              ),
              _buildFurtherInfo(),
              SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12.0,
              ),
              _buildSizeArea(),
              SizedBox(
                height: 12.0,
              ),
              _buildInfo()
            ],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesController = TabController(length: 3, vsync: this);
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: [
                TabBarView(controller: imagesController, children: <Widget>[
                  Image.network(
                      "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRBxgoTrk2SlpekLjS_EqBUCHAFfGnp0-UHEB-erGhkT8CNH_Meja2kZNC5HTkj_4xw7JYZd-3450ZaZ0DFDMj2W45xgXF7aiDA-GfvYEp3SpYUkVPCSE7W&usqp=CAE"),
                  Image.network(
                      "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSZ-R283ylf5_NZnmCGlrk9l2bwxED8L7Yt1bQldSAQjaYrWAU33CLsyOIFqEAmrZWvUeSF1s0_VwBdHNBV9h2OnxArAPEELfxQY4Puw3WWNe6zfE0bId7tZg&usqp=CAE"),
                  Image.network(
                      "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRBxgoTrk2SlpekLjS_EqBUCHAFfGnp0-UHEB-erGhkT8CNH_Meja2kZNC5HTkj_4xw7JYZd-3450ZaZ0DFDMj2W45xgXF7aiDA-GfvYEp3SpYUkVPCSE7W&usqp=CAE"),
                ]),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: Text(
          "Gömlek",
          style: TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
    );
  }

  _buildProductPrice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Text(
            "\$100",
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "\$200",
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough),
          ),
          SizedBox(
            width: 8.0,
            height: 30.0,
          ),
          Text(
            "\%50 indirim",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.black87,
          width: screenSize.width,
          height: 0.40,
        )
      ],
    );
  }

  _buildFurtherInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.local_offer_sharp,
            color: Colors.grey,
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            "Detaylı bilgi için tıklayınız.",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  _buildSizeArea() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.straighten,
                color: Colors.grey,
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                "Beden: M",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Beden Tablosu",
                style: TextStyle(fontSize: 12.0, color: Colors.redAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        children: <Widget>[
          TabBar(controller: tabController, tabs: <Widget>[
            Tab(
              child: Text(
                "Ürün Bilgisi",
                style: TextStyle(color: Colors.black87),
              ),
            ),
            Tab(
              child: Text(
                "Yıkama Bilgisi",
                style: TextStyle(color: Colors.black87),
              ),
            )
          ]),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 40.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Text(
                  "%70 Pamuk , %30 Polyester",
                  style: TextStyle(color: Colors.black87),
                ),
                Text(
                  "30 derece makine de renkli yıkama",
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "İstek",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Sepete Ekle",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
