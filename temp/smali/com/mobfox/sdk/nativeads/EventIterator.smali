.class public Lcom/mobfox/sdk/nativeads/EventIterator;
.super Ljava/lang/Object;
.source "EventIterator.java"


# instance fields
.field ad:Lcom/mobfox/sdk/nativeads/NativeAd;

.field context:Landroid/content/Context;

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/customevents/CustomEventData;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/mobfox/sdk/nativeads/NativeAd;Ljava/util/Map;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "ad"    # Lcom/mobfox/sdk/nativeads/NativeAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/customevents/CustomEventData;",
            ">;",
            "Lcom/mobfox/sdk/nativeads/NativeAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/customevents/CustomEventData;>;"
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->data:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    .line 33
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->context:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->params:Ljava/util/Map;

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v3, "nonexitent":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/customevents/CustomEventData;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/sdk/customevents/CustomEventData;

    .line 39
    .local v0, "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.mobfox.sdk.customevents."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/mobfox/sdk/customevents/CustomEventData;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mNative"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "clazz":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "MobFoxNative"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom Event class does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0    # "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v1    # "clazz":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    iget-object v4, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->data:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 49
    return-void
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)Lcom/mobfox/sdk/nativeads/EventIterator;
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/mobfox/sdk/nativeads/EventIterator;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/mobfox/sdk/nativeads/NativeAd;->parse(Lorg/json/JSONObject;)Lcom/mobfox/sdk/nativeads/NativeAd;

    move-result-object v0

    .line 90
    .local v0, "ad":Lcom/mobfox/sdk/nativeads/NativeAd;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v2, "customEvents":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/customevents/CustomEventData;>;"
    if-eqz p2, :cond_1

    .line 93
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    .local v4, "header":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "X-CustomEvent"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 95
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 96
    .local v5, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 98
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/mobfox/sdk/customevents/CustomEventData;->parseJSON(Lorg/json/JSONObject;)Lcom/mobfox/sdk/customevents/CustomEventData;

    move-result-object v1

    .line 99
    .local v1, "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    .end local v1    # "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Lorg/json/JSONException;
    const-string v6, "MobFoxNative"

    const-string v8, "unable to parse custom event"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/Throwable;
    const-string v6, "MobFoxNative"

    const-string v8, "unable to parse custom event"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v6, Lcom/mobfox/sdk/nativeads/EventIterator;

    invoke-direct {v6, p0, v2, v0, p3}, Lcom/mobfox/sdk/nativeads/EventIterator;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/mobfox/sdk/nativeads/NativeAd;Ljava/util/Map;)V

    return-object v6
.end method


# virtual methods
.method public callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventNativeListener;)V
    .locals 15
    .param p1, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->data:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mobfox/sdk/customevents/CustomEventData;

    .line 61
    .local v11, "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->data:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.mobfox.sdk.customevents."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/mobfox/sdk/customevents/CustomEventData;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mNative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 64
    .local v12, "clazz":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v12, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 65
    .local v13, "co":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v13, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/sdk/customevents/CustomEventNative;

    .line 66
    .local v0, "cen":Lcom/mobfox/sdk/customevents/CustomEventNative;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, "extraTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    new-instance v1, Lcom/mobfox/sdk/nativeads/Tracker;

    const-string v2, "impression"

    iget-object v3, v11, Lcom/mobfox/sdk/customevents/CustomEventData;->pixel:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mobfox/sdk/nativeads/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->context:Landroid/content/Context;

    iget-object v3, v11, Lcom/mobfox/sdk/customevents/CustomEventData;->networkId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->params:Ljava/util/Map;

    move-object/from16 v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/mobfox/sdk/customevents/CustomEventNative;->load(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v0    # "cen":Lcom/mobfox/sdk/customevents/CustomEventNative;
    .end local v4    # "extraTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    .end local v11    # "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v12    # "clazz":Ljava/lang/Class;
    .end local v13    # "co":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v11    # "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    :catch_0
    move-exception v14

    .line 70
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MobFoxNative"

    const-string v2, "Error creating custom event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v14

    .line 72
    .local v14, "e":Ljava/lang/Throwable;
    const-string v1, "MobFoxNative"

    const-string v2, "Error creating custom event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v11    # "ced":Lcom/mobfox/sdk/customevents/CustomEventData;
    .end local v14    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    if-eqz v1, :cond_0

    .line 80
    new-instance v5, Lcom/mobfox/sdk/nativeads/NativeEvent;

    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-direct {v5, v1}, Lcom/mobfox/sdk/nativeads/NativeEvent;-><init>(Lcom/mobfox/sdk/nativeads/NativeAd;)V

    .line 81
    .local v5, "ne":Lcom/mobfox/sdk/nativeads/NativeEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    .line 82
    iget-object v6, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/mobfox/sdk/nativeads/NativeEvent;->load(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/EventIterator;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
