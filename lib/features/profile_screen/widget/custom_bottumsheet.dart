// import 'package:flutter/material.dart';
//
// class CustomBottumsheet extends StatefulWidget {
//   const CustomBottumsheet({super.key});
//
//   @override
//   State<CustomBottumsheet> createState() => _CustomBottumsheetState();
// }
//
// class _CustomBottumsheetState extends State<CustomBottumsheet> {
//   @override
//   Widget build(BuildContext context) {
//     return  showModalBottomSheet(
//         context: context,
//         builder: (BuildContext context) {
//           return Container(
//             height: 367,
//             width: 420,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 16),
//                   child: Container(
//                     height: 4,
//                     width: 30,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 Container(
//                     height: 60,
//                     width: 60,
//                     color: Colors.blue,
//                     child: Padding(
//                       padding: const EdgeInsets.all(3.12),
//                       child: SvgPicture.asset("assets/oops.svg"),
//                     )),
//                 CustomText(
//                     text: "Delete Account",
//                     fontsize: 18,
//                     fontweight: FontWeight.w700,
//                     fontColor: Colors.black),
//                 CustomText(
//                   text:
//                   "Are you sure want to delete your account permanently/? You will not retrieve your data back.",
//                   fontsize: 18,
//                   fontweight: FontWeight.w300,
//                   fontColor: Colors.black,
//                 ),
//               ],
//             ),
//           );
//         });
//   }
// }
