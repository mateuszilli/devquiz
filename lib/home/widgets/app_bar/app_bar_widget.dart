import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 161,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Hello",
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: "mateuszilli",
                        style: AppTextStyles.titleBold
                      )
                    ]
                  )
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://avatars.githubusercontent.com/u/36007412?s=400&u=6dfea940372f6324a7003875f1f7ab6337f12b62&v=4")
                    )
                  )
                )
              ]
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: ScoreCardWidget()
          )
        ],
      )
    )
  );
}