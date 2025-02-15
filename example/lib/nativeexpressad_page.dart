import 'package:flutter/material.dart';
import 'package:flutter_unionad/flutter_unionad.dart';

/// 描述：个性化模板信息流广告
/// @author guozi
/// @e-mail gstory0404@gmail.com
/// @time   2020/3/11
class NativeExpressAdPage extends StatefulWidget {
  @override
  _NativeExpressAdPageState createState() => _NativeExpressAdPageState();
}

class _NativeExpressAdPageState extends State<NativeExpressAdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          "个性化模板信息流广告",
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: false,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //个性化模板信息流广告
            FlutterUnionad.nativeAdView(
              androidCodeId: "945417699",
              //android 信息流广告id 必填
              iosCodeId: "945417699",
              //ios banner广告id 必填
              supportDeepLink: true,
              //是否支持 DeepLink 选填
              expressViewWidth: 375.5,
              // 期望view 宽度 dp 必填
              expressViewHeight: 275.5,
              //期望view高度 dp 必填
              expressNum: 2,
              mIsExpress: true,
              //一次请求广告数量 大于1小于3 必填
              callBack: FlutterUnionadNativeCallBack(
                onShow: () {
                  print("信息流广告显示");
                },
                onFail: (error) {
                  print("信息流广告失败 $error");
                },
                onDislike: (message) {
                  print("信息流广告不感兴趣 $message");
                },
                onClick: () {
                  print("信息流广告点击");
                },
              ),
            ), //个性化模板信息流广告
            FlutterUnionad.nativeAdView(
              androidCodeId: "945417487",
              iosCodeId: "945417487",
              supportDeepLink: true,
              expressViewWidth: 375.5,
              expressViewHeight: 284.5,
              expressNum: 3,
            ), //个性化模板信息流广告
            FlutterUnionad.nativeAdView(
              androidCodeId: "945407034",
              iosCodeId: "945407034",
              supportDeepLink: true,
              expressViewWidth: 270,
              expressViewHeight:400,
              expressNum: 3,
            ), //个性化模板信息流广告
            FlutterUnionad.nativeAdView(
              androidCodeId: "945407034",
              iosCodeId: "945407034",
              supportDeepLink: true,
              expressViewWidth: 270,
              expressViewHeight: 480,
              expressNum: 3,
            ),
          ],
        ),
      ),
    );
  }
}
