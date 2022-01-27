import 'package:flutter/material.dart';

class AllTabsScection extends StatelessWidget {
  const AllTabsScection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        allNewsTab(context),
        allNewsTab(context),
        allNewsTab(context),
      ],
    );
  }
}

Widget allNewsTab(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    height: height * 0.12,
    margin: EdgeInsets.only(top: height * 0.023),
    // color: Colors.blue,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: width * 0.03),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Ronaldo.png')),
          ),
          height: height * 0.11,
          width: width * 0.21,
        ),
        Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: height * 0.008, bottom: height * 0.02),
              width: width * 0.6,
              child: const Text(
                'Ronaldo continues goal drought after 8 games',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff333333)),
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.thumb_up_outlined,
                  color: Color(0xff7D7D7D),
                  size: 17,
                ),
                const Text(
                  '  2.2k',
                  style: TextStyle(
                    color: Color(0xff7D7D7D),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                const SizedBox(
                  child: Image(image: AssetImage('assets/images/message.png')),
                ),
                const Text(
                  '  2.2k',
                  style: TextStyle(
                    color: Color(0xff7D7D7D),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                const Icon(Icons.calendar_today_outlined,
                    size: 17, color: Color(0xff7B7B7B)),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    //formattedDate,
                    '12 jan 2021',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7B7B7B)),
                  ),
                ),
              ],
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
      ],
    ),
  );
}
