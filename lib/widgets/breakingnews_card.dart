import 'package:flutter/material.dart';

class BreakingNewsCard extends StatelessWidget {
  const BreakingNewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: height * 0.32,
        width: width * 0.78,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.18,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/blogimage.png')),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              width: width * 0.6,
              child: const Text(
                'Twinku raises \$4.2m seed for Africa-wide expansion',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: width * 0.03,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      'John Stones',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff7B7B7B)),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.25,
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
            ),
          ],
        ),
      ),
    );
  }
}
