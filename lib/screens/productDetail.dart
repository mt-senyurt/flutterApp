import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Product Detail",
            style: TextStyle(color: Colors.black),
          )),
      body: _buildProductDetails(context),
      bottomNavigationBar: _buildButtomNavigationBar(),
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
              children: <Widget>[
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
            ))
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
                children: <Widget>[
                  TabBarView(
                    controller: imagesController,
                    children: <Widget>[
                      Image.network(
                          "https://cdn.dsmcdn.com/ty650/product/media/images/20221215/14/238629240/633039541/1/1_org_zoom.jpg"),
                      Image.network(
                          "https://cdn.dsmcdn.com/ty649/product/media/images/20221215/14/238629240/633039541/3/3_org_zoom.jpg"),
                      Image.network(
                          "https://cdn.dsmcdn.com/ty650/product/media/images/20221215/14/238629240/633039541/4/4_org_zoom.jpg"),
                    ],
                  ),
                  Container(
                    alignment: FractionalOffset(0.5, 1.0),
                    child: TabPageSelector(
                      controller: imagesController,
                      selectedColor: Colors.grey,
                      color: Colors.white,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
          child: Text("Jack Jones Sweater",
              style: TextStyle(fontSize: 16.0, color: Colors.black))),
    );
  }

  _buildProductPrice() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: <Widget>[
            Text("\$ 100",
                style: TextStyle(fontSize: 16.0, color: Colors.black)),
            SizedBox(
              width: 8.0,
            ),
            Text("\$ 200",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough)),
            SizedBox(
              width: 8.0,
            ),
            Text(" %50 Discount",
                style: TextStyle(fontSize: 14.0, color: Colors.blue)),
          ],
        ));
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey,
          width: screenSize.width,
          height: 0.25,
        )
      ],
    );
  }

  _buildFurtherInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.local_offer, color: Colors.grey),
          SizedBox(width: 12.0),
          Text("Click to get more information",
              style: TextStyle(color: Colors.grey))
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
                Icon(Icons.straighten, color: Colors.grey),
                SizedBox(
                  width: 12.0,
                ),
                Text("Body Size", style: TextStyle(color: Colors.grey))
              ],
            ),
            Row(
              children: <Widget>[
                Text("Size Chart",
                    style: TextStyle(fontSize: 12.0, color: Colors.blue)),
              ],
            ),
          ],
        ));
  }

  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
        child: Column(
      children: <Widget>[
        TabBar(controller: tabController, tabs: <Widget>[
          Tab(
            child: Text("Product information",
                style: TextStyle(color: Colors.black)),
          ),
          Tab(
            child: Text("washing information",
                style: TextStyle(color: Colors.black)),
          ),
        ]),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
          height: 40.0,
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              Text("%60 cotton   %30 polyester",
                  style: TextStyle(color: Colors.black)),
              Text("30 degree color washing",
                  style: TextStyle(color: Colors.black))
            ],
          ),
        )
      ],
    ));
  }

  _buildButtomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.list, color: Colors.white),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text("Favourites", style: TextStyle(color: Colors.white))
                  ],
                )),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.card_travel, color: Colors.white),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text("Add to cart", style: TextStyle(color: Colors.white))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
