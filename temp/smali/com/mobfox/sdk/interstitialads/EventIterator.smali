.class public Lcom/mobfox/sdk/interstitialads/EventIterator;
.super Ljava/lang/Object;
.source "EventIterator.java"


# instance fields
.field ad:Lorg/json/JSONObject;

.field adResp:Lorg/json/JSONObject;

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

.field handler:Landroid/os/Handler;

.field protected internalListener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

.field interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

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

.field wv:Lcom/mobfox/sdk/webview/MobFoxWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p3, "adResp"    # Lorg/json/JSONObject;
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
    .line 47
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->customDataList:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->context:Landroid/content/Context;

    .line 50
    iput-object p4, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->params:Ljava/util/Map;

    .line 51
    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->wv:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 52
    iput-object p3, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    .line 54
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->handler:Landroid/os/Handler;

    .line 56
    const/4 v2, 0x0

    .line 59
    .local v2, "customEvents":Lorg/json/JSONArray;
    :try_start_0
    const-string v6, "customEvents"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 65
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 67
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 69
    const-string v0, ""

    .line 71
    .local v0, "clazz":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 72
    .local v3, "customObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/mobfox/sdk/customevents/CustomEventData;->parseJSON(Lorg/json/JSONObject;)Lcom/mobfox/sdk/customevents/CustomEventData;

    move-result-object v1

    .line 73
    .local v1, "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.mobfox.sdk.customevents."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mobfox/sdk/customevents/CustomEventData;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Interstitial"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 75
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 67
    .end local v1    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v3    # "customObject":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 61
    .local v4, "e":Lorg/json/JSONException;
    const-string v6, "MobFoxInterstitial"

    const-string v7, "iterator parse error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 77
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v5    # "i":I
    :catch_1
    move-exception v4

    .line 78
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string v6, "MobFoxInterstitial"

    const-string v7, "custom Events JSONException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "MobFoxInterstitial"

    const-string v7, "custom Events ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/Throwable;
    const-string v6, "MobFoxInterstitial"

    const-string v7, "custom Events Throwable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 104
    new-instance v5, Lcom/mobfox/sdk/interstitialads/EventIterator$1;

    invoke-direct {v5, p0, p1}, Lcom/mobfox/sdk/interstitialads/EventIterator$1;-><init>(Lcom/mobfox/sdk/interstitialads/EventIterator;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V

    iput-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->internalListener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    .line 143
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 145
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobfox/sdk/customevents/CustomEventData;

    .line 146
    .local v2, "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.mobfox.sdk.customevents."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mobfox/sdk/customevents/CustomEventData;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Interstitial"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 151
    .local v1, "co":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .line 152
    .local v3, "customInterstitial":Lcom/mobfox/sdk/customevents/CustomEventInterstitial;
    iget-object v5, v2, Lcom/mobfox/sdk/customevents/CustomEventData;->pixel:Ljava/lang/String;

    iput-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->pixel:Ljava/lang/String;

    .line 153
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->internalListener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v7, v2, Lcom/mobfox/sdk/customevents/CustomEventData;->networkId:Ljava/lang/String;

    iget-object v8, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->params:Ljava/util/Map;

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/mobfox/sdk/customevents/CustomEventInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 188
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "co":Ljava/lang/reflect/Constructor;
    .end local v2    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v3    # "customInterstitial":Lcom/mobfox/sdk/customevents/CustomEventInterstitial;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v2    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string v5, "MobFoxInterstitial"

    const-string v6, "custom event InstantiationException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v4

    .line 157
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "MobFoxInterstitial"

    const-string v6, "custom event InvocationTargetException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    .line 159
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "MobFoxInterstitial"

    const-string v6, "custom event NoSuchMethodException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v4

    .line 161
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "MobFoxInterstitial"

    const-string v6, "custom event IllegalAccessException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    .line 163
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "MobFoxInterstitial"

    const-string v6, "custom event ClassNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v4

    .line 165
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "MobFoxInterstitial"

    const-string v6, "custom event Throwable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v2    # "customData":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v6, "ad"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v6, "vasts"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 173
    :cond_2
    new-instance v5, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    invoke-direct {v5, v6, v7}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    .line 174
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->internalListener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-virtual {v5, v6, v7, v8, v8}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->loadInterstitial(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v6, "ad"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v6, "ad"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    :cond_3
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v6, "vasts"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v6, "vasts"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 186
    :cond_4
    const-string v5, "MobFoxInterstitial"

    const-string v6, "no adds to show"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getAd()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->ad:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCustomDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/customevents/CustomEventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->customDataList:Ljava/util/List;

    return-object v0
.end method

.method public getInterstitialEvent()Lcom/mobfox/sdk/interstitialads/InterstitialEvent;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->customDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->adResp:Lorg/json/JSONObject;

    const-string v1, "vasts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyDownloaded(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/interstitialads/EventIterator$2;

    invoke-direct {v1, p0, p1}, Lcom/mobfox/sdk/interstitialads/EventIterator$2;-><init>(Lcom/mobfox/sdk/interstitialads/EventIterator;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator;->interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->notifyDownloaded(Ljava/lang/String;)V

    goto :goto_0
.end method
