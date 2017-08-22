.class public Lcom/vpon/cordova/VponSDKPlugIn;
.super Lvpadn/r;
.source "VponSDKPlugIn.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    return-void
.end method

.method private A(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3830
    .line 3831
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 3832
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 3833
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "videoWebView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3835
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vpon/cordova/VponSDKPlugIn$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/vpon/cordova/VponSDKPlugIn$8;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lorg/json/JSONArray;Lvpadn/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3869
    :cond_0
    :goto_0
    return-void

    .line 3845
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 3846
    const-string v2, "custom_close"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3848
    :goto_1
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$9;

    invoke-direct {v2, p0, v0, p2}, Lcom/vpon/cordova/VponSDKPlugIn$9;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;ZLvpadn/p;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3858
    :catch_0
    move-exception v0

    .line 3859
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3860
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doSetCustomClose"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3862
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetCustomClose return Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3863
    :catch_1
    move-exception v0

    .line 3865
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3846
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private B(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 26

    .prologue
    .line 3874
    .line 3875
    const/4 v6, 0x0

    .line 3876
    const/4 v7, 0x0

    .line 3877
    const/4 v8, 0x0

    .line 3879
    const/4 v9, 0x0

    .line 3880
    const/4 v10, 0x0

    .line 3881
    const/4 v11, 0x0

    .line 3883
    const/4 v12, 0x0

    .line 3884
    const/4 v13, 0x0

    .line 3885
    const/4 v14, 0x0

    .line 3887
    const/4 v15, 0x0

    .line 3889
    const-wide/16 v16, 0x0

    .line 3890
    const-wide/16 v18, 0x0

    .line 3891
    const/16 v20, 0x0

    .line 3893
    const/16 v21, 0x0

    .line 3896
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v4, v4, Lvpadn/df;

    if-eqz v4, :cond_1

    .line 3897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v4, Lvpadn/df;

    .line 3898
    invoke-virtual {v4}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v5

    .line 3899
    invoke-virtual {v4}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v4

    const-string v22, "nativeAdHiddenWebview"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3900
    const-string v4, "only native ad webview can call set_native_ad_data"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 4022
    :cond_0
    :goto_0
    return-void

    .line 3904
    :cond_1
    const-string v4, "webView is not VponWebView while calling set_native_ad_data"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4011
    :catch_0
    move-exception v4

    .line 4012
    const-string v5, "VponSDKPlugIn"

    const-string v6, "throw exception at doSetNativeAdData"

    invoke-static {v5, v6, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4014
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSetNativeAdData return Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4015
    :catch_1
    move-exception v4

    .line 4016
    const-string v5, "VponSDKPlugIn"

    const-string v6, "throw exception at doSetNativeAdData 2"

    invoke-static {v5, v6, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3908
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 3909
    const-string v22, "title"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 3910
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3913
    :cond_3
    const-string v22, "body"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 3914
    const-string v7, "body"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3917
    :cond_4
    const-string v22, "action_name"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 3918
    const-string v8, "action_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3921
    :cond_5
    const-string v22, "cover_img"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 3922
    const-string v22, "cover_img"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 3923
    const-string v23, "url"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 3924
    const-string v9, "url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3926
    :cond_6
    const-string v23, "w"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 3927
    const-string v10, "w"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3929
    :cond_7
    const-string v23, "h"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 3930
    const-string v11, "h"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 3934
    :cond_8
    const-string v22, "icon"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 3935
    const-string v22, "icon"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 3936
    const-string v23, "url"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 3937
    const-string v12, "url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3939
    :cond_9
    const-string v23, "w"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 3940
    const-string v13, "w"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3942
    :cond_a
    const-string v23, "h"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 3943
    const-string v14, "h"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3947
    :cond_b
    const-string v22, "js_click_func"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 3948
    const-string v15, "js_click_func"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3951
    :cond_c
    const-string v22, "rating"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 3952
    const-string v22, "rating"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 3954
    const-string v23, "scale"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 3955
    const-string v16, "scale"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 3957
    :cond_d
    const-string v23, "value"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 3958
    const-string v18, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 3962
    :cond_e
    const-string v22, "social_context"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 3963
    const-string v20, "social_context"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3966
    :cond_f
    const-string v22, "thr_tracking_urls"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 3967
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3968
    const-string v22, "thr_tracking_urls"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 3969
    if-eqz v22, :cond_11

    .line 3971
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 3972
    if-gtz v23, :cond_10

    .line 3973
    const-string v4, "VponSDKPlugIn"

    const-string v24, "native third-party tracking urls is null"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3976
    :cond_10
    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v4, v0, :cond_11

    .line 3978
    :try_start_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3976
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3979
    :catch_2
    move-exception v24

    .line 3980
    :try_start_4
    const-string v24, "VponSDKPlugIn"

    const-string v25, "Native trackingUrls.add(Native3rdUrlsJsonArray.getString(j)); throw Exception"

    invoke-static/range {v24 .. v25}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3986
    :cond_11
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "title:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "body:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "actionName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "coverImageUrl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "coverImageWidth:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "coverImageHeigh:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "iconUrl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "iconWidth:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "iconHeight:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "jsClickFuncStr:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ratingScale:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ratingValue:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "socialContext:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    if-eqz v21, :cond_12

    .line 4000
    const-string v4, "VponSDKPlugIn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "trackingUrls:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v4, v4, Lvpadn/ai;

    if-eqz v4, :cond_0

    .line 4003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v4, Lvpadn/ai;

    .line 4004
    invoke-virtual/range {v4 .. v21}, Lvpadn/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;DDLjava/lang/String;Ljava/util/List;)V

    .line 4008
    invoke-virtual/range {p2 .. p2}, Lvpadn/p;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method private C(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 4027
    const-string v0, "youtube.com"

    .line 4028
    const-string v0, "file:///android_asset/"

    .line 4032
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 4033
    const-string v0, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonObj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    const/4 v0, 0x0

    .line 4036
    const-string v2, "u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4037
    const-string v0, "u"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4040
    :cond_0
    const-string v1, "bit.ly/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "goo.gl/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tinyurl.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "youtu.be/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4042
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 4043
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 4044
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 4046
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4047
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 4051
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4055
    const-string v2, "youtube.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.youtube:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "v"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4059
    invoke-direct {p0}, Lcom/vpon/cordova/VponSDKPlugIn;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4060
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4074
    :goto_0
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4077
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_9

    .line 4078
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 4079
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4080
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_3

    .line 4081
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 4082
    invoke-virtual {v0}, Lvpadn/af;->j()V

    .line 4083
    invoke-virtual {v0}, Lvpadn/af;->k()V

    .line 4105
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lvpadn/p;->c()V

    .line 4116
    :goto_2
    return-void

    .line 4062
    :cond_4
    const-string v0, "VponSDKPlugIn"

    const-string v1, "URL is youtube format but not install youtube client"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    const-string v0, "URL is youtube format but not install youtube client"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4107
    :catch_0
    move-exception v0

    .line 4108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4109
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doOpenVideo throws exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4111
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOpenVideo throws exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4112
    :catch_1
    move-exception v0

    .line 4113
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 4071
    :cond_5
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4072
    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4085
    :cond_6
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4086
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ai;

    if-eqz v1, :cond_3

    .line 4087
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ai;

    .line 4088
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 4089
    invoke-virtual {v1, v0}, Lvpadn/ai;->j(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {v1, v0}, Lvpadn/ai;->k(Ljava/lang/String;)V

    goto :goto_1

    .line 4092
    :cond_7
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4093
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4094
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4095
    :cond_8
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_3

    .line 4096
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 4097
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    goto/16 :goto_1

    .line 4101
    :cond_9
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private D(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 4169
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_2

    .line 4170
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 4171
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativeAdClickJSWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4172
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ai;

    if-eqz v0, :cond_0

    .line 4173
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ai;

    .line 4175
    new-instance v1, Lcom/vpon/cordova/VponSDKPlugIn$11;

    invoke-direct {v1, p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn$11;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/ai;)V

    .line 4182
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4183
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4195
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lvpadn/p;->c()V

    .line 4206
    :goto_1
    return-void

    .line 4185
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v2, "cordova.getActivity() = null when executing doCloseNativeClickWebView"

    invoke-static {v0, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4197
    :catch_0
    move-exception v0

    .line 4198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4199
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doCloseNativeClickWebView throws exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4201
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCloseNativeClickWebView throws exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4202
    :catch_1
    move-exception v0

    .line 4203
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 4191
    :cond_2
    :try_start_2
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private E(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 4210
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lcom/vpadn/widget/VpadnActivity;

    if-eqz v0, :cond_0

    .line 4211
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lcom/vpadn/widget/VpadnActivity;

    .line 4212
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$13;

    invoke-direct {v2, p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn$13;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4223
    invoke-virtual {p2}, Lvpadn/p;->c()V

    .line 4234
    :goto_0
    return-void

    .line 4219
    :cond_0
    const-string v0, "something error [CordovaInterface instanceof VpadnActivity is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4225
    :catch_0
    move-exception v0

    .line 4226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4227
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doCancelViedeoPrePauseLocation throws exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4229
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancelViedeoPrePauseLocation throws exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4230
    :catch_1
    move-exception v0

    .line 4231
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private F(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 4238
    .line 4240
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 4241
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 4242
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4243
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4244
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current webview is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that can not call doUnLockBackKey."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current webview is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " that can not call doUnLockBackKey."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 4287
    :goto_0
    return-void

    .line 4249
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "something wrong webView instanceof VponAdWebView is false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    const-string v0, "something wrong webView instanceof VponAdWebView is false"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4278
    :catch_0
    move-exception v0

    .line 4279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4280
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUnLockBackKey throw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4282
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUnLockBackKey throw Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4283
    :catch_1
    move-exception v0

    .line 4284
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 4254
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    .line 4256
    const-string v1, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4257
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lcom/vpadn/widget/VpadnActivity;

    .line 4258
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$14;

    invoke-direct {v2, p0, v0, p2}, Lcom/vpon/cordova/VponSDKPlugIn$14;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;Lvpadn/p;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4264
    :cond_2
    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4265
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lcom/vpadn/widget/VpadnActivity;

    .line 4267
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$15;

    invoke-direct {v2, p0, v0, p2}, Lcom/vpon/cordova/VponSDKPlugIn$15;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;Lvpadn/p;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4274
    :cond_3
    const-string v0, "VponSDKPlugIn"

    const-string v1, "don\'t support to doUnLockBackKey unknown VponWebView ID"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    const-string v0, "don\'t support to doUnLockBackKey unknown VponWebView ID"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private G(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 4291
    .line 4293
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 4295
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4296
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4297
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current webview is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that can not call doLockBackKey."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current webview is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " that can not call doLockBackKey."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 4340
    :goto_0
    return-void

    .line 4302
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "something wrong webView instanceof VponAdWebView is false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    const-string v0, "something wrong webView instanceof VponAdWebView is false"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4331
    :catch_0
    move-exception v0

    .line 4332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4333
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLockBackKey throw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4335
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLockBackKey throw Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4336
    :catch_1
    move-exception v0

    .line 4337
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 4307
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    .line 4309
    const-string v1, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4310
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lcom/vpadn/widget/VpadnActivity;

    .line 4311
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$16;

    invoke-direct {v2, p0, v0, p2}, Lcom/vpon/cordova/VponSDKPlugIn$16;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;Lvpadn/p;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4317
    :cond_2
    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4318
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lcom/vpadn/widget/VpadnActivity;

    .line 4320
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$17;

    invoke-direct {v2, p0, v0, p2}, Lcom/vpon/cordova/VponSDKPlugIn$17;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;Lvpadn/p;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4327
    :cond_3
    const-string v0, "VponSDKPlugIn"

    const-string v1, "don\'t support to doLockBackKey unknown VponWebView ID"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    const-string v0, "don\'t support to doLockBackKey unknown VponWebView ID"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2716
    const-string v1, "Vpadn-Refresh-Time"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2717
    const-string v1, "Vpadn-Refresh-Time"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2718
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    if-eqz v1, :cond_0

    .line 2721
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2733
    :goto_0
    return v0

    .line 2723
    :catch_0
    move-exception v1

    .line 2724
    const-string v2, "VponSDKPlugIn"

    const-string v3, "Integer.valueOf(refreshTimeStr) throw Excepiton"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2728
    :cond_0
    const-string v1, "VponSDKPlugIn"

    const-string v2, "Cannot get banner refreshSecond"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2732
    :cond_1
    const-string v1, "VponSDKPlugIn"

    const-string v2, "Cannot get banner refreshSecond (cannot find field in header)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lvpadn/p;",
            "Lvpadn/ag;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2995
    new-instance v0, Lcom/vpon/cordova/VponSDKPlugIn$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn$3;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 973
    const/4 v0, 0x0

    .line 974
    const-string v1, "v_u"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    const-string v0, "v_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_0
    return-object v0
.end method

.method private a(Ljava/net/URL;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2857
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2858
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 2859
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2861
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 2862
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2863
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2861
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2867
    :catch_0
    move-exception v0

    .line 2868
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parseUrlParameter throw Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a(ILorg/apache/http/HttpResponse;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/json/JSONObject;Lvpadn/p;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2641
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do doAdReq return status code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    const-string v1, "Vpadn-Status-Code"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2643
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAdReq return error status code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Vpadn-Status-Code"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_0
    const-string v1, "Vpadn-Status"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2647
    const-string v1, "Vpadn-Status"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->a:Ljava/lang/String;

    .line 2648
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAdReq return error status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :goto_0
    const-string v1, "Vpadn-Status-Desc"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2654
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAdReq return error status description:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Vpadn-Status-Desc"

    .line 2655
    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2654
    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_1
    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$2;

    invoke-direct {v2, p0}, Lcom/vpon/cordova/VponSDKPlugIn$2;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;)V

    .line 2674
    const-string v1, "fake_secret"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2675
    const-string v1, "VponSDKPlugIn"

    const-string v3, "Use fake ms to get banner, interstitial or native!"

    invoke-static {v1, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    const-string v1, "ms="

    const-string v3, "xx="

    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "fake_secret="

    const-string v4, "ms="

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2677
    const-string v3, "VponSDKPlugIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fake url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2679
    invoke-virtual {p4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2680
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 2681
    const/16 v4, 0x12e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_4

    .line 2682
    const-string v1, "VponSDKPlugIn"

    const-string v3, "Use fake ms to get banner, interstitial or native, but still failed!"

    invoke-static {v1, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2684
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2690
    :goto_1
    invoke-virtual {p6, p5}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 2711
    :goto_2
    return-object v0

    .line 2650
    :cond_2
    iput-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 2686
    :cond_3
    const-string v1, "VponSDKPlugIn"

    const-string v3, "cordova.getActivity() = null when executing webView.postMessage(\"load_banner_fail\") in doAdReq(...) method."

    invoke-static {v1, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2694
    goto :goto_2

    .line 2697
    :cond_5
    const-string v1, "status"

    invoke-virtual {p5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2698
    const-string v1, "e"

    const-string v3, "http status is not 301~303 "

    invoke-virtual {p5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2700
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lvpadn/ba;->b(Lorg/apache/http/HttpResponse;Z)V

    .line 2702
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2703
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2709
    :goto_3
    invoke-virtual {p6, p5}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 2705
    :cond_6
    const-string v1, "VponSDKPlugIn"

    const-string v3, "cordova.getActivity() = null when executing webView.postMessage(\"load_banner_fail\") in doAdReq(...) method."

    invoke-static {v1, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method static synthetic a(Lcom/vpon/cordova/VponSDKPlugIn;ILorg/apache/http/HttpResponse;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/json/JSONObject;Lvpadn/p;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct/range {p0 .. p6}, Lcom/vpon/cordova/VponSDKPlugIn;->a(ILorg/apache/http/HttpResponse;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/json/JSONObject;Lvpadn/p;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3661
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3662
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3663
    const/4 v1, 0x0

    .line 3665
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 3669
    :goto_1
    if-eqz v1, :cond_0

    .line 3672
    :try_start_1
    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3673
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3662
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3674
    :catch_0
    move-exception v3

    .line 3676
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3677
    :catch_1
    move-exception v1

    goto :goto_2

    .line 3666
    :catch_2
    move-exception v3

    goto :goto_1

    .line 3685
    :cond_1
    return-object v2

    .line 3679
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/vpon/cordova/VponSDKPlugIn;Lorg/apache/http/HttpResponse;Lvpadn/ag;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/apache/http/HttpResponse;Lvpadn/ag;)V

    return-void
.end method

.method static synthetic a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;Lvpadn/ag;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2951
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/apache/http/HttpResponse;)I

    move-result v0

    .line 2952
    if-eq v0, v2, :cond_0

    .line 2953
    int-to-long v0, v0

    invoke-interface {p2, v0, v1}, Lvpadn/ag;->setRefreshTime(J)V

    .line 2956
    :cond_0
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 2957
    if-eqz v0, :cond_1

    .line 2958
    invoke-interface {p2, v0}, Lvpadn/ag;->setBannerUrl(Ljava/lang/String;)V

    .line 2959
    invoke-direct {p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->c(Ljava/lang/String;)V

    .line 2962
    :cond_1
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->c(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 2963
    if-eqz v0, :cond_2

    .line 2964
    invoke-interface {p2, v0}, Lvpadn/ag;->setImpressionUrl(Ljava/lang/String;)V

    .line 2967
    :cond_2
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->d(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 2968
    if-eqz v0, :cond_3

    .line 2969
    invoke-interface {p2, v0}, Lvpadn/ag;->setClickUrl(Ljava/lang/String;)V

    .line 2972
    :cond_3
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->e(Lorg/apache/http/HttpResponse;)I

    move-result v0

    .line 2973
    if-eq v0, v2, :cond_4

    .line 2974
    int-to-long v0, v0

    invoke-interface {p2, v0, v1}, Lvpadn/ag;->setAppDetectionOn(J)V

    .line 2977
    :cond_4
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->f(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 2978
    if-eqz v0, :cond_5

    .line 2979
    invoke-interface {p2, v0}, Lvpadn/ag;->setAppDetectionUrl(Ljava/lang/String;)V

    .line 2982
    :cond_5
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->g(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 2983
    if-eqz v0, :cond_6

    .line 2984
    invoke-interface {p2, v0}, Lvpadn/ag;->setAppDetectionMeth(Ljava/lang/String;)V

    .line 2987
    :cond_6
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->h(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 2988
    if-eqz v0, :cond_7

    .line 2989
    invoke-interface {p2, v0}, Lvpadn/ag;->setAppDetectionBlockList(Ljava/lang/String;)V

    .line 2991
    :cond_7
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 547
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bannerWebView"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    const-string v0, "VponSDKPlugIn"

    const-string v1, "only banner webview allow to call expand"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v0, "only banner webview allow to call expand"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 553
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "something wrong webView instanceof VponAdWebView is falsed"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "only banner webview allow to call expand"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExpand throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "something wrong, error exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 607
    :catch_1
    move-exception v0

    .line 608
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 558
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 560
    const-string v0, "custom_close"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 561
    const-string v0, "custom_close"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    move v4, v0

    .line 567
    :goto_2
    const-string v0, "allow_orientation_change"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 568
    const-string v0, "allow_orientation_change"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    :goto_3
    move v5, v1

    .line 572
    :goto_4
    const-string v6, "none"

    .line 573
    const-string v0, "force_orientation"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    const-string v0, "force_orientation"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 580
    :cond_2
    const-string v0, "bk_c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    const-string v0, "bk_c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 587
    :goto_5
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_5

    .line 588
    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v2, Lvpadn/af;

    .line 589
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v0, Lcom/vpon/cordova/VponSDKPlugIn$18;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/vpon/cordova/VponSDKPlugIn$18;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/af;Lvpadn/p;ZZLjava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 561
    goto :goto_1

    :cond_4
    move v1, v2

    .line 568
    goto :goto_3

    .line 597
    :cond_5
    const-string v0, "VponSDKPlugIn"

    const-string v1, "only banner webview allow to call expand"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v0, "something error [cordova instanceof VponBannerController is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_6
    move v7, v2

    goto :goto_5

    :cond_7
    move v5, v1

    goto :goto_4

    :cond_8
    move v4, v2

    goto :goto_2
.end method

.method private a(Lvpadn/p;)V
    .locals 4

    .prologue
    .line 488
    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 492
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "banner of status of non-expanded cannot call close"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v0, "banner of status of non-expanded cannot call close"

    invoke-direct {p0, p1, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 541
    :goto_0
    return-void

    .line 499
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v1, "something wrong webView instanceof VponAdWebView is false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v0, "something wrong webView instanceof VponAdWebView is false"

    invoke-direct {p0, p1, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doClose throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doClose throw Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 504
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    .line 506
    const-string v1, "bannerWebViewExpanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "bannerWebViewResized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 508
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/vpon/cordova/VponSDKPlugIn$1;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/af;Lvpadn/p;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 514
    :cond_4
    const-string v1, "SdkOpenWebApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "InterstitialAdWebView(new Activity)"

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "videoWebView"

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 517
    :cond_5
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lcom/vpadn/widget/VpadnActivity;

    .line 519
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/vpon/cordova/VponSDKPlugIn$12;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;Lvpadn/p;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 526
    :cond_6
    const-string v0, "VponSDKPlugIn"

    const-string v1, "don\'t support to close unknown VponWebView ID"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "don\'t support to close unknown VponWebView ID"

    invoke-direct {p0, p1, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private a(Lvpadn/p;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 92
    const-string v1, "e"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {p1, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 94
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1567
    const-string v2, "jp.naver.line.android"

    .line 1568
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1569
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1570
    invoke-direct {p0, v3}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1572
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1578
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1575
    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    move v0, v1

    .line 1578
    goto :goto_0
.end method

.method static synthetic a(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2281
    const-string v1, "VponSDKPlugIn"

    const-string v2, "call storePicture(urlStr)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :try_start_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2284
    const-string v1, "VponSDKPlugIn"

    const-string v2, "ERROR URL"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_0
    :goto_0
    return v0

    .line 2287
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 2289
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 2290
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 2291
    if-nez v2, :cond_2

    .line 2292
    const-string v1, "VponSDKPlugIn"

    const-string v2, "inputStream == null"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2341
    :catch_0
    move-exception v1

    .line 2342
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storePicture 2 throws Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2296
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vpon/cordova/VponSDKPlugIn;->getRandomFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2297
    if-eqz v1, :cond_0

    .line 2300
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2301
    const/16 v4, 0x100

    new-array v4, v4, [B

    .line 2303
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 2304
    if-gtz v5, :cond_4

    .line 2311
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2317
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2318
    const-string v3, "title"

    const-string v4, "VPON_AD_PIC"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    const-string v3, "description"

    const-string v4, "VPON_AD_PIC_DES"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    const-string v3, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2321
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2323
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2324
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2325
    if-eqz v4, :cond_3

    .line 2326
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 2328
    :try_start_3
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x32

    invoke-virtual {v4, v3, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2330
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 2333
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2334
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2345
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2307
    :cond_4
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 2330
    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2336
    :catch_1
    move-exception v1

    .line 2337
    :try_start_7
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storePicture 1 throws Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3713
    if-nez p2, :cond_1

    .line 3731
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 3719
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3721
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3722
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 3723
    const/4 v2, 0x1

    goto :goto_0

    .line 3726
    :catch_0
    move-exception v0

    .line 3727
    const-string v3, "VponSDKPlugIn"

    const-string v4, "throw exception at getAllOpenUrlsJSON"

    invoke-static {v3, v4, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3719
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2738
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2739
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2740
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bannerUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    if-eqz v0, :cond_0

    .line 2749
    :goto_0
    return-object v0

    .line 2744
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get banner URL"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2745
    goto :goto_0

    .line 2748
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get banner URL (cannot find field in header)"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2749
    goto :goto_0
.end method

.method static synthetic b(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->b(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5

    .prologue
    .line 2622
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2623
    invoke-static {v0}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 2624
    invoke-static {p1, v0}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 2626
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 2627
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 2629
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2630
    if-eqz v1, :cond_0

    .line 2631
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2636
    :goto_0
    return-object v0

    .line 2634
    :cond_0
    const-string v1, "VponSDKPlugIn"

    const-string v2, "Cannot get user agent from StaticStorage.instance().get(StaticStorage.USER_AGENT)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 3689
    const/4 v0, 0x0

    .line 3690
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3691
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3692
    const/16 v1, 0x80

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 3694
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3698
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 3699
    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3700
    add-int/lit8 v1, v1, 0x1

    .line 3702
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 3707
    goto :goto_0

    .line 3703
    :catch_0
    move-exception v0

    .line 3704
    const-string v5, "VponSDKPlugIn"

    const-string v6, "throw exception at getAllOpenUrlsJSON"

    invoke-static {v5, v6, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_1

    .line 3708
    :cond_1
    const-string v0, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mobile Application Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    return-object v2
.end method

.method private b(Lorg/json/JSONObject;)Lvpadn/cr;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 982
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    .line 984
    if-nez v7, :cond_0

    .line 985
    const-string v0, "VponSDKPlugIn"

    const-string v2, "videoUrl == null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :goto_0
    return-object v1

    .line 990
    :cond_0
    const-string v0, "p_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 991
    const-string v0, "p_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    const-string v2, "v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 993
    const-string v0, "VponSDKPlugIn"

    const-string v2, "protraitType format error"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 999
    :cond_1
    :goto_1
    const-string v2, "l_t"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1000
    const-string v2, "l_t"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    const-string v4, "v"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "vw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1002
    const-string v2, "VponSDKPlugIn"

    const-string v4, "landscapeType format error"

    invoke-static {v2, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 1007
    :cond_2
    :goto_2
    if-eqz v0, :cond_53

    if-eqz v2, :cond_53

    .line 1008
    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    const-string v4, "vw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1010
    const-string v2, "v"

    .line 1011
    const-string v0, "v"

    move-object v5, v0

    move-object v6, v2

    .line 1015
    :goto_3
    if-nez v6, :cond_3

    if-nez v5, :cond_3

    .line 1016
    const-string v0, "VponSDKPlugIn"

    const-string v2, "protraitType == null && landscapeType == null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1020
    :cond_3
    new-instance v4, Lvpadn/cr;

    invoke-direct {v4, v7}, Lvpadn/cr;-><init>(Ljava/lang/String;)V

    .line 1022
    const-string v0, "v_width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "v_height"

    .line 1023
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    const-string v0, "v_width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    const-string v2, "v_height"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1029
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1030
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1031
    if-eqz v0, :cond_19

    if-eqz v2, :cond_19

    .line 1032
    invoke-virtual {v4, v0}, Lvpadn/cr;->e(I)V

    .line 1033
    invoke-virtual {v4, v2}, Lvpadn/cr;->f(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :cond_4
    :goto_4
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 1043
    const-string v0, "force_first_mode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1044
    const-string v0, "force_first_mode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    const-string v2, "l"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1046
    :cond_5
    const-string v2, "l"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1047
    sget-object v0, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {v4, v0}, Lvpadn/cr;->b(Lvpadn/cr$b;)V

    .line 1057
    :cond_6
    :goto_5
    if-eqz v6, :cond_9

    .line 1058
    invoke-virtual {v4, v11}, Lvpadn/cr;->c(Z)V

    .line 1059
    invoke-virtual {v4, v6}, Lvpadn/cr;->e(Ljava/lang/String;)V

    .line 1061
    const-string v0, "top"

    .line 1062
    const-string v2, "p_v_pos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1063
    const-string v2, "p_v_pos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    const-string v7, "top"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "bottom"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "middle"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "full"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    :cond_7
    move-object v0, v2

    .line 1070
    :cond_8
    :goto_6
    invoke-virtual {v4, v0}, Lvpadn/cr;->b(Ljava/lang/String;)V

    .line 1073
    :cond_9
    if-eqz v5, :cond_a

    .line 1074
    invoke-virtual {v4}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1075
    invoke-virtual {v4, v3}, Lvpadn/cr;->b(Z)V

    .line 1084
    :cond_a
    :goto_7
    if-eqz v6, :cond_b

    const-string v0, "vw"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    if-eqz v5, :cond_e

    const-string v0, "vw"

    .line 1085
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1087
    :cond_c
    const-string v0, "w_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1088
    const-string v0, "w_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    :cond_d
    if-eqz v1, :cond_e

    .line 1092
    const-string v0, "http:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "https:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1093
    const-string v0, "VponSDKPlugIn"

    const-string v1, "webUrl format error"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_e
    :goto_8
    const-string v0, "p_ended_hide_v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1101
    const-string v0, "p_ended_hide_v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1102
    if-ne v0, v11, :cond_f

    .line 1103
    invoke-virtual {v4, v11}, Lvpadn/cr;->h(Z)V

    .line 1105
    :cond_f
    if-eqz v6, :cond_10

    const-string v0, "v"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1106
    invoke-virtual {v4, v3}, Lvpadn/cr;->h(Z)V

    .line 1110
    :cond_10
    const-string v0, "l_ended_hide_v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1111
    const-string v0, "l_ended_hide_v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1112
    if-ne v0, v11, :cond_11

    if-nez v6, :cond_11

    .line 1113
    invoke-virtual {v4, v11}, Lvpadn/cr;->i(Z)V

    .line 1115
    :cond_11
    if-eqz v5, :cond_12

    const-string v0, "v"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1116
    invoke-virtual {v4, v3}, Lvpadn/cr;->i(Z)V

    .line 1120
    :cond_12
    const-string v0, "bk_c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1121
    const-string v0, "bk_c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1122
    invoke-virtual {v4, v0}, Lvpadn/cr;->d(I)V

    .line 1125
    :cond_13
    const-string v0, "cd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1126
    const-string v0, "cd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1127
    if-lez v0, :cond_14

    .line 1128
    invoke-virtual {v4, v0}, Lvpadn/cr;->a(I)V

    .line 1132
    :cond_14
    const-string v0, "tracking_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1133
    const-string v0, "tracking_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1135
    const-string v0, "VponSDKPlugIn"

    const-string v1, "trackingUrl format error"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_15
    :goto_9
    const-string v0, "tracking_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1142
    const-string v0, "tracking_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1143
    if-lez v0, :cond_16

    .line 1144
    invoke-virtual {v4, v0}, Lvpadn/cr;->c(I)V

    .line 1149
    :cond_16
    const-string v0, "v_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1150
    const-string v0, "v_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1151
    invoke-virtual {v4, v0}, Lvpadn/cr;->a(Lorg/json/JSONObject;)V

    .line 1164
    :cond_17
    const-string v0, "mute_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1165
    const-string v0, "mute_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1166
    if-eqz v1, :cond_21

    .line 1167
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1168
    if-gtz v2, :cond_18

    .line 1169
    const-string v0, "VponSDKPlugIn"

    const-string v6, "mute_tracking_urls is null"

    invoke-static {v0, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move v0, v3

    .line 1171
    :goto_a
    if-ge v0, v2, :cond_21

    .line 1172
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1174
    :try_start_1
    invoke-virtual {v4}, Lvpadn/cr;->J()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1171
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1035
    :cond_19
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    const-string v2, "v_width and v_height can\'t be Zero"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    const-string v0, "VponSDKPlugIn"

    const-string v2, "v_width and v_height can\'t be String"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1049
    :cond_1a
    sget-object v0, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-virtual {v4, v0}, Lvpadn/cr;->b(Lvpadn/cr$b;)V

    goto/16 :goto_5

    .line 1052
    :cond_1b
    const-string v0, "VponSDKPlugIn"

    const-string v2, "ForceFirstMode is error"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1067
    :cond_1c
    const-string v2, "VponSDKPlugIn"

    const-string v7, "portraitVideoPosition is not equals top bottom or middle"

    invoke-static {v2, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1076
    :cond_1d
    invoke-virtual {v4}, Lvpadn/cr;->G()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1077
    invoke-virtual {v4, v3}, Lvpadn/cr;->b(Z)V

    goto/16 :goto_7

    .line 1079
    :cond_1e
    invoke-virtual {v4, v11}, Lvpadn/cr;->b(Z)V

    .line 1080
    invoke-virtual {v4, v5}, Lvpadn/cr;->f(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1095
    :cond_1f
    invoke-virtual {v4, v1}, Lvpadn/cr;->k(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1137
    :cond_20
    invoke-virtual {v4, v0}, Lvpadn/cr;->d(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1175
    :catch_1
    move-exception v6

    .line 1176
    const-string v6, "VponSDKPlugIn"

    const-string v7, "retVideoData.getMuteTrackingUrls().add(MuteTrackingUrl) throw Exception"

    invoke-static {v6, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1182
    :cond_21
    const-string v0, "unmute_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1183
    const-string v0, "unmute_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1184
    if-eqz v1, :cond_23

    .line 1185
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1186
    if-gtz v2, :cond_22

    .line 1187
    const-string v0, "VponSDKPlugIn"

    const-string v6, "unmute_tracking_urls is null"

    invoke-static {v0, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move v0, v3

    .line 1189
    :goto_c
    if-ge v0, v2, :cond_23

    .line 1190
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1192
    :try_start_3
    invoke-virtual {v4}, Lvpadn/cr;->K()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1189
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1193
    :catch_2
    move-exception v6

    .line 1194
    const-string v6, "VponSDKPlugIn"

    const-string v7, "retVideoData.getUnmuteTrackingUrls().add(unmuteTrackingUrl) throw Exception"

    invoke-static {v6, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1200
    :cond_23
    const-string v0, "close_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1201
    const-string v0, "close_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1202
    if-eqz v1, :cond_25

    .line 1203
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1204
    if-gtz v2, :cond_24

    .line 1205
    const-string v0, "VponSDKPlugIn"

    const-string v6, "close_tracking_urls is null"

    invoke-static {v0, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move v0, v3

    .line 1207
    :goto_e
    if-ge v0, v2, :cond_25

    .line 1208
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1210
    :try_start_4
    invoke-virtual {v4}, Lvpadn/cr;->L()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1207
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1211
    :catch_3
    move-exception v6

    .line 1212
    const-string v6, "VponSDKPlugIn"

    const-string v7, "retVideoData.getCloseTrackingUrls().add(closeTrackingUrl) throw Exception"

    invoke-static {v6, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1218
    :cond_25
    const-string v0, "resume_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1219
    const-string v0, "resume_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1220
    if-eqz v1, :cond_27

    .line 1221
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1222
    if-gtz v2, :cond_26

    .line 1223
    const-string v0, "VponSDKPlugIn"

    const-string v6, "resume_tracking_urls is null"

    invoke-static {v0, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move v0, v3

    .line 1225
    :goto_10
    if-ge v0, v2, :cond_27

    .line 1226
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1228
    :try_start_5
    invoke-virtual {v4}, Lvpadn/cr;->M()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1225
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1229
    :catch_4
    move-exception v6

    .line 1230
    const-string v6, "VponSDKPlugIn"

    const-string v7, "retVideoData.getResumeTrackingUrls().add(resumeTrackingUrl) throw Exception"

    invoke-static {v6, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1236
    :cond_27
    const-string v0, "pause_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1237
    const-string v0, "pause_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_29

    .line 1239
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1240
    if-gtz v2, :cond_28

    .line 1241
    const-string v0, "VponSDKPlugIn"

    const-string v6, "resume_tracking_urls is null"

    invoke-static {v0, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    move v0, v3

    .line 1243
    :goto_12
    if-ge v0, v2, :cond_29

    .line 1244
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1246
    :try_start_6
    invoke-virtual {v4}, Lvpadn/cr;->N()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1243
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1247
    :catch_5
    move-exception v6

    .line 1248
    const-string v6, "VponSDKPlugIn"

    const-string v7, "retVideoData.getPauseTrackingUrls().add(pasueTrackingUrl) throw Exception"

    invoke-static {v6, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1255
    :cond_29
    const-string v0, "replay_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1256
    const-string v0, "replay_tracking_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1257
    if-eqz v1, :cond_2b

    .line 1258
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1259
    if-gtz v2, :cond_2a

    .line 1260
    const-string v0, "VponSDKPlugIn"

    const-string v6, "replay_tracking_urls is null"

    invoke-static {v0, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v0, v3

    .line 1262
    :goto_14
    if-ge v0, v2, :cond_2b

    .line 1263
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1265
    :try_start_7
    invoke-virtual {v4}, Lvpadn/cr;->I()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1262
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1266
    :catch_6
    move-exception v6

    .line 1267
    const-string v6, "VponSDKPlugIn"

    const-string v7, "retVideoData.getReplayTrackingUrls().add(replayTrackingUrl) throw Exception"

    invoke-static {v6, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1274
    :cond_2b
    const-string v0, "v_progress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1275
    const-string v0, "v_progress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v3

    .line 1276
    :goto_16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1277
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1278
    new-instance v6, Lvpadn/cr$c;

    invoke-direct {v6}, Lvpadn/cr$c;-><init>()V

    .line 1280
    const-string v7, "sec"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1281
    const-string v7, "sec"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1282
    invoke-virtual {v6, v7}, Lvpadn/cr$c;->a(I)V

    .line 1288
    const-string v7, "urls"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1289
    const-string v7, "urls"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1290
    if-eqz v7, :cond_2e

    .line 1292
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 1293
    if-gtz v8, :cond_2d

    .line 1276
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1284
    :cond_2c
    const-string v1, "VponSDKPlugIn"

    const-string v6, "Progress Second Data Format Error!"

    invoke-static {v1, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_2d
    move v1, v3

    .line 1297
    :goto_18
    if-ge v1, v8, :cond_2e

    .line 1299
    :try_start_8
    invoke-virtual {v6}, Lvpadn/cr$c;->b()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1297
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1300
    :catch_7
    move-exception v9

    .line 1301
    const-string v9, "VponSDKPlugIn"

    const-string v10, "trackingProgressData.geturlsList().add(progressUrlsJsonArray.getString(i)) throw Exception"

    invoke-static {v9, v10}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1307
    :cond_2e
    invoke-virtual {v4, v6}, Lvpadn/cr;->a(Lvpadn/cr$c;)V

    goto :goto_17

    .line 1312
    :cond_2f
    const-string v0, "pause_locations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1313
    const-string v0, "pause_locations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1314
    if-eqz v1, :cond_31

    .line 1315
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1316
    if-gtz v2, :cond_30

    .line 1317
    const-string v0, "VponSDKPlugIn"

    const-string v6, "pause second Locations in advance is null"

    invoke-static {v0, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move v0, v3

    .line 1319
    :goto_1a
    if-ge v0, v2, :cond_31

    .line 1321
    :try_start_9
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1322
    invoke-virtual {v4}, Lvpadn/cr;->O()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1319
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1323
    :catch_8
    move-exception v6

    .line 1324
    const-string v6, "VponSDKPlugIn"

    const-string v7, "retVideoData.getPauseSecondLocations().add(pauseSecondLocation) throw Exception"

    invoke-static {v6, v7}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1330
    :cond_31
    const-string v0, "v_cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1331
    const-string v0, "v_cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1332
    if-nez v0, :cond_32

    .line 1333
    invoke-virtual {v4, v3}, Lvpadn/cr;->q(Z)V

    .line 1338
    :cond_32
    const-string v0, "brand_icon_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1339
    const-string v0, "brand_icon_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1341
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "brandIconUrl format error brandIconUrl:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_33
    :goto_1c
    const-string v0, "brand_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1349
    const-string v0, "brand_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1350
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1351
    invoke-virtual {v4, v0}, Lvpadn/cr;->j(Ljava/lang/String;)V

    .line 1358
    :cond_34
    :goto_1d
    const-string v0, "auto_close"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1359
    const-string v0, "auto_close"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1360
    if-ne v0, v11, :cond_35

    .line 1361
    invoke-virtual {v4, v11}, Lvpadn/cr;->d(Z)V

    .line 1365
    :cond_35
    const-string v0, "ended_close_btn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1366
    const-string v0, "ended_close_btn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1367
    if-ne v0, v11, :cond_36

    .line 1368
    invoke-virtual {v4, v11}, Lvpadn/cr;->e(Z)V

    .line 1372
    :cond_36
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1373
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1374
    if-nez v0, :cond_37

    .line 1375
    invoke-virtual {v4, v3}, Lvpadn/cr;->g(Z)V

    .line 1379
    :cond_37
    const-string v0, "use_cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1380
    const-string v0, "use_cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1381
    if-nez v0, :cond_38

    .line 1382
    invoke-virtual {v4, v3}, Lvpadn/cr;->q(Z)V

    .line 1386
    :cond_38
    const-string v0, "close_parent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1387
    const-string v0, "close_parent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1388
    if-ne v0, v11, :cond_39

    .line 1389
    invoke-virtual {v4, v11}, Lvpadn/cr;->p(Z)V

    .line 1393
    :cond_39
    const-string v0, "lock_back_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1394
    const-string v0, "lock_back_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1395
    if-ne v0, v11, :cond_3a

    .line 1396
    invoke-virtual {v4, v11}, Lvpadn/cr;->j(Z)V

    .line 1400
    :cond_3a
    const-string v0, "close_btn_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1401
    const-string v0, "close_btn_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    const-string v1, "big"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1403
    invoke-virtual {v4, v3}, Lvpadn/cr;->k(Z)V

    .line 1407
    :cond_3b
    const-string v0, "hide_action_btn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1408
    const-string v0, "hide_action_btn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1409
    if-nez v0, :cond_3c

    .line 1410
    invoke-virtual {v4, v3}, Lvpadn/cr;->a(Z)V

    .line 1414
    :cond_3c
    const-string v0, "hide_video_btn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1415
    const-string v0, "hide_video_btn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1416
    if-nez v0, :cond_3d

    .line 1417
    invoke-virtual {v4, v3}, Lvpadn/cr;->l(Z)V

    .line 1421
    :cond_3d
    const-string v0, "w_in_front"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1422
    const-string v0, "w_in_front"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1423
    if-ne v0, v11, :cond_3f

    .line 1424
    invoke-virtual {v4}, Lvpadn/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {v4}, Lvpadn/cr;->l()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1425
    invoke-virtual {v4}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1426
    invoke-virtual {v4}, Lvpadn/cr;->w()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1427
    invoke-virtual {v4, v11}, Lvpadn/cr;->m(Z)V

    .line 1428
    sget-object v0, Lvpadn/cr;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lvpadn/cr;->c(Ljava/lang/String;)V

    .line 1430
    :cond_3e
    invoke-virtual {v4}, Lvpadn/cr;->m()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {v4}, Lvpadn/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "vw"

    .line 1431
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1432
    invoke-virtual {v4}, Lvpadn/cr;->x()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1433
    invoke-virtual {v4, v11}, Lvpadn/cr;->m(Z)V

    .line 1434
    sget-object v0, Lvpadn/cr;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lvpadn/cr;->c(Ljava/lang/String;)V

    .line 1439
    :cond_3f
    const-string v0, "auto_replay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1440
    const-string v0, "auto_replay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1441
    if-ne v0, v11, :cond_40

    invoke-virtual {v4}, Lvpadn/cr;->w()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1442
    invoke-virtual {v4}, Lvpadn/cr;->x()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1443
    invoke-virtual {v4, v11}, Lvpadn/cr;->n(Z)V

    .line 1447
    :cond_40
    const-string v0, "auto_start"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1448
    const-string v0, "auto_start"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1449
    if-nez v0, :cond_41

    .line 1450
    invoke-virtual {v4, v3}, Lvpadn/cr;->o(Z)V

    .line 1454
    :cond_41
    const-string v0, "buffering_suffer_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1455
    const-string v0, "buffering_suffer_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1456
    if-ltz v0, :cond_42

    .line 1457
    invoke-virtual {v4, v0}, Lvpadn/cr;->b(I)V

    .line 1462
    :cond_42
    const-string v0, "mi_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1463
    const-string v0, "mi_u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1465
    const-string v0, "VponSDKPlugIn"

    const-string v1, "miTeamPhotoURL format error"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_43
    :goto_1e
    const-string v0, "btns"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1472
    const-string v0, "btns"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v3

    .line 1473
    :goto_1f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1474
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1475
    new-instance v6, Lvpadn/cr$a;

    invoke-direct {v6}, Lvpadn/cr$a;-><init>()V

    .line 1476
    const-string v1, "action"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1477
    const-string v1, "action"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-static {v1}, Lvpadn/cs;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1479
    const-string v7, "lin"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1480
    invoke-direct {p0}, Lcom/vpon/cordova/VponSDKPlugIn;->a()Z

    move-result v1

    if-nez v1, :cond_48

    .line 1473
    :cond_44
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1343
    :cond_45
    invoke-virtual {v4, v0}, Lvpadn/cr;->i(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1353
    :cond_46
    const-string v0, "VponSDKPlugIn"

    const-string v1, "brandText is blank"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1466
    :cond_47
    if-eqz v0, :cond_43

    .line 1467
    invoke-virtual {v4, v0}, Lvpadn/cr;->h(Ljava/lang/String;)V

    goto :goto_1e

    .line 1484
    :cond_48
    const-string v1, "action"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lvpadn/cr$a;->a(Ljava/lang/String;)V

    .line 1493
    const-string v1, "btn_text"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1494
    const-string v1, "btn_text"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1495
    invoke-static {v1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 1496
    invoke-virtual {v6, v1}, Lvpadn/cr$a;->c(Ljava/lang/String;)V

    .line 1507
    const-string v1, "app_u"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1508
    const-string v1, "app_u"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1509
    invoke-virtual {v6, v1}, Lvpadn/cr$a;->b(Ljava/lang/String;)V

    .line 1519
    :cond_49
    const-string v1, "btn_tracking_urls"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1520
    const-string v1, "btn_tracking_urls"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1521
    if-eqz v7, :cond_4d

    .line 1522
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 1523
    if-gtz v8, :cond_4a

    .line 1524
    const-string v1, "VponSDKPlugIn"

    const-string v9, "btn_tracking_urls is null"

    invoke-static {v1, v9}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    move v1, v3

    .line 1526
    :goto_21
    if-ge v1, v8, :cond_4d

    .line 1528
    :try_start_a
    invoke-virtual {v6}, Lvpadn/cr$a;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 1526
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1486
    :cond_4b
    const-string v1, "VponSDKPlugIn"

    const-string v5, "Unsupport Action Type"

    invoke-static {v1, v5}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1498
    :cond_4c
    const-string v1, "VponSDKPlugIn"

    const-string v5, "btn_text is blank"

    invoke-static {v1, v5}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1529
    :catch_9
    move-exception v9

    .line 1530
    const-string v9, "VponSDKPlugIn"

    const-string v10, "buttonData.geturlsList().add(buttonUrlsJsonArray.getString(i)) throw Exception"

    invoke-static {v9, v10}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1536
    :cond_4d
    const-string v1, "launch_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1537
    const-string v1, "launch_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1539
    const-string v7, "inapp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1540
    sget-object v1, Lvpadn/cr$a$a;->b:Lvpadn/cr$a$a;

    .line 1547
    :goto_23
    invoke-virtual {v6, v1}, Lvpadn/cr$a;->a(Lvpadn/cr$a$a;)V

    .line 1550
    :cond_4e
    const-string v1, "data"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1551
    const-string v1, "data"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1552
    if-eqz v1, :cond_4f

    .line 1554
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lvpadn/cr$a;->a(Lorg/json/JSONObject;)V

    .line 1559
    :cond_4f
    invoke-virtual {v4, v6}, Lvpadn/cr;->a(Lvpadn/cr$a;)V

    goto/16 :goto_20

    .line 1541
    :cond_50
    const-string v7, "outapp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1542
    sget-object v1, Lvpadn/cr$a$a;->a:Lvpadn/cr$a$a;

    goto :goto_23

    .line 1544
    :cond_51
    const-string v1, "VponSDKPlugIn"

    const-string v5, "button launch type format error"

    invoke-static {v1, v5}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_52
    move-object v1, v4

    .line 1563
    goto/16 :goto_0

    :cond_53
    move-object v5, v2

    move-object v6, v0

    goto/16 :goto_3

    :cond_54
    move-object v2, v1

    goto/16 :goto_2

    :cond_55
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private b(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 11

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 622
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bannerWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 623
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bannerWebViewResized"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    const-string v0, "VponSDKPlugIn"

    const-string v1, "only banner or resized webview allow to call resize"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v0, "only banner or resized webview allow to call resize"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 714
    :goto_0
    return-void

    .line 629
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "something wrong webView instanceof VponAdWebView is falsed"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v0, "only banner webview allow to call expand"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doResize throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "something wrong, error exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 709
    :catch_1
    move-exception v0

    .line 710
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 634
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 639
    const-string v2, "w"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 640
    const-string v2, "w"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 645
    :goto_1
    const-string v2, "h"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 646
    const-string v2, "h"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 651
    :goto_2
    if-lez v4, :cond_2

    if-gtz v5, :cond_3

    .line 652
    :cond_2
    const-string v2, "doResize  height <=0 or width <= 0"

    invoke-direct {p0, p2, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 658
    :cond_3
    const-string v2, "off_x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 659
    const-string v2, "off_x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 664
    :goto_3
    const-string v2, "off_y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 665
    const-string v2, "off_y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 670
    :goto_4
    const/4 v8, 0x0

    .line 671
    const-string v2, "cust_close_pos"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 672
    const-string v2, "cust_close_pos"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 676
    :cond_4
    const-string v2, "allow_off_scr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 677
    const-string v2, "allow_off_scr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    move v9, v0

    .line 690
    :goto_6
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_a

    .line 691
    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v2, Lvpadn/af;

    .line 692
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v0, Lcom/vpon/cordova/VponSDKPlugIn$19;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/vpon/cordova/VponSDKPlugIn$19;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/af;Lvpadn/p;IIIILjava/lang/String;Z)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 642
    :cond_5
    const-string v2, "doResize cannot find out width attribute"

    invoke-direct {p0, p2, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    move v4, v5

    goto :goto_1

    .line 648
    :cond_6
    const-string v2, "doResize cannot find out height attribute"

    invoke-direct {p0, p2, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto :goto_2

    .line 661
    :cond_7
    const-string v2, "doResize cannot find out off_x attribute"

    invoke-direct {p0, p2, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    move v6, v1

    goto :goto_3

    .line 667
    :cond_8
    const-string v2, "doResize cannot find out off_y attribute"

    invoke-direct {p0, p2, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    move v7, v1

    goto :goto_4

    :cond_9
    move v0, v1

    .line 677
    goto :goto_5

    .line 699
    :cond_a
    const-string v0, "VponSDKPlugIn"

    const-string v1, "only banner webview allow to call resize"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v0, "something error [cordova instanceof VponBannerController is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_b
    move v9, v1

    goto :goto_6
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4119
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4121
    :try_start_0
    const-string v2, "com.google.android.youtube"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4124
    :goto_0
    return v0

    .line 4123
    :catch_0
    move-exception v0

    .line 4124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2754
    const-string v0, "Vpadn-Imp"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2755
    const-string v0, "Vpadn-Imp"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2756
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "impressionUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    if-eqz v0, :cond_0

    .line 2765
    :goto_0
    return-object v0

    .line 2760
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get impression URL"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2761
    goto :goto_0

    .line 2764
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get impression URL (cannot find field in header)"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2765
    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 3640
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3641
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 3643
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3644
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3645
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3646
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3648
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3649
    const-string v5, "url"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3650
    const-string v0, "result"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3654
    :goto_1
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 3651
    :catch_0
    move-exception v0

    .line 3652
    const-string v1, "VponSDKPlugIn"

    const-string v5, "throw exception at changeMapToMapArray"

    invoke-static {v1, v5, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3657
    :cond_0
    return-object v2
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2879
    :try_start_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "call parseQueryMIConfig"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Ljava/net/URL;)Ljava/util/Map;

    move-result-object v1

    .line 2882
    if-nez v1, :cond_1

    .line 2883
    const-string v0, "VponSDKPlugIn"

    const-string v1, "parse ad location url parameter return null."

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_0
    :goto_0
    return-void

    .line 2887
    :cond_1
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    .line 2889
    const-string v0, "inst_lock_back_key"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2890
    const-string v0, "inst_lock_back_key"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2891
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2892
    :cond_2
    const-string v3, "inst_lock_back_key"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2893
    const-string v3, "VponSDKPlugIn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] general interstitial lock back key: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_lock_back_key"

    .line 2894
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2893
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_3
    :goto_1
    const-string v0, "inst_close_button_size"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2901
    const-string v0, "inst_close_button_size"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2902
    const-string v3, "close_btn_small"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "close_btn_big"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2903
    :cond_4
    const-string v3, "inst_close_button_size"

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2904
    const-string v3, "VponSDKPlugIn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] general interstitial close button size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_close_button_size"

    .line 2905
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2904
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_5
    :goto_2
    const-string v0, "inst_send_imp_policy"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2912
    const-string v0, "inst_send_imp_policy"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2913
    const-string v3, "call_show_func"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "page_finished"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "js_side"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2914
    :cond_6
    const-string v3, "inst_send_imp_policy"

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2915
    const-string v3, "VponSDKPlugIn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] general interstitial send impression url policy: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_send_imp_policy"

    .line 2916
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2915
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_7
    :goto_3
    const-string v0, "inst_no_cache_android"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2923
    const-string v0, "inst_no_cache_android"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2924
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2925
    :cond_8
    const-string v3, "inst_no_cache_android"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2926
    const-string v3, "VponSDKPlugIn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[special inst] interstitial no cache: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "inst_no_cache_android"

    .line 2927
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2926
    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_9
    :goto_4
    const-string v0, "inst_close_button_delay"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2934
    const-string v0, "inst_close_button_delay"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2935
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_e

    .line 2936
    const-string v1, "inst_close_button_delay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2937
    const-string v1, "VponSDKPlugIn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[special inst] general interstitial close button delay: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "inst_close_button_delay"

    .line 2938
    invoke-virtual {v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2937
    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2944
    :catch_0
    move-exception v0

    .line 2945
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseQueryMIConfig throw Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2896
    :cond_a
    :try_start_1
    const-string v3, "VponSDKPlugIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] general interstitial lock back key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this value is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2907
    :cond_b
    const-string v3, "VponSDKPlugIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] general interstitial close button size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this size is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2918
    :cond_c
    const-string v3, "VponSDKPlugIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] general interstitial send impression url policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this policy is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2929
    :cond_d
    const-string v3, "VponSDKPlugIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[special inst] interstitial no cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(this value is not supported by SDK)."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2940
    :cond_e
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[special inst] general interstitial close button delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(this value is not supported by SDK)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private c(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 740
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 743
    const-string v1, "tel"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 744
    const-string v1, "tel"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    :goto_0
    invoke-static {v1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    const-string v0, "VponSDKPlugIn"

    const-string v1, "TEL number format is wrong"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v0, "TEL number format is wrong"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 828
    :goto_1
    return-void

    .line 753
    :cond_0
    const-string v3, "\\s+"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    const-string v3, "\\("

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    const-string v3, "\\)"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    const-string v3, "\\-"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 759
    const-string v3, "b"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    const-string v0, "b"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    :cond_1
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 763
    const-string v0, "VponSDKPlugIn"

    const-string v1, "SMS body is empty"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v0, "SMS body is empty"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSendSMS throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSendSMS throw Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 824
    :catch_1
    move-exception v0

    .line 825
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 768
    :cond_2
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 769
    const-string v3, "sms_body"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 771
    const-string v0, "address"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 774
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_3

    .line 777
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    :cond_3
    :goto_2
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 785
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 788
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_9

    .line 789
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 790
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 791
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_4

    .line 792
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 793
    invoke-virtual {v0}, Lvpadn/af;->j()V

    .line 794
    invoke-virtual {v0}, Lvpadn/af;->k()V

    .line 815
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_1

    .line 780
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v0, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 796
    :cond_6
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 797
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ai;

    if-eqz v1, :cond_4

    .line 798
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ai;

    .line 799
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-virtual {v1, v0}, Lvpadn/ai;->j(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v1, v0}, Lvpadn/ai;->k(Ljava/lang/String;)V

    goto :goto_3

    .line 803
    :cond_7
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 804
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 805
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 806
    :cond_8
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_4

    .line 807
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 808
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    goto :goto_3

    .line 812
    :cond_9
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private d(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2770
    const-string v0, "Vpadn-Clk"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2771
    const-string v0, "Vpadn-Clk"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2772
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    if-eqz v0, :cond_0

    .line 2781
    :goto_0
    return-object v0

    .line 2776
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get click URL"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2777
    goto :goto_0

    .line 2780
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get click URL (cannot find field in header)"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2781
    goto :goto_0
.end method

.method private d(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 833
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 835
    const/4 v0, 0x0

    .line 836
    const-string v2, "tel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    const-string v0, "tel"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    :cond_0
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    const-string v0, "VponSDKPlugIn"

    const-string v1, "TEL number format is wrong"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v0, "TEL number format is wrong"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 899
    :goto_0
    return-void

    .line 847
    :cond_1
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    const-string v1, "\\("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    const-string v1, "\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 854
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 859
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_6

    .line 860
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 861
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 864
    invoke-virtual {v0}, Lvpadn/af;->j()V

    .line 865
    invoke-virtual {v0}, Lvpadn/af;->k()V

    .line 886
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 892
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPlaceCall throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPlaceCall throw Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 895
    :catch_1
    move-exception v0

    .line 896
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 867
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 868
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ai;

    if-eqz v1, :cond_2

    .line 869
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ai;

    .line 870
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-virtual {v1, v0}, Lvpadn/ai;->j(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v1, v0}, Lvpadn/ai;->k(Ljava/lang/String;)V

    goto :goto_1

    .line 874
    :cond_4
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 875
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 876
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    :cond_5
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 879
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    goto/16 :goto_1

    .line 883
    :cond_6
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4129
    move v0, v1

    :goto_0
    sget-object v2, Lvpadn/ad;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4130
    sget-object v2, Lvpadn/ad;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4131
    const/4 v1, 0x1

    .line 4134
    :cond_0
    return v1

    .line 4129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e(Lorg/apache/http/HttpResponse;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2786
    const-string v1, "Vpadn-Appd-On"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2787
    const-string v1, "Vpadn-Appd-On"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2788
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appDetectionOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    if-eqz v1, :cond_0

    .line 2791
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2803
    :goto_0
    return v0

    .line 2793
    :catch_0
    move-exception v1

    .line 2794
    const-string v2, "VponSDKPlugIn"

    const-string v3, "Integer.valueOf(appDetectionOnStr) throw Excepiton"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2798
    :cond_0
    const-string v1, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection On"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2802
    :cond_1
    const-string v1, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection On (cannot find field in header)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 904
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 906
    const/4 v0, 0x0

    .line 907
    const-string v2, "u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 908
    const-string v0, "u"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    :cond_0
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cannot get url!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v0, "Cannot get ur at doOpenBrowserl!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 918
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 919
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 922
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 930
    :goto_1
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_7

    .line 931
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 932
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 933
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 935
    invoke-virtual {v0}, Lvpadn/af;->j()V

    .line 936
    invoke-virtual {v0}, Lvpadn/af;->k()V

    .line 957
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOpenBrowser throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "something error e.getLocalizedMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 963
    :catch_1
    move-exception v0

    .line 964
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 925
    :cond_3
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    const-string v2, "cordova.getActivity() = null when executing doOpenBrowser"

    invoke-static {v0, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 938
    :cond_4
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 939
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ai;

    if-eqz v1, :cond_2

    .line 940
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ai;

    .line 941
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-virtual {v1, v0}, Lvpadn/ai;->j(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v1, v0}, Lvpadn/ai;->k(Ljava/lang/String;)V

    goto :goto_2

    .line 945
    :cond_5
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 946
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 947
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    :cond_6
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_2

    .line 949
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 950
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    goto/16 :goto_2

    .line 954
    :cond_7
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private f(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2808
    const-string v0, "Vpadn-Appd-U"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2809
    const-string v0, "Vpadn-Appd-U"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2810
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appDetectionUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    if-eqz v0, :cond_0

    .line 2819
    :goto_0
    return-object v0

    .line 2814
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection Url"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2815
    goto :goto_0

    .line 2818
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection Url (cannot find field in header)"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2819
    goto :goto_0
.end method

.method private f(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 5

    .prologue
    .line 1585
    .line 1586
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_2

    .line 1587
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 1588
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init-finish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1589
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error webview call doOpenVideoEx vponWebView.getVponWebViewId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1590
    const-string v1, "VponSDKPlugIn"

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 1637
    :goto_0
    return-void

    .line 1595
    :cond_1
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 1603
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1604
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doOpenVideoEx jsonObj:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-direct {p0, v1}, Lcom/vpon/cordova/VponSDKPlugIn;->b(Lorg/json/JSONObject;)Lvpadn/cr;

    move-result-object v1

    .line 1606
    if-nez v1, :cond_3

    .line 1607
    const-string v0, "videoData is NULL in doOpenVideoEx"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1627
    :catch_0
    move-exception v0

    .line 1629
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throws exception in doOpenVideoEx"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throws exception in doOpenVideoEx exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1632
    :catch_1
    move-exception v0

    .line 1633
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doOpenVideoEx throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1598
    :cond_2
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    const-string v1, "webView instanceof vponAdWebView is false at doOpenVideoEx"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string v0, "webView instanceof vponAdWebView is false at doOpenVideoEx"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    :cond_3
    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$20;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/vpon/cordova/VponSDKPlugIn$20;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Lvpadn/cr;Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1621
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1623
    :cond_4
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cordova.getActivity() = null when executing doOpenVideoEx"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private g(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2824
    const-string v0, "Vpadn-Appd-Meth"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2825
    const-string v0, "Vpadn-Appd-Meth"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2826
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appDetectionMeth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    if-eqz v0, :cond_0

    .line 2835
    :goto_0
    return-object v0

    .line 2830
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection Method"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2831
    goto :goto_0

    .line 2834
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection Method (cannot find field in header)"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2835
    goto :goto_0
.end method

.method private g(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 1641
    const-string v0, "VponSDKPlugIn"

    const-string v1, "call doPrepareOpenVideoEx for video cache"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 1646
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebViewCache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1647
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error webview call doPrepareOpenVideoEx vponWebView.getVponWebViewId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1649
    const-string v1, "VponSDKPlugIn"

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 1702
    :goto_0
    return-void

    .line 1656
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "webView instanceof vponAdWebView is false at doPrepareOpenVideoEx"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v0, "webView instanceof vponAdWebView is false at doPrepareOpenVideoEx"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1692
    :catch_0
    move-exception v0

    .line 1694
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throws exception in doPrepareOpenVideoEx"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1696
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throws exception in doPrepareOpenVideoEx exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1697
    :catch_1
    move-exception v0

    .line 1698
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doPrepareOpenVideoEx throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1661
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1662
    const-string v0, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPrepareOpenVideoEx jsonObj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-direct {p0, v1}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 1664
    if-nez v2, :cond_2

    .line 1665
    const-string v0, "VponSDKPlugIn"

    const-string v1, "videoUrl is NULL in doPrepareOpenVideoEx"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v0, "videoUrl is NULL in doPrepareOpenVideoEx"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :cond_2
    const/4 v0, 0x0

    .line 1671
    const-string v3, "v_s"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1672
    const-string v0, "v_s"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1674
    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1683
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/vpon/cordova/VponSDKPlugIn$21;

    invoke-direct {v3, p0, p2, v2, v0}, Lcom/vpon/cordova/VponSDKPlugIn$21;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1675
    :catch_2
    move-exception v0

    .line 1676
    const-string v0, "VponSDKPlugIn"

    const-string v1, "videoSize has NumberFormatException in doPrepareOpenVideoEx"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const-string v0, "videoSize has NumberFormatException in doPrepareOpenVideoEx"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method private h(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2840
    const-string v0, "Vpadn-Appd-Bl"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2841
    const-string v0, "Vpadn-Appd-Bl"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2842
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appDetectionBlockList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    if-eqz v0, :cond_0

    .line 2851
    :goto_0
    return-object v0

    .line 2846
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection Block List"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2847
    goto :goto_0

    .line 2850
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Cannot get app detection Block List (cannot find field in header)"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2851
    goto :goto_0
.end method

.method private h(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 13

    .prologue
    .line 1707
    .line 1708
    const/4 v1, 0x0

    .line 1709
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_b

    .line 1710
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 1711
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bannerWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1712
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nativeAdClickJSWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1713
    const-string v0, "VponSDKPlugIn"

    const-string v1, "only banner or native ad webview allow to call open_webapp"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const-string v0, "only banner webview allow to call open_webapp"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 1798
    :goto_0
    return-void

    .line 1717
    :cond_0
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    .line 1718
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1719
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v1

    .line 1729
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1730
    const-string v0, "VponSDKPlugIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonObj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v4, 0x0

    .line 1733
    const-string v0, "u"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1734
    const-string v0, "u"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1737
    :cond_2
    const/4 v5, 0x0

    .line 1738
    const-string v0, "html"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1739
    const-string v0, "html"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1742
    :cond_3
    const/4 v6, 0x0

    .line 1743
    const-string v0, "custom_close"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1744
    const-string v0, "custom_close"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_1
    move v6, v0

    .line 1747
    :cond_4
    const/4 v7, 0x1

    .line 1748
    const-string v0, "allow_orientation_change"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1749
    const-string v0, "allow_orientation_change"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_2
    move v7, v0

    .line 1752
    :cond_5
    const-string v8, "none"

    .line 1753
    const-string v0, "force_orientation"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1754
    const-string v0, "force_orientation"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1757
    :cond_6
    const v9, 0xffffff

    .line 1758
    const-string v0, "bk_c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1759
    const-string v0, "bk_c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1762
    :cond_7
    const/4 v10, 0x0

    .line 1763
    const-string v0, "show_prog_bar"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1764
    const-string v0, "show_prog_bar"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_3
    move v10, v0

    .line 1767
    :cond_8
    const/4 v11, 0x0

    .line 1768
    const-string v0, "show_nav_bar"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1769
    const-string v0, "show_nav_bar"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_4
    move v11, v0

    .line 1772
    :cond_9
    const/4 v12, 0x0

    .line 1773
    const-string v0, "use_webview_load_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1774
    const-string v0, "use_webview_load_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    move v12, v0

    .line 1777
    :cond_a
    invoke-static {v5}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v4}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1778
    const-string v0, "VponSDKPlugIn"

    const-string v1, "StringUtils.isBlank(html) && StringUtils.isBlank(url)"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v0, "StringUtils.isBlank(html) && StringUtils.isBlank(url) at doOpenWebAppStep1"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1791
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throws exception in doOpenWebAppStep1"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1793
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throws exception in doOpenWebAppStep1 exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1794
    :catch_1
    move-exception v0

    .line 1795
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1723
    :cond_b
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    const-string v1, "webView instanceof VponAdWebView is false at doOpenWebAppStep1"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const-string v0, "webView instanceof VponAdWebView is false at doOpenWebAppStep1"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1744
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1749
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1764
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1769
    :cond_f
    const/4 v0, 0x0

    goto :goto_4

    .line 1774
    :cond_10
    const/4 v0, 0x0

    goto :goto_5

    :cond_11
    move-object v0, p0

    move-object v3, p2

    .line 1783
    invoke-virtual/range {v0 .. v12}, Lcom/vpon/cordova/VponSDKPlugIn;->doOpenWebAppStep2(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private i(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1867
    .line 1868
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1870
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v5

    .line 1872
    const-string v0, "mraid2_banner"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1873
    const-string v2, "VponSDKPlugIn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Banner JS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1875
    const-string v2, "mraid2_banner"

    invoke-virtual {v5, v2, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v1

    .line 1880
    :goto_0
    const-string v0, "mraid2_expanded"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1881
    const-string v6, "VponSDKPlugIn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Banner expanded JS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1883
    const-string v6, "mraid2_expanded"

    invoke-virtual {v5, v6, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1888
    :goto_1
    const-string v0, "mraid2_interstitial"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1889
    const-string v6, "VponSDKPlugIn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interstitial JS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1891
    const-string v3, "mraid2_intersitial"

    invoke-virtual {v5, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1896
    :goto_2
    const-string v0, "viewable_rate"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 1897
    const-string v0, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cover rate:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const-string v0, "viewable_rate"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1900
    const-string v0, "viewable_duration"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1901
    const-string v3, "VponSDKPlugIn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cover duration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const-string v3, "viewable_duration"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1904
    const/16 v0, 0x1f4

    .line 1905
    const-string v3, "inst_close_button_delay"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1906
    const-string v0, "inst_close_button_delay"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1908
    :cond_0
    const-string v3, "VponSDKPlugIn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "general interstitial close button delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const-string v3, "inst_close_button_delay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1912
    const-string v0, "inst_lock_back_key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1913
    const-string v0, "inst_lock_back_key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1915
    :goto_3
    const-string v3, "VponSDKPlugIn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "general interstitial lock back key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const-string v3, "inst_lock_back_key"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1918
    const-string v0, "close_btn_small"

    .line 1919
    const-string v3, "inst_close_button_size"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1920
    const-string v0, "inst_close_button_size"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1922
    :cond_1
    const-string v3, "VponSDKPlugIn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "general interstitial close button size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const-string v3, "inst_close_button_size"

    invoke-virtual {v5, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1925
    const-string v0, "call_show_func"

    .line 1926
    const-string v3, "inst_send_imp_policy"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1927
    const-string v0, "inst_send_imp_policy"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1929
    :cond_2
    const-string v3, "VponSDKPlugIn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "general interstitial send impression url policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const-string v3, "inst_send_imp_policy"

    invoke-virtual {v5, v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1933
    const-string v0, "inst_no_cache_android"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1934
    const-string v0, "inst_no_cache_android"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1936
    :goto_4
    const-string v1, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interstitial no cache: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const-string v1, "inst_no_cache_android"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1939
    const-string v0, "loc_accuracy"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1940
    const-string v0, "loc_accuracy"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1941
    const-string v1, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOC accAccuracy:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-static {v0}, Lvpadn/bo;->a(I)V

    .line 1947
    :goto_5
    const-string v0, "loc_cachetime"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1948
    const-string v0, "loc_cachetime"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1949
    const-string v1, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOC cacheTime:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-static {v0}, Lvpadn/bo;->b(I)V

    .line 1957
    :goto_6
    const-string v0, "scan_wifi_u"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1958
    const-string v0, "scan_wifi_u"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1959
    const-string v1, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scan_wifi_u: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-static {v0}, Lvpadn/bs;->a(Ljava/lang/String;)V

    .line 1965
    :goto_7
    const-string v0, "wifi_cache_size"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1966
    const-string v0, "wifi_cache_size"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1967
    const-string v1, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi_cache_size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-static {v0}, Lvpadn/bs;->a(I)V

    .line 1973
    :goto_8
    const-string v0, "wifi_similar_size"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1974
    const-string v0, "wifi_similar_size"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1975
    const-string v1, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi_similar_size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    invoke-static {v0}, Lvpadn/bs;->b(I)V

    .line 1981
    :goto_9
    if-eqz v2, :cond_b

    .line 1982
    const-string v0, "VponSDKPlugIn"

    const-string v1, "Cannot get all of js files"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-string v0, "Cannot get all of js files"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 1999
    :goto_a
    return-void

    :cond_3
    move v2, v3

    .line 1877
    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 1885
    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 1893
    goto/16 :goto_2

    .line 1944
    :cond_6
    const-string v0, "VponSDKPlugIn"

    const-string v1, "Cannot find loc_accuracy"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1991
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLoadSdkConstants throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1993
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLoadSdkConstants throws Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 1994
    :catch_1
    move-exception v0

    .line 1995
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 1954
    :cond_7
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    const-string v1, "Cannot find loc_cachetime"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1962
    :cond_8
    const-string v0, "VponSDKPlugIn"

    const-string v1, "Cannot find scan_wifi_u"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1970
    :cond_9
    const-string v0, "VponSDKPlugIn"

    const-string v1, "Cannot find wifi_cache_size"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1978
    :cond_a
    const-string v0, "VponSDKPlugIn"

    const-string v1, "Cannot find wifi_similar_size"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1987
    :cond_b
    invoke-virtual {p2}, Lvpadn/p;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :cond_c
    move v0, v1

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_3
.end method

.method private j(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 2004
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2005
    const-string v0, "et"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2006
    const-string v2, "eid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2008
    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v2, Lvpadn/ag;

    .line 2009
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1, p2}, Lvpadn/ag;->addEventListener(Ljava/lang/String;ILvpadn/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :goto_0
    return-void

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2012
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAddEvent throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2014
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " doAddEvent throw exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2015
    :catch_1
    move-exception v0

    .line 2016
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 2023
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2024
    const-string v0, "et"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2025
    const-string v2, "eid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2027
    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v2, Lvpadn/ag;

    .line 2028
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1, p2}, Lvpadn/ag;->removeEventListener(Ljava/lang/String;ILvpadn/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    :goto_0
    return-void

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2031
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRemoveEvent throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2033
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " doRemoveEvent throw exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2034
    :catch_1
    move-exception v0

    .line 2035
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private l(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 2044
    :try_start_0
    new-instance v5, Lcom/vpon/cordova/VponSDKPlugIn$23;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v5, p0, v1}, Lcom/vpon/cordova/VponSDKPlugIn$23;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;)V

    .line 2058
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2060
    const-string v2, "e"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2062
    const-string v1, "description"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2063
    const-string v1, "description"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 2065
    :goto_0
    const-string v1, "location"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2066
    const-string v1, "location"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 2068
    :goto_1
    const-string v1, "start"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2069
    const-string v1, "start"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2071
    :goto_2
    const-string v1, "end"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2072
    const-string v1, "end"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2074
    :goto_3
    const-string v7, "summary"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2075
    const-string v0, "summary"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2078
    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 2079
    :cond_1
    const-string v0, "Cannot get start or end at doCreateCalendarEvent"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 2164
    :goto_4
    return-void

    .line 2083
    :cond_2
    if-nez v4, :cond_3

    .line 2084
    const-string v0, "Cannot get title (description) at doCreateCalendarEvent"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2154
    :catch_0
    move-exception v0

    .line 2155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2156
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCreateCalendarEvent throw Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2158
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCreateCalendarEvent throw Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 2159
    :catch_1
    move-exception v0

    .line 2160
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 2088
    :cond_3
    :try_start_2
    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 2089
    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 2090
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2092
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2093
    const-string v7, "vnd.android.cursor.item/event"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2095
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2096
    const-string v2, "beginTime"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2098
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2099
    const-string v1, "endTime"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2101
    if-eqz v0, :cond_4

    .line 2102
    const-string v1, "description"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2105
    :cond_4
    if-eqz v3, :cond_5

    .line 2106
    const-string v0, "eventLocation"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    :cond_5
    if-eqz v4, :cond_6

    .line 2110
    const-string v0, "title"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2113
    :cond_6
    const/high16 v0, 0x10000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2118
    :try_start_3
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2126
    :try_start_4
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_b

    .line 2127
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 2128
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2129
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_7

    .line 2130
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 2131
    invoke-virtual {v0}, Lvpadn/af;->j()V

    .line 2132
    invoke-virtual {v0}, Lvpadn/af;->k()V

    .line 2152
    :cond_7
    :goto_5
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_4

    .line 2119
    :catch_2
    move-exception v0

    .line 2120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2121
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doCreateCalendarEvent throw Exception[startActivity]"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCreateCalendarEvent throw Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2134
    :cond_8
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2135
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ai;

    if-eqz v1, :cond_7

    .line 2136
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ai;

    .line 2137
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 2138
    invoke-virtual {v1, v0}, Lvpadn/ai;->j(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v1, v0}, Lvpadn/ai;->k(Ljava/lang/String;)V

    goto :goto_5

    .line 2141
    :cond_9
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2142
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2143
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2144
    :cond_a
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_7

    .line 2145
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 2146
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    goto :goto_5

    .line 2150
    :cond_b
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    :cond_c
    move-object v1, v0

    goto/16 :goto_3

    :cond_d
    move-object v2, v0

    goto/16 :goto_2

    :cond_e
    move-object v3, v0

    goto/16 :goto_1

    :cond_f
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private m(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2171
    if-nez v0, :cond_0

    .line 2172
    const-string v0, "VponSDKPlugIn"

    const-string v1, "context is null in doStroePicture"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    :try_start_0
    const-string v0, "context is null at doStroePicture"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    :goto_0
    return-void

    .line 2175
    :catch_0
    move-exception v0

    .line 2176
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2181
    :cond_0
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$24;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn$24;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Lorg/json/JSONArray;Lvpadn/p;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private n(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2374
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_1

    .line 2375
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 2376
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bannerWebView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2377
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nativeAdClickJSWebView"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2378
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "banner webview do not allow to call set_orientation"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    const-string v0, "banner webview do not allow to call set_orientation"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 2430
    :goto_0
    return-void

    .line 2383
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v1, "something wrong [webView instanceof VponAdWebView is falsed]"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    const-string v0, "something wrong [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2420
    :catch_0
    move-exception v0

    .line 2421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2422
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doSetOrientation Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2424
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw exception at doSetOrientation Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2425
    :catch_1
    move-exception v0

    .line 2426
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2388
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2389
    const-string v0, "VponSDKPlugIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonObj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const-string v0, "allow_orientation_change"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2393
    const-string v0, "allow_orientation_change"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_1
    move v2, v0

    .line 2396
    :goto_2
    const-string v0, "none"

    .line 2397
    const-string v4, "force_orientation"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2398
    const-string v0, "force_orientation"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2401
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 2403
    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2404
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2405
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2418
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 2393
    goto :goto_1

    .line 2406
    :cond_6
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2407
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 2409
    :cond_7
    if-nez v2, :cond_4

    .line 2411
    const/4 v0, 0x2

    if-ne v3, v0, :cond_8

    .line 2412
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 2413
    :cond_8
    if-ne v3, v1, :cond_4

    .line 2414
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_9
    move v2, v1

    goto :goto_2
.end method

.method private o(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 2434
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2435
    const-string v0, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonObj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    const/4 v0, 0x0

    .line 2437
    const-string v2, "u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2438
    const-string v0, "u"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2441
    :cond_0
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2442
    const-string v0, "VponSDKPlugIn"

    const-string v1, "url format error"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const-string v0, "url format error"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 2496
    :goto_0
    return-void

    .line 2447
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2448
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2449
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2451
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2454
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_6

    .line 2455
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 2456
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2457
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_2

    .line 2458
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 2459
    invoke-virtual {v0}, Lvpadn/af;->j()V

    .line 2460
    invoke-virtual {v0}, Lvpadn/af;->k()V

    .line 2481
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2487
    :catch_0
    move-exception v0

    .line 2488
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2489
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doOpenStore Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2491
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw exception at doOpenStore Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2492
    :catch_1
    move-exception v0

    .line 2493
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 2462
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2463
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ai;

    if-eqz v1, :cond_2

    .line 2464
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ai;

    .line 2465
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 2466
    invoke-virtual {v1, v0}, Lvpadn/ai;->j(Ljava/lang/String;)V

    .line 2467
    invoke-virtual {v1, v0}, Lvpadn/ai;->k(Ljava/lang/String;)V

    goto :goto_1

    .line 2469
    :cond_4
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2470
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2471
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2472
    :cond_5
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_2

    .line 2473
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 2474
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    goto/16 :goto_1

    .line 2478
    :cond_6
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private p(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2503
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2505
    const-string v2, "a"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "a"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 2506
    :goto_0
    const-string v2, "type"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "type"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 2507
    :goto_1
    const-string v2, "u"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "u"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v2

    .line 2509
    :goto_2
    const-string v2, "extras"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "extras"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 2510
    :goto_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2513
    if-eqz v3, :cond_4

    .line 2514
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v9

    move v2, v0

    .line 2515
    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 2516
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2517
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2518
    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2515
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move-object v6, v1

    .line 2505
    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 2506
    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 2507
    goto :goto_2

    :cond_3
    move-object v3, v1

    .line 2509
    goto :goto_3

    .line 2522
    :cond_4
    const-string v2, "cats"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "cats"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v3, v2

    .line 2523
    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    if-eqz v3, :cond_6

    move v2, v0

    .line 2526
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 2527
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2526
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    move-object v3, v1

    .line 2522
    goto :goto_5

    .line 2531
    :cond_6
    const-string v2, "flags"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "flags"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2532
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2534
    if-eqz v1, :cond_8

    .line 2535
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 2536
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2535
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2540
    :cond_8
    if-eqz v4, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v0

    .line 2542
    :goto_8
    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    .line 2543
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2551
    :cond_9
    :goto_9
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2552
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2554
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "text/html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2555
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 2609
    :catch_0
    move-exception v0

    .line 2610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2611
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at openIntent Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2613
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw exception at openIntent Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2619
    :goto_b
    return-void

    .line 2540
    :cond_a
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_8

    .line 2546
    :cond_b
    if-eqz v5, :cond_9

    .line 2547
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 2556
    :cond_c
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2559
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 2560
    :cond_d
    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2562
    const-string v0, "android.intent.extra.EMAIL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 2564
    :cond_e
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 2568
    :cond_f
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2569
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c

    .line 2572
    :cond_10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2573
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_d

    .line 2578
    :cond_11
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2581
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_16

    .line 2582
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 2583
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2584
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_12

    .line 2585
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 2586
    invoke-virtual {v0}, Lvpadn/af;->j()V

    .line 2587
    invoke-virtual {v0}, Lvpadn/af;->k()V

    .line 2607
    :cond_12
    :goto_e
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_b

    .line 2589
    :cond_13
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeAdClickJSWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2590
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ai;

    if-eqz v1, :cond_12

    .line 2591
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ai;

    .line 2592
    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 2593
    invoke-virtual {v1, v0}, Lvpadn/ai;->j(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {v1, v0}, Lvpadn/ai;->k(Ljava/lang/String;)V

    goto :goto_e

    .line 2596
    :cond_14
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2597
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2598
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2599
    :cond_15
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_12

    .line 2600
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 2601
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    goto :goto_e

    .line 2605
    :cond_16
    const-string v0, "something error [webView instanceof VponAdWebView is false]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_e

    .line 2614
    :catch_1
    move-exception v0

    .line 2615
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_b
.end method

.method private q(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 6

    .prologue
    .line 3070
    :try_start_0
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->b()V

    .line 3072
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 3074
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3075
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init-finish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3076
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CALL doAdReq from VponWebView ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL doAdReq from VponWebView ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3150
    :goto_0
    return-void

    .line 3082
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3083
    const/4 v0, 0x0

    .line 3084
    const-string v2, "u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3085
    const-string v0, "u"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3088
    :cond_1
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3089
    const-string v0, "Cannot get url!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3141
    :catch_0
    move-exception v0

    .line 3142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3143
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doAdReq Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3145
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw exception at doAdReq Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3146
    :catch_1
    move-exception v0

    .line 3147
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3093
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3094
    const-string v0, "url format error!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto :goto_0

    .line 3098
    :cond_3
    const-string v1, "format=na"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3099
    const-string v1, "VponSDKPlugIn"

    const-string v2, "has format=na"

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3101
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAdReq http url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 3108
    :goto_1
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_5

    .line 3109
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 3117
    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$4;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn$4;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)V

    .line 3129
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3132
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3139
    :goto_2
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_0

    .line 3104
    :cond_4
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAdReq http url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_1

    .line 3111
    :cond_5
    const-string v0, "cordova instanceof VponControllerInterface is false [doAdReq]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3134
    :cond_6
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cordova.getActivity() = null when executing AsyncTask in doAdReq(...) method."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private r(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 5

    .prologue
    .line 3156
    .line 3157
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ag;

    if-eqz v0, :cond_0

    .line 3158
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 3163
    invoke-interface {v0}, Lvpadn/ag;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v1

    .line 3165
    if-nez v1, :cond_1

    .line 3166
    const-string v0, "VponSDKPlugIn"

    const-string v1, "Call send click but clickUrl is null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    const-string v0, "cannot get click-url, maybe banner webview has sent click to server"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3267
    :goto_0
    return-void

    .line 3160
    :cond_0
    const-string v0, "cordova instanceof VponControllerInterface is false [doClick]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3257
    :catch_0
    move-exception v0

    .line 3258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3259
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doClick Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3261
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw exception at doClick Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3262
    :catch_1
    move-exception v0

    .line 3263
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3171
    :cond_1
    :try_start_2
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====> clickUrl is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$5;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn$5;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)V

    .line 3247
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3249
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3255
    :goto_1
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto :goto_0

    .line 3251
    :cond_2
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cordova.getActivity() = null when executing doClick"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private s(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 5

    .prologue
    .line 3271
    :try_start_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "call doSendImpression"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3273
    const-string v1, "js_side"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3274
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current policy is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that is not supported in doSendImpression method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current policy is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " that is not supported in doSendImpression method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3408
    :goto_0
    return-void

    .line 3279
    :cond_0
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v1, v1, Lvpadn/df;

    if-eqz v1, :cond_5

    .line 3280
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v1, Lvpadn/df;

    .line 3281
    invoke-virtual {v1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3282
    invoke-virtual {v1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current webview is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " that can not call doSendImpression."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3400
    :catch_0
    move-exception v0

    .line 3401
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doSendImpression Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3403
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw exception at doSendImpression Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3404
    :catch_1
    move-exception v0

    .line 3405
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3289
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v1, v1, Lvpadn/ag;

    if-eqz v1, :cond_2

    .line 3290
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v1, Lvpadn/ag;

    .line 3296
    invoke-interface {v1}, Lvpadn/ag;->getImpressionUrlAndRemoveImpressionUrl()Ljava/lang/String;

    move-result-object v2

    .line 3298
    if-nez v2, :cond_3

    .line 3299
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call doSendImpression but impressionUrl is null, maybe banner webview has sent impression to server or current policy is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get impression-url, maybe banner webview has sent impression to server or current policy is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " that is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3292
    :cond_2
    const-string v0, "cordova instanceof VponControllerInterface is false [doSendImpression]"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3305
    :cond_3
    const-string v0, "&policy=js_side"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3308
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====> impUrl is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$6;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/vpon/cordova/VponSDKPlugIn$6;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)V

    .line 3385
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3387
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3393
    :goto_1
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_0

    .line 3389
    :cond_4
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cordova.getActivity() = null when executing doClick"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3396
    :cond_5
    const-string v0, "webView is not VponWebView while calling doSendImpression"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private t(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 3412
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3414
    const/4 v0, 0x0

    .line 3415
    const-string v1, "u"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3416
    const-string v0, "u"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3419
    :goto_0
    invoke-static {v1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3420
    const-string v0, "Cannot get url!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3522
    :goto_1
    return-void

    .line 3424
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3425
    const-string v0, "url format error!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3512
    :catch_0
    move-exception v0

    .line 3513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3514
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doHttpGet Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3516
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw exception at doHttpGet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3517
    :catch_1
    move-exception v0

    .line 3518
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 3429
    :cond_1
    :try_start_2
    const-string v0, "timeout"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "timeout"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3433
    :goto_2
    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$7;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/vpon/cordova/VponSDKPlugIn$7;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;ILvpadn/p;)V

    .line 3503
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3504
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3510
    :goto_3
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_1

    .line 3429
    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    .line 3506
    :cond_3
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cordova.getActivity() = null when executing doHttpGet"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private u(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 3527
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 3528
    invoke-interface {v0}, Lvpadn/ag;->getSdkParam()Lorg/json/JSONObject;

    move-result-object v0

    .line 3529
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doGetSdkParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3542
    :goto_0
    return-void

    .line 3532
    :catch_0
    move-exception v0

    .line 3534
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doGetSdkParams"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3536
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetSdkParams return Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3537
    :catch_1
    move-exception v0

    .line 3538
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doGetSdkParams e1:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private v(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 3546
    :try_start_0
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 3548
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/au;->e(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3549
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3550
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secretJsonObjStrWithoutLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    const-string v1, "NH/mLeyCBfokzYKUPNGEEg=="

    .line 3552
    invoke-static {v1, v0}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3554
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3555
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3557
    const-string v0, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doGetIdPayload ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    invoke-virtual {p2, v1}, Lvpadn/p;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3570
    :goto_0
    return-void

    .line 3560
    :catch_0
    move-exception v0

    .line 3562
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doGetIdPayload"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3564
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetIdPayload return Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3565
    :catch_1
    move-exception v0

    .line 3566
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doGetIdPayload e1:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private w(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3574
    :try_start_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "Enter doCanOpenUrl"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 3576
    const-string v0, "limitTrackingApps"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3577
    const-string v0, "limitTrackingApps"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 3578
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3579
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 3580
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 3581
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3582
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 3584
    :try_start_1
    const-string v0, "VponSDKPlugIn"

    const-string v6, "this application refused to be tracked for all apps on the phone"

    invoke-static {v0, v6}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    const-string v0, "this application refused to be tracked for all apps on the phone"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3636
    :goto_1
    return-void

    .line 3587
    :catch_0
    move-exception v0

    .line 3588
    :try_start_2
    const-string v6, "VponSDKPlugIn"

    const-string v7, "throw exception at doCanOpenUrls 1"

    invoke-static {v6, v7, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3580
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 3597
    :cond_1
    if-eqz v3, :cond_5

    const-string v0, "getAllUrls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3598
    const-string v0, "getAllUrls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3601
    :goto_2
    if-eqz v3, :cond_2

    const-string v1, "urls"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v8, :cond_2

    .line 3602
    const-string v0, "urls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3603
    invoke-direct {p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3604
    invoke-direct {p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->c(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3606
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3627
    :catch_1
    move-exception v0

    .line 3628
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doCanOpenUrls 2"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3630
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCanOpenUrls return Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3631
    :catch_2
    move-exception v0

    .line 3632
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doCanOpenUrls 3"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3608
    :cond_2
    if-eqz v3, :cond_4

    if-ne v0, v8, :cond_4

    .line 3609
    const/4 v0, 0x0

    .line 3611
    :try_start_4
    const-string v1, "blockUrls"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3612
    const-string v0, "blockUrls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3615
    :cond_3
    invoke-direct {p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->b(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3616
    invoke-direct {p0, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->c(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3618
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lorg/json/JSONArray;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 3622
    :cond_4
    :try_start_5
    const-string v0, "doCanOpenUrls format error"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 3623
    :catch_3
    move-exception v0

    .line 3624
    :try_start_6
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doCanOpenUrls 1"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private x(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 3736
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3738
    const/4 v0, 0x0

    .line 3739
    const-string v2, "k"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3740
    const-string v0, "k"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3743
    :cond_0
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3744
    const-string v0, "Cannot get key at JSON of put_data!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3762
    :goto_0
    return-void

    .line 3748
    :cond_1
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lvpadn/aw;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3749
    invoke-virtual {p2}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3751
    :catch_0
    move-exception v0

    .line 3752
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3753
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doPutData"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3755
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPutData return Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3756
    :catch_1
    move-exception v0

    .line 3758
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private y(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 3766
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3768
    const/4 v0, 0x0

    .line 3769
    const-string v2, "k"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3770
    const-string v0, "k"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3773
    :cond_0
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3774
    const-string v0, "Cannot get key at JSON of get_data!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3796
    :goto_0
    return-void

    .line 3778
    :cond_1
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lvpadn/aw;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3779
    if-eqz v1, :cond_2

    .line 3780
    invoke-virtual {p2, v1}, Lvpadn/p;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3785
    :catch_0
    move-exception v0

    .line 3786
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3787
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doGetData"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3789
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetData return Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3790
    :catch_1
    move-exception v0

    .line 3792
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3782
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get value by the key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private z(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 3800
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3802
    const/4 v0, 0x0

    .line 3803
    const-string v2, "k"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3804
    const-string v0, "k"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3807
    :cond_0
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3808
    const-string v0, "Cannot get key at JSON of remove_data!"

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3825
    :goto_0
    return-void

    .line 3811
    :cond_1
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lvpadn/aw;->e(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {p2}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3814
    :catch_0
    move-exception v0

    .line 3815
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3816
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throw exception at doRemoveData"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3818
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRemoveData return Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3819
    :catch_1
    move-exception v0

    .line 3821
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 4139
    .line 4140
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    instance-of v0, v0, Lvpadn/df;

    if-eqz v0, :cond_0

    .line 4141
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    .line 4142
    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4143
    const-string v0, "VponSDKPlugIn"

    const-string v1, "only VponWebViewConstant.VIDEO_WEBVIEW webview allow to call native video player action"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    const-string v0, "only VponWebViewConstant.VIDEO_WEBVIEW webview allow to call native video player action"

    invoke-direct {p0, p3, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 4165
    :goto_0
    return-void

    .line 4149
    :cond_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vpon/cordova/VponSDKPlugIn$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn$10;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4157
    :catch_0
    move-exception v0

    .line 4158
    const-string v1, "VponSDKPlugIn"

    const-string v2, "throws exception in doControlNativeVideoPlayerAction"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4160
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throws exception in doControlNativeVideoPlayerAction exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4161
    :catch_1
    move-exception v0

    .line 4162
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doControlNativeVideoPlayerAction throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doOpenWebAppStep2(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    .locals 14

    .prologue
    .line 1807
    const-string v0, "VponSDKPlugIn"

    const-string v1, "CALL doOpenWebAppStep2"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    new-instance v0, Lcom/vpon/cordova/VponSDKPlugIn$22;

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object v13, p1

    invoke-direct/range {v0 .. v13}, Lcom/vpon/cordova/VponSDKPlugIn$22;-><init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZLjava/lang/String;)V

    .line 1855
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1856
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1862
    :goto_0
    return-void

    .line 1858
    :cond_0
    const-string v1, "VponSDKPlugIn"

    const-string v2, "cordova.getActivity() = null when executing doOpenWebAppStep2"

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 100
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 101
    :cond_0
    :try_start_0
    const-string v0, "VponSDKPlugIn"

    const-string v2, "action == null || args == null || callbackContext ==null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 105
    :cond_1
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->>execute action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callbackId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lvpadn/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " args:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v2, "load_sdk_constants"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->i(Lorg/json/JSONArray;Lvpadn/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    const-string v2, "VponSDKPlugIn"

    const-string v3, "throws exception at execute"

    invoke-static {v2, v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v1

    .line 269
    goto :goto_0

    .line 111
    :cond_2
    :try_start_2
    const-string v2, "close"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    invoke-direct {p0, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;)V

    goto :goto_0

    .line 115
    :cond_3
    const-string v2, "open_webapp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->h(Lorg/json/JSONArray;Lvpadn/p;)V

    goto :goto_0

    .line 119
    :cond_4
    const-string v2, "open_browser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->e(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 123
    :cond_5
    const-string v2, "expand"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 127
    :cond_6
    const-string v2, "resize"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->b(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string v2, "click"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 132
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->r(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 135
    :cond_8
    const-string v2, "impress"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 136
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->s(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 139
    :cond_9
    const-string v2, "place_call"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 140
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->d(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 143
    :cond_a
    const-string v2, "send_sms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 144
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->c(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 147
    :cond_b
    const-string v2, "add_event"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 148
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->j(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 151
    :cond_c
    const-string v2, "remove_event"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 152
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->k(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 155
    :cond_d
    const-string v2, "open_store"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 156
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->o(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 159
    :cond_e
    const-string v2, "open_video"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 160
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->C(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 163
    :cond_f
    const-string v2, "open_videoEx"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 164
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->f(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 167
    :cond_10
    const-string v2, "prepare_open_videoEx"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "cache_video"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 168
    :cond_11
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->g(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 171
    :cond_12
    const-string v2, "open_intent"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 172
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->p(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 175
    :cond_13
    const-string v2, "cre_cal_event"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 176
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->l(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 179
    :cond_14
    const-string v2, "store_pic"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 180
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->m(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 183
    :cond_15
    const-string v2, "set_orientation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 184
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->n(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 187
    :cond_16
    const-string v2, "http_get"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 188
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->t(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 191
    :cond_17
    const-string v2, "ad_req"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 192
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->q(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 195
    :cond_18
    const-string v2, "get_sdk_params"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->u(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 199
    :cond_19
    const-string v2, "use_custom_close"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 200
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->A(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 203
    :cond_1a
    const-string v2, "put_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 204
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->x(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 207
    :cond_1b
    const-string v2, "get_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 208
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->y(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 211
    :cond_1c
    const-string v2, "remove_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 212
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->z(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 215
    :cond_1d
    const-string v2, "can_open_urls"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 216
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->w(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 219
    :cond_1e
    const-string v2, "get_id_payload"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 220
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->v(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 223
    :cond_1f
    invoke-direct {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 227
    :cond_20
    const-string v2, "set_native_ad_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 228
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->B(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 231
    :cond_21
    const-string v2, "test"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 232
    const-string v2, "Cannot support test now!!"

    invoke-direct {p0, p3, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_22
    const-string v2, "close_native_click_webView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 236
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->D(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 239
    :cond_23
    const-string v2, "cancel_pause_locations"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 240
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->E(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 243
    :cond_24
    const-string v2, "unlock_back_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 244
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->F(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 247
    :cond_25
    const-string v2, "lock_back_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 248
    invoke-direct {p0, p2, p3}, Lcom/vpon/cordova/VponSDKPlugIn;->G(Lorg/json/JSONArray;Lvpadn/p;)V

    goto/16 :goto_0

    .line 252
    :cond_26
    const-string v2, "VponSDKPlugIn"

    const-string v3, "SDK: no action matched!"

    invoke-static {v2, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v2, "VponSDKPlugIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->>execute illegal action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callbackId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lvpadn/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " args:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const-string v3, "action"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v3, "e"

    const-string v4, "SDK: no action matched!"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {p3, v2}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 266
    :catch_1
    move-exception v0

    .line 267
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public getRandomFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 2349
    const-string v0, ".jpg"

    .line 2350
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2351
    const/4 v0, 0x0

    .line 2365
    :goto_0
    return-object v0

    .line 2353
    :cond_0
    const-string v1, "png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2354
    const-string v0, ".png"

    .line 2359
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2360
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2361
    const-string v3, "VponSDKPlugIn"

    invoke-static {v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    new-instance v3, Ljava/io/File;

    const-string v4, "/vpon"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 2364
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPON-justin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 2365
    goto :goto_0

    .line 2355
    :cond_2
    const-string v1, "gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2356
    const-string v0, ".gif"

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 721
    const-string v0, "VponSDKPlugIn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call onActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const v0, 0x927c1

    if-ne v0, p1, :cond_1

    .line 724
    const-string v0, "VponSDKPlugIn"

    const-string v1, "return from \'openBrowser\'"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    const v0, 0x927c2

    if-ne v0, p1, :cond_0

    goto :goto_0
.end method
