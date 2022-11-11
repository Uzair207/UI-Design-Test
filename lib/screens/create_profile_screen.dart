import 'package:design_test/controller/create_profile_screen_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CreateProfileScreen extends GetView<CreateProfileScreenController>{
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _getHeader(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        _getProfileIcon(),
                        const SizedBox(height: 30,),
                          _getTextField(textEditingController: controller.tf1Controller),
                        const SizedBox(height: 20,),
                        _getTextField(textEditingController: controller.tf2Controller),
                        const SizedBox(height: 20,),
                        _getTextField(textEditingController: controller.tf3Controller),
                        const SizedBox(height: 20,),
                        _getTextField(textEditingController: controller.tf4Controller),
                        const SizedBox(height: 20,),
                        _getTextField(textEditingController: controller.tf5Controller),
                        const SizedBox(height: 45,),
                        _getButton()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }

  Widget _getTextField({required TextEditingController textEditingController}){
    return TextField(
      style: const TextStyle(fontWeight: FontWeight.w600),
      controller: textEditingController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 0,color: Color(0xffD7E9ED))
        ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 0,color: Color(0xffD7E9ED))
        ),
          fillColor: const Color(0xffD7E9ED),
        filled: true
      ),
    );
  }

  Widget _getProfileIcon(){
      return Center(
        child: SizedBox(
          width: 114,
          height: 114,
          child: Stack(
            children: [
              Image.asset('assets/icons/profile_icon.png'),
              Positioned(
                bottom: 6,
                right: 17,
                child: GestureDetector(
                  child: CircleAvatar(
                      radius: 18,backgroundColor: const Color(0xffF38E2A),
                      child: Image.asset('assets/icons/camera_icon.png')),
                ),
              )
            ],
          ),
        ),
      );
  }

  Widget _getHeader(){
    return const Padding(
      padding: EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 10),
      child: Text("Create Profile",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
    );
  }

  Widget _getButton(){
    return GestureDetector(
      onTap: controller.goToSelectTopicScreen,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 23),
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffF38E2A),
        ),
        child: const Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),)),
      ),
    );
  }

}