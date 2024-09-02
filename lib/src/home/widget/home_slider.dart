import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstrings.dart';
import 'package:fashion_app/common/widgets/app_style.dart';
import 'package:fashion_app/common/widgets/custom_button.dart';
import 'package:fashion_app/common/widgets/reusable_text.dart';
import 'package:fashion_app/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
                indicatorColor: Kolors.kPrimaryLight,
                onPageChanged: (p) {
                  print(p);
                },
                autoPlayInterval: 5000,
                isLoop: true,
                children: List.generate(images.length, (i) {
                  return CachedNetworkImage(
                    imageUrl: images[i],
                    placeholder: placeholder,
                    errorWidget: errorWidget,
                    fit: BoxFit.cover,
                  );
                })),
          ),
          Positioned(child: SizedBox(
            height: ScreenUtil().screenHeight *0.16,
            width: ScreenUtil().screenWidth,
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(text: AppText.kCollection, style: appStyle(20, Kolors.kDark, FontWeight.w600),),
                SizedBox(
                  height: 5.h,

                ),
                Text("Discount 50% off \nthe first transaction",style: appStyle(14, Kolors.kDark.withOpacity(0.6), FontWeight.normal),),
              SizedBox(
                height: 10.h,
              ),
             CustomButton(text: "Shop Now",
             btnWidth: 150.w,)
              ],
            ),),
            
          ))
        ],
      ),
    );
  }
}

List<String> images = [
  "data:image/jpeg;base64,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",
  "data:image/jpeg;base64,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",

  "data:image/jpeg;base64,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",
  "data:image/jpeg;base64,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",

]
;