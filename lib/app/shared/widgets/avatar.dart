// import 'package:advogadox/app/modules/account/my_account/controllers/my_account_store.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'dart:convert';

// class Avatar extends StatefulWidget {
//   const Avatar({Key? key}) : super(key: key);

//   @override
//   State<Avatar> createState() => _AvatarState();
// }

// class _AvatarState extends ModularState<Avatar, MyAccount> {
//   @override
//   void initState() {
//     controller.fetchAccount();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     String getInitials(String params) => params.isNotEmpty
//         ? params.trim().split(' ').map((l) => l[0]).take(2).join()
//         : '';
//     var initials = getInitials("${controller.accountModel.fullName}");
//     var decodeImg = base64Decode("${controller.accountModel.picture!.content}");
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50),
//             color: Colors.white,
//           ),
//           width: 64,
//           height: 64,
//         ),
//         Container(
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(
//             color: Color(0xffc4c4c4),
//             borderRadius: BorderRadius.circular(50),
//           ),
//         ),
//         decodeImg.isNotEmpty
//             ? ClipRRect(
//                 borderRadius: BorderRadius.circular(50),
//                 child: Image.memory(
//                   decodeImg,
//                   width: 60,
//                   height: 60,
//                 ),
//               )
//             : Text(
//                 initials,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//       ],
//     );
//   }
// }
