part of 'widgets.dart';

class ProductList extends StatelessWidget {
  final Product product;
  final int index;

  ProductList({this.product, this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (index % 2 == 1)
          ? EdgeInsets.only(left: 5, bottom: 10)
          : EdgeInsets.only(right: 5, bottom: 10),
      height: 200,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 130,
                child: Stack(
                  children: [
                    Image(
                      width: 120,
                      image: AssetImage('assets/' + product.picture),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              alignment: Alignment.bottomRight,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: (product.isLiked)
                                      ? mainColor
                                      : Colors.white,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: (product.isLiked)
                                    ? Icon(
                                        MdiIcons.fromString('heart'),
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        MdiIcons.fromString('heart-outline'),
                                        color: mainColor,
                                      ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                product.name,
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product.price.toString(),
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    product.discout.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
