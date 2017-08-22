.class Lcom/mobfox/sdk/customevents/MoPubmNative$1;
.super Ljava/lang/Object;
.source "MoPubmNative.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/customevents/MoPubmNative;->load(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

.field final synthetic val$extraTrackers:Ljava/util/List;

.field final synthetic val$listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/customevents/MoPubmNative;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/customevents/MoPubmNative;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    iput-object p2, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    iput-object p3, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$extraTrackers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/mopub/nativeads/NativeErrorCode;

    .prologue
    .line 143
    const-string v0, "MobFoxNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobFox MoPubNative Custom >> fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobFox MoPubNative Custom >> fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    .line 145
    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 13
    .param p1, "nativeAd"    # Lcom/mopub/nativeads/NativeAd;

    .prologue
    .line 59
    const-string v8, "MobFoxNative"

    const-string v9, "MobFox MoPubNative Custom >> load"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    new-instance v8, Lcom/mobfox/sdk/customevents/MoPubmNative$1$1;

    invoke-direct {v8, p0}, Lcom/mobfox/sdk/customevents/MoPubmNative$1$1;-><init>(Lcom/mobfox/sdk/customevents/MoPubmNative$1;)V

    invoke-virtual {p1, v8}, Lcom/mopub/nativeads/NativeAd;->setMoPubNativeEventListener(Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;)V

    .line 72
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mJsonObject"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 73
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 76
    .local v0, "ad":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    new-instance v9, Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-direct {v9}, Lcom/mobfox/sdk/nativeads/NativeAd;-><init>()V

    iput-object v9, v8, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    .line 78
    const-string v8, "clk"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 79
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    iget-object v8, v8, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    const-string v9, "clk"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mobfox/sdk/nativeads/NativeAd;->setLink(Ljava/lang/String;)V

    .line 85
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v7, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    const-string v8, "clktracker"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    new-instance v8, Lcom/mobfox/sdk/nativeads/Tracker;

    const-string v9, "tracker"

    const-string v10, "clktracker"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/mobfox/sdk/nativeads/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v8, "imptracker"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v8

    if-eqz v8, :cond_2

    .line 95
    :try_start_1
    const-string v8, "imptracker"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 96
    .local v5, "imptrackers":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 97
    new-instance v8, Lcom/mobfox/sdk/nativeads/Tracker;

    const-string v9, "imptracker"

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/mobfox/sdk/nativeads/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "i":I
    .end local v5    # "imptrackers":Lorg/json/JSONArray;
    .end local v7    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :cond_0
    :try_start_2
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "no click url defined"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    .line 139
    .end local v0    # "ad":Lorg/json/JSONObject;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 89
    .restart local v0    # "ad":Lorg/json/JSONObject;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v7    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :cond_1
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "no click tracker defined"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 132
    .end local v0    # "ad":Lorg/json/JSONObject;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "ad":Lorg/json/JSONObject;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v7    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v8, "MobFoxNative"

    const-string v9, "MobFox MoPubNative Custom >> imptracker json exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$extraTrackers:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$extraTrackers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 105
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$extraTrackers:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_3
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    iget-object v8, v8, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-virtual {v8, v7}, Lcom/mobfox/sdk/nativeads/NativeAd;->setTrackerList(Ljava/util/List;)V

    .line 110
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v6, "textItems":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    const-string v8, "ctatext"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 112
    new-instance v8, Lcom/mobfox/sdk/nativeads/TextItem;

    const-string v9, "cta"

    const-string v10, "ctatext"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/mobfox/sdk/nativeads/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_4
    const-string v8, "text"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 115
    new-instance v8, Lcom/mobfox/sdk/nativeads/TextItem;

    const-string v9, "text"

    const-string v10, "text"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/mobfox/sdk/nativeads/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_5
    const-string v8, "title"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 118
    new-instance v8, Lcom/mobfox/sdk/nativeads/TextItem;

    const-string v9, "title"

    const-string v10, "title"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/mobfox/sdk/nativeads/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_6
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    iget-object v8, v8, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-virtual {v8, v6}, Lcom/mobfox/sdk/nativeads/NativeAd;->setTexts(Ljava/util/List;)V

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v4, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    const-string v8, "mainimage"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 124
    new-instance v8, Lcom/mobfox/sdk/nativeads/ImageItem;

    const-string v9, "mainimage"

    const-string v10, "mainimage"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/mobfox/sdk/nativeads/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_7
    const-string v8, "iconimage"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 127
    new-instance v8, Lcom/mobfox/sdk/nativeads/ImageItem;

    const-string v9, "iconimage"

    const-string v10, "iconimage"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/mobfox/sdk/nativeads/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_8
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    iget-object v8, v8, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-virtual {v8, v4}, Lcom/mobfox/sdk/nativeads/NativeAd;->setImages(Ljava/util/List;)V

    .line 131
    iget-object v8, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    iget-object v9, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    iget-object v10, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    iget-object v10, v10, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-interface {v8, v9, v10}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeReady(Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 134
    .end local v0    # "ad":Lorg/json/JSONObject;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    .end local v6    # "textItems":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    .end local v7    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :catch_2
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 136
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 137
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
