import 'package:flutter/material.dart';
import 'package:flutter_app/src/models/provider_detail_model/service_model.dart';

class ProviderImage extends StatelessWidget {
  final String path;
  final Map<Service, int> cart;

  const ProviderImage({Key key, this.path, this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(bottom: 1.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0),
            ],
          ),
          child: ClipRRect(
            child: Image(
              image: NetworkImage(this.path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Container(
                  padding: EdgeInsets.only(left: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                color: Colors.black,
                onPressed: () {
                  if (this.cart != null && this.cart.isNotEmpty) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Đồng ý hủy giỏ hàng'),
                          content: Container(
                            height: 128.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    'Thoát khỏi trang sẽ xóa giỏ hàng hiện tại'),
                                Text('Bạn đồng ý chứ?'),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      margin: EdgeInsets.only(right: 5.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0, color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: FlatButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text('Hủy bỏ')),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      margin: EdgeInsets.only(left: 5.0),
                                      decoration: BoxDecoration(
                                        color: Color(0xff28BEBA),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: FlatButton(
                                        onPressed: () => {
                                          Navigator.pop(context),
                                          Navigator.pop(context)
                                        },
                                        child: Text(
                                          'Đồng ý',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // actions: [
                          //   FlatButton(
                          //       onPressed: () => Navigator.pop(context),
                          //       child: Text('Hủy bỏ')),
                          //   FlatButton(
                          //       onPressed: () => {
                          //             Navigator.pop(context),
                          //             Navigator.pop(context)
                          //           },
                          //       child: Text('Đồng ý'))
                          // ],
                        );
                      },
                    );
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
