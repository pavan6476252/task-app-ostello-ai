import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/course_section_title.dart';

class ToppersListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> toppersGroups = [
    {
      'title': 'NEET Toppers of Rajbir Institute',
      'toppers': [
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person1.png'},
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person2.png'},
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person3.png'},
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person4.png'},
      ]
    },
    {
      'title': '10th Class Toppers',
      'toppers': [
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person1.png'},
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person2.png'},
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person3.png'},
        {'name': 'Shree', 'score': '720/720', 'imageUrl': 'assets/person4.png'},
      ]
    }
  ];

  ToppersListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CourseSectionTitle(title: 'Toppers of ABC'),
        SizedBox(height: 10),
        Container(
          height: 153,
          width: double.maxFinite,
          // aspectRatio: 18 / 9,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                toppersGroups.length,
                (index) => Container(
                  // width: 270,
                  padding:
                      EdgeInsets.only(left: index == 0 ? 16 : 0, right: 12),
                  child:
                      ToppersListCardWidget(toppersGroup: toppersGroups[index]),
                ),
              )),
        )
      ],
    );
  }
}

class ToppersListCardWidget extends StatelessWidget {
  const ToppersListCardWidget({super.key, required this.toppersGroup});
  final Map<String, dynamic> toppersGroup;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            color: AppColors.bg,
            boxShadow: [BoxShadow(color: AppColors.cardShadow)],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.cardBorder, width: 2)),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(toppersGroup['title'],
                style: style.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
            SizedBox(
              child: Row(
                children: (toppersGroup['toppers'] as List<Map<String, String>>)
                    .asMap()
                    .entries
                    .map((entry) {
                  final topper = entry.value;
                  final index = entry.key;
                  return Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      topper['imageUrl']!,
                                    ),
                                  ),
                                ),
                                width: 55,
                                height: 55,
                              ),
                              Text(topper['name']!, style: style.labelSmall),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(topper['score']!,
                              style: style.labelMedium?.copyWith(
                                  color: AppColors.green,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      if (index !=
                          (toppersGroup['toppers'] as List<Map<String, String>>)
                                  .length -
                              1)
                        SizedBox(width: 8),
                    ],
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}
// AspectRatio(
//           aspectRatio: 269 / 143,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               SizedBox(width: 16),
//               ...toppersGroups.map((group) {
//                 return Container(
//                   width: 240, // Set a fixed width for each card
//                   margin: EdgeInsets.symmetric(horizontal: 8),
//                   child: Card(
//                     color: AppColors.red,
//                     shadowColor: AppColors.cardShadow,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             group['title'],
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(height: 8),
//                           Expanded(
//                             child: ListView.separated(
//                               scrollDirection: Axis.horizontal,
//                               physics: NeverScrollableScrollPhysics(),
//                               shrinkWrap: true,
//                               itemCount: (group['toppers']
//                                       as List<Map<String, String>>)
//                                   .length,
//                               separatorBuilder: (context, index) =>
//                                   SizedBox(height: 8),
//                               itemBuilder: (context, index) {
//                                 final topper = (group['toppers']
//                                     as List<Map<String, String>>)[index];
//                                 return Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(5),
//                                         image: DecorationImage(
//                                           fit: BoxFit.cover,
//                                           image: AssetImage(
//                                             topper['imageUrl']!,
//                                           ),
//                                         ),
//                                       ),
//                                       width: 55,
//                                       height: 55,
//                                     ),
//                                     Text(
//                                       topper['name']!,
//                                       style: TextStyle(
//                                         fontSize: 14,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                     Text(
//                                       topper['score']!,
//                                       style: TextStyle(
//                                         color: Colors.green,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//               SizedBox(width: 16),
//             ],
//           ),
//         ),
     