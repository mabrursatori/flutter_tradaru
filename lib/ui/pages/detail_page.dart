part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  DetailPage(this.product);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Color> selectedColor = [];
  List<String> selectedSize = [];
  double totalPrice;
  int quantity;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.product.discout;
    quantity = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            color: mainColor,
            padding: EdgeInsets.all(10),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            right: 20,
                            left: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Image(
                                  height: 20,
                                  image: AssetImage("assets/back_arrow.png"),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  mockProduct[mockProduct
                                          .lastIndexOf(widget.product)]
                                      .isLiked = !widget.product.isLiked;
                                  setState(() {});
                                },
                                child: SizedBox(
                                  child: (widget.product.isLiked)
                                      ? Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: mainColor,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(
                                              MdiIcons.fromString('heart'),
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ))
                                      : Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(
                                              MdiIcons.fromString(
                                                  'heart-outline'),
                                              size: 15,
                                            ),
                                          )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Image(
                          height: 220,
                          image: AssetImage("assets/" + widget.product.picture),
                        ),
                        Container(
                          width: double.infinity,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height - 348,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 15,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        widget.product.name,
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        widget.product.rating.toString(),
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "{103}",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  widget.product.description,
                                  maxLines: 3,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.grey,
                                      fontSize: 12),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Item Size",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: double.infinity,
                                height: 40,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: widget.product.size
                                      .map((e) => GestureDetector(
                                            onTap: () {
                                              if (selectedSize.contains(e)) {
                                                selectedSize.remove(e);
                                              } else if (selectedSize.length <
                                                  quantity) {
                                                selectedSize.add(e);
                                              }
                                              setState(() {});
                                            },
                                            child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle),
                                                child: Center(
                                                    child: Text(
                                                  e,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: (selectedSize
                                                              .contains(e)
                                                          ? mainColor
                                                          : Colors.black)),
                                                ))),
                                          ))
                                      .toList(),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Item Color",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: double.infinity,
                                height: 40,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: widget.product.color.map((e) {
                                    if (selectedColor.contains(e)) {
                                      return GestureDetector(
                                        onTap: () {
                                          selectedColor.remove(e);
                                          setState(() {});
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: e, shape: BoxShape.circle),
                                          child: Center(
                                            child: Container(
                                              child: Icon(
                                                Icons.check,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                              width: 28,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: const Color(
                                                          0xFFFFFFFF))),
                                            ),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return GestureDetector(
                                        onTap: () {
                                          if (selectedColor.length < quantity) {
                                            selectedColor.add(e);
                                          }
                                          setState(() {});
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: e, shape: BoxShape.circle),
                                        ),
                                      );
                                    }
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Qty",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            if (quantity > 1) {
                                              quantity--;
                                              totalPrice -=
                                                  widget.product.discout;
                                              setState(() {});
                                            }
                                          },
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey[200],
                                            ),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: (quantity <= 1)
                                                        ? Colors.black26
                                                        : Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          quantity.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            quantity++;
                                            totalPrice +=
                                                widget.product.discout;
                                            setState(() {});
                                          },
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey[200],
                                            ),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Total",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "\$" +
                                              (totalPrice as num)
                                                  .toInt()
                                                  .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: double.infinity,
                                height: 50,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: mainColor,
                                  elevation: 0,
                                  onPressed: () {
                                    mockUser.transactions.add(Transaction(
                                        product: widget.product,
                                        quantity: quantity,
                                        total: totalPrice));
                                    Get.to(MainPage());
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Add To Cart",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
