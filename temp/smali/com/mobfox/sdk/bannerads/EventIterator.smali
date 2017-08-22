.class public Lcom/mobfox/sdk/bannerads/EventIterator;
.super Ljava/lang/Object;
.source "EventIterator.java"


# instance fields
.field bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

.field context:Landroid/content/Context;

.field customDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/customevents/CustomEventData;",
            ">;"
        }
    .end annotation
.end field

.field mainHandler:Landroid/os/Handler;

.field mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pixel:Ljava/lang/String;

.field respObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mobFoxWebView"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p3, "respObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mobfox/sdk/webview/MobFoxWebView;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->customDataList:Ljava/util/List;

    .line 41
    iput-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 43
    iput-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

    .line 47
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->context:Landroid/content/Context;

    .line 48
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->mainHandler:Landroid/os/Handler;

    .line 49
    iput-object p4, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->params:Ljava/util/Map;

    .line 50
    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 51
    iput-object p3, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    .line 53
    const/4 v2, 0x0

    .line 56
    .local v2, "customEvents":Lorg/json/JSONArray;
    :try_start_0
    const-string v5, "customEvents"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->customDataList:Ljava/util/List;

    .line 64
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 66
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 69
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 70
    .local v1, "customEvent":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/mobfox/sdk/customevents/CustomEventData;->parseJSON(Lorg/json/JSONObject;)Lcom/mobfox/sdk/customevents/CustomEventData;

    move-result-object v0

    .line 71
    .local v0, "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.mobfox.sdk.customevents."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/mobfox/sdk/customevents/CustomEventData;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    iget-object v5, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 66
    .end local v0    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v1    # "customEvent":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Lorg/json/JSONException;
    const-string v5, "MobFoxBanner"

    const-string v6, "iterator json exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 73
    .restart local v4    # "i":I
    :catch_1
    move-exception v3

    .line 74
    .restart local v3    # "e":Lorg/json/JSONException;
    const-string v5, "MobFoxBanner"

    const-string v6, "iterator json exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 76
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "MobFoxBanner"

    const-string v6, "iterator class not found exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Throwable;
    const-string v5, "MobFoxBanner"

    const-string v6, "class not found throwable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 95
    new-instance v4, Lcom/mobfox/sdk/bannerads/EventIterator$1;

    invoke-direct {v4, p0, p1}, Lcom/mobfox/sdk/bannerads/EventIterator$1;-><init>(Lcom/mobfox/sdk/bannerads/EventIterator;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V

    .line 157
    .local v4, "customListener":Lcom/mobfox/sdk/customevents/CustomEventBannerListener;
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 159
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobfox/sdk/customevents/CustomEventData;

    .line 160
    .local v3, "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.mobfox.sdk.customevents."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/mobfox/sdk/customevents/CustomEventData;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 165
    .local v1, "co":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobfox/sdk/customevents/CustomEventBanner;

    .line 166
    .local v2, "customBanner":Lcom/mobfox/sdk/customevents/CustomEventBanner;
    iget-object v6, v3, Lcom/mobfox/sdk/customevents/CustomEventData;->pixel:Ljava/lang/String;

    iput-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->pixel:Ljava/lang/String;

    .line 167
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->context:Landroid/content/Context;

    iget-object v7, v3, Lcom/mobfox/sdk/customevents/CustomEventData;->networkId:Ljava/lang/String;

    iget-object v8, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->params:Ljava/util/Map;

    invoke-interface {v2, v6, v4, v7, v8}, Lcom/mobfox/sdk/customevents/CustomEventBanner;->loadAd(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 195
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "co":Ljava/lang/reflect/Constructor;
    .end local v2    # "customBanner":Lcom/mobfox/sdk/customevents/CustomEventBanner;
    .end local v3    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v3    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    :catch_0
    move-exception v5

    .line 169
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "MobFoxBanner"

    const-string v7, "ce ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 171
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "MobFoxBanner"

    const-string v7, "ce InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v5

    .line 173
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    const-string v6, "MobFoxBanner"

    const-string v7, "ce NoSuchMethodException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v5

    .line 175
    .local v5, "e":Ljava/lang/InstantiationException;
    const-string v6, "MobFoxBanner"

    const-string v7, "ce InstantiationException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v5

    .line 177
    .local v5, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "MobFoxBanner"

    const-string v7, "ce IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v5

    .line 179
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "MobFoxBanner"

    const-string v7, "banner iterator error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v3    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_1
    iput-object v9, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->pixel:Ljava/lang/String;

    .line 186
    new-instance v6, Lcom/mobfox/sdk/bannerads/BannerEvent;

    iget-object v7, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v8, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    invoke-direct {v6, v7, v8}, Lcom/mobfox/sdk/bannerads/BannerEvent;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;)V

    iput-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

    .line 187
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

    iget-object v7, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->context:Landroid/content/Context;

    invoke-virtual {v6, v7, v4, v9, v9}, Lcom/mobfox/sdk/bannerads/BannerEvent;->loadAd(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    const-string v7, "ad"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    const-string v7, "ad"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_2
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    const-string v7, "vasts"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    iget-object v6, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    const-string v7, "vasts"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator;->respObj:Lorg/json/JSONObject;

    const-string v1, "vasts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
