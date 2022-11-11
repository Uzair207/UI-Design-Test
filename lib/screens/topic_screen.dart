import 'package:design_test/controller/topic_screen_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';

class TopicScreen extends GetView<TopicScreenController>{
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10, top: 35,bottom: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: controller.goToPreviousScreen,
                    child: Image.asset('assets/icons/back_icon.png'),
                  ),
                  TextButton(onPressed: (){}, child: const Text('Skip',style: TextStyle(color: Color(0xffF38E2A),fontSize: 16,fontWeight: FontWeight.w700),))
                ],
              ),
          ),
        ),

      ),

      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _getHeader(),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: _getItem(item:ItemModel.setData(title: 'Sports', imgPath: 'assets/icons/football_icon.png',enabled: true))),
                      Expanded(child: _getItem(item:ItemModel.setData(title: 'Animals', imgPath: 'assets/icons/lion_icon.png'))),
                    ],
                  ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Music', imgPath: 'assets/icons/guitar_icon.png'))),
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Education', imgPath: 'assets/icons/books_icon.png'))),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Food', imgPath: 'assets/icons/pizza_icon.png',))),
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Art', imgPath: 'assets/icons/crayons_icon.png',))),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Science', imgPath: 'assets/icons/science_icon.png',))),
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Nature', imgPath: 'assets/icons/tree_icon.png',))),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Sports', imgPath: 'assets/icons/football_icon.png',))),
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Gaming', imgPath: 'assets/icons/game_icon.png',enabled: true))),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Sports', imgPath: 'assets/icons/football_icon.png',))),
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Animals', imgPath: 'assets/icons/lion_icon.png',))),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Sports', imgPath: 'assets/icons/football_icon.png',))),
                  Expanded(child: _getItem(item:ItemModel.setData(title: 'Animals', imgPath: 'assets/icons/lion_icon.png',))),
                ],
              ),
              const SizedBox(height: 35,),
              _getButton()

            ],
          ),
        ),
      ),
    );
  }

  Widget _getItem({required ItemModel item}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: item.enabled!=null && item.enabled==true?const Color(0xff22BEE0):const Color(0xffD7E9ED),
          borderRadius: BorderRadius.circular(12)
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(item.imgPath),const SizedBox(width: 8),Text(item.title,style: TextStyle(fontWeight: FontWeight.w500,color: item.enabled!=null&&item.enabled==true?Colors.white:const Color(0xff73858F)),)],),),
    );
  }

  Widget _getHeader(){
    return SizedBox(width: Get.width*0.7,
        child: const Text("Select any 5 of your favourite topics",
          style: TextStyle(fontWeight: FontWeight.w700,fontSize: 23,fontFamily: 'Manrope'),
        )
    );
  }

  Widget _getButton(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 23),
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffF38E2A),
        ),
        child: const Center(child: Text("Done",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),)),
      ),
    );
  }

}