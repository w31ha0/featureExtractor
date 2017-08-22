.class final Lcom/mopub/nativeads/CustomEventNativeAdapter;
.super Ljava/lang/Object;
.source "CustomEventNativeAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/network/AdResponse;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adResponse"    # Lcom/mopub/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mopub/network/AdResponse;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "customEventNativeClassName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to invoke custom event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 27
    :try_start_0
    invoke-static {v1}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->create(Ljava/lang/String;)Lcom/mopub/nativeads/CustomEventNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    .local v0, "customEventNative":Lcom/mopub/nativeads/CustomEventNative;
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->hasJson()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    const-string v4, "com_mopub_native_json"

    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getEventDetails()Lcom/mopub/common/event/EventDetails;

    move-result-object v3

    .line 38
    .local v3, "eventDetails":Lcom/mopub/common/event/EventDetails;
    if-eqz v3, :cond_1

    .line 39
    const-string v4, "Event-Details"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    const-string v4, "Click-Tracking-Url"

    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :try_start_1
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v4

    .line 47
    invoke-virtual {v0, p0, p3, p1, v4}, Lcom/mopub/nativeads/CustomEventNative;->loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .end local v0    # "customEventNative":Lcom/mopub/nativeads/CustomEventNative;
    .end local v3    # "eventDetails":Lcom/mopub/common/event/EventDetails;
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load Custom Event Native class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 30
    sget-object v4, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p3, v4}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 53
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "customEventNative":Lcom/mopub/nativeads/CustomEventNative;
    .restart local v3    # "eventDetails":Lcom/mopub/common/event/EventDetails;
    :catch_1
    move-exception v2

    .line 54
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "Loading custom event native threw an error."

    invoke-static {v4, v2}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    sget-object v4, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p3, v4}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method
