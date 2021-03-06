import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/src/models/beautician_model.dart';
import 'package:flutter_app/src/view/provider_detail_screen.dart';
import 'package:flutter_app/src/widgets/shared_widget/style.dart';

class BeauticianWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 10, top: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'THỢ CHUYÊN NGHIỆP',
              style: CustomTextStyle.headline600Text(Colors.black),
            ),
          ),
        ),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 0.5,
              color: Colors.grey,
              indent: 12,
              endIndent: 12,
            );
          },
          shrinkWrap: true,
          itemCount: listBeautician.length,
          itemBuilder: (context, index) {
            return Beautician(model: listBeautician[index]);
          },
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class Beautician extends StatelessWidget {
  final BeauticianModel model;

  const Beautician({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProviderDetailScreen(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Align(
                alignment: Alignment.bottomRight,
                heightFactor: 1,
                widthFactor: 1,
                child: Image.asset(model.image),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 10),
            //   child: Wrap(
            //     children: [
            //       Image(
            //         image: AssetImage(
            //           model.image,
            //         ),
            //         fit: BoxFit.fitWidth,
            //         height: 80,
            //         width: 70,
            //       ),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(4),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: size.width * 0.72,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          model.beauticianName,
                          style: CustomTextStyle.titleText(Colors.black),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFFCC00),
                              ),
                              Text(
                                '${model.rateScore}',
                                style: CustomTextStyle.subtitleText(
                                    Colors.black87),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    model.nameService,
                    style: CustomTextStyle.subtitleText(Colors.black87),
                  ),
                  Row(
                    children: [
                      Text(
                        model.distance,
                        style: CustomTextStyle.subtitleText(Colors.grey),
                      ),
                      Text(
                        ' | ' + model.location,
                        style: CustomTextStyle.subtitleText(Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        model.status,
                        style: CustomTextStyle.subtitleText(Colors.blue),
                      ),
                      Text(
                        model.openHours,
                        style: CustomTextStyle.subtitleText(Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<BeauticianModel> listBeautician = List.from(<BeauticianModel>[
  BeauticianModel(
    'Marry Trần',
    'Trang điểm - Làm tóc',
    '5 km',
    4.8,
    'public/img/beautician1.PNG',
    'Quận 1, TP. Hồ Chí Minh',
    'Đang hoạt động',
    ' - 9:00 AM - 8:30 PM',
  ),
  BeauticianModel(
    'Hani Nguyễn',
    'Trang điểm - Làm tóc',
    '5 km',
    4.8,
    'public/img/beautician2.PNG',
    'Quận 1, TP. Hồ Chí Minh',
    'Đang hoạt động',
    ' - 9:00 AM - 8:30 PM',
  ),
  BeauticianModel(
    'Mai Hà Trần',
    'Trang điểm - Làm tóc',
    '5 km',
    4.8,
    'public/img/beautician3.PNG',
    'Quận 1, TP. Hồ Chí Minh',
    'Đang hoạt động',
    ' - 9:00 AM - 8:30 PM',
  ),
  BeauticianModel(
    'Hani Nguyễn',
    'Trang điểm - Làm tóc',
    '5 km',
    4.8,
    'public/img/beautician2.PNG',
    'Quận 1, TP. Hồ Chí Minh',
    'Đang hoạt động',
    ' - 9:00 AM - 8:30 PM',
  ),
]);
