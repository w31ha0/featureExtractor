.class public Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "com_mopub_native_json"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 63
    .local v10, "json":Ljava/lang/Object;
    instance-of v1, v10, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 64
    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 96
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v1, "Event-Details"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 69
    .local v9, "eventDetailsObject":Ljava/lang/Object;
    instance-of v1, v9, Lcom/mopub/common/event/EventDetails;

    if-eqz v1, :cond_1

    check-cast v9, Lcom/mopub/common/event/EventDetails;

    .end local v9    # "eventDetailsObject":Ljava/lang/Object;
    move-object v5, v9

    .line 72
    .local v5, "eventDetails":Lcom/mopub/common/event/EventDetails;
    :goto_1
    new-instance v4, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    invoke-direct {v4, p4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;-><init>(Ljava/util/Map;)V

    .line 73
    .local v4, "videoResponseHeaders":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
    invoke-virtual {v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->hasValidHeaders()Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 69
    .end local v4    # "videoResponseHeaders":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
    .end local v5    # "eventDetails":Lcom/mopub/common/event/EventDetails;
    .restart local v9    # "eventDetailsObject":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 78
    .end local v9    # "eventDetailsObject":Ljava/lang/Object;
    .restart local v4    # "videoResponseHeaders":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
    .restart local v5    # "eventDetails":Lcom/mopub/common/event/EventDetails;
    :cond_2
    const-string v1, "Click-Tracking-Url"

    .line 79
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 81
    .local v7, "clickTrackingUrlFromHeaderObject":Ljava/lang/Object;
    instance-of v1, v7, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    :cond_3
    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    :cond_4
    move-object v6, v7

    .line 87
    check-cast v6, Ljava/lang/String;

    .line 88
    .local v6, "clickTrackingUrlFromHeader":Ljava/lang/String;
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    move-object v2, v10

    check-cast v2, Lorg/json/JSONObject;

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Lcom/mopub/common/event/EventDetails;Ljava/lang/String;)V

    .line 92
    .local v0, "videoNativeAd":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    :try_start_0
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v8

    .line 94
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method
