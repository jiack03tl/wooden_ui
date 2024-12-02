import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("profile-bottumsheet"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 367,
                          width: 420,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  height: 4,
                                  width: 30,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                  height: 60,
                                  width: 60,
                                  color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.12),
                                    child: SvgPicture.asset("assets/oops.svg"),
                                  )),
                              CustomText(
                                  text: "Delete Account",
                                  fontsize: 18,
                                  fontweight: FontWeight.w700,
                                  fontColor: Colors.black),
                              CustomText(
                                text:
                                    "Are you sure want to delete your account permanently/? You will not retrieve your data back.",
                                fontsize: 18,
                                fontweight: FontWeight.w300,
                                fontColor: Colors.black,
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: const Text("show bottumsheet"))));
  }
}
