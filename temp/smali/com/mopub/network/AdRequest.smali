.class public Lcom/mopub/network/AdRequest;
.super Lcom/mopub/volley/Request;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request",
        "<",
        "Lcom/mopub/network/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdFormat:Lcom/mopub/common/AdFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListener:Lcom/mopub/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adFormat"    # Lcom/mopub/common/AdFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "listener"    # Lcom/mopub/network/AdRequest$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, v4, p1, p5}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 63
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    iput-object p3, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    .line 67
    iput-object p2, p0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    .line 68
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 v1, 0x9c4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 73
    .local v0, "retryPolicy":Lcom/mopub/volley/DefaultRetryPolicy;
    invoke-virtual {p0, v0}, Lcom/mopub/network/AdRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 74
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 75
    return-void
.end method

.method private eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "adType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fullAdType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 309
    const-string v0, "mraid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "interstitial"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "rewarded_video"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "rewarded_playable"

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    .line 312
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Lcom/mopub/network/AdResponse;)V
    .locals 1
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/AdRequest$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    .line 329
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/mopub/network/AdResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->deliverResponse(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 87
    .local v0, "headers":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "languageCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    .local v2, "userLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v3}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    return-object v0
.end method

.method public getListener()Lcom/mopub/network/AdRequest$Listener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    return-object v0
.end method

.method getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "failUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 346
    :goto_0
    return-object v1

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 339
    .local v1, "requestId":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 341
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v3, "request_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "Unable to obtain request id from fail url."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V
    .locals 6
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 353
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 355
    new-instance v0, Lcom/mopub/common/event/Event$Builder;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v3, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v4, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    .line 357
    invoke-virtual {v4}, Lcom/mopub/common/event/BaseEvent$SamplingRate;->getSamplingRate()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mopub/common/event/Event$Builder;-><init>(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;D)V

    iget-object v2, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 358
    invoke-virtual {v0, v2}, Lcom/mopub/common/event/Event$Builder;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    .line 362
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 362
    :goto_0
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdWidthPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    .line 365
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 365
    :goto_1
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdHeightPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_3

    .line 368
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLat(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_4

    .line 369
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLon(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 370
    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoAccuracy(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget-wide v2, p2, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    long-to-double v2, v2

    .line 371
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withPerformanceDurationMs(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestUri(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/mopub/common/event/BaseEvent$Builder;->build()Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 377
    return-void

    :cond_1
    move-object v0, v1

    .line 363
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 366
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 368
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 369
    goto :goto_3
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 40
    .param p1, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Lcom/mopub/network/AdResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    move-object/from16 v16, v0

    .line 111
    .local v16, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/16 v36, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 112
    new-instance v35, Lcom/mopub/network/MoPubNetworkError;

    const-string v36, "Ad Unit is warming up."

    sget-object v37, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct/range {v35 .. v37}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v35 .. v35}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v35

    .line 303
    :goto_0
    return-object v35

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    .line 117
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v36

    .line 118
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v37

    .line 116
    invoke-static/range {v35 .. v37}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v19

    .line 120
    .local v19, "location":Landroid/location/Location;
    new-instance v8, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v8}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    .line 121
    .local v8, "builder":Lcom/mopub/network/AdResponse$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 123
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "adTypeString":Ljava/lang/String;
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "fullAdTypeString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 126
    invoke-virtual {v8, v15}, Lcom/mopub/network/AdResponse$Builder;->setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 130
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v23

    .line 132
    .local v23, "refreshTimeSeconds":Ljava/lang/Integer;
    if-nez v23, :cond_1

    const/16 v22, 0x0

    .line 135
    .local v22, "refreshTimeMilliseconds":Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 137
    const-string v35, "clear"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 138
    invoke-virtual {v8}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v4

    .line 139
    .local v4, "adResponse":Lcom/mopub/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Lcom/mopub/network/AdRequest;->logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 140
    new-instance v35, Lcom/mopub/network/MoPubNetworkError;

    const-string v36, "No ads found for ad unit."

    sget-object v37, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    invoke-static/range {v35 .. v35}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v35

    goto :goto_0

    .line 134
    .end local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    .end local v22    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_1

    .line 149
    .restart local v22    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_2
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "dspCreativeId":Ljava/lang/String;
    invoke-virtual {v8, v12}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 152
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v20

    .line 153
    .local v20, "networkType":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 155
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v21

    .line 156
    .local v21, "redirectUrl":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 160
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "clickTrackingUrl":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 163
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 165
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "failUrl":Ljava/lang/String;
    invoke-virtual {v8, v14}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mopub/network/AdRequest;->getRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 169
    .local v24, "requestId":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 171
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v36, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v18

    .line 172
    .local v18, "isScrollable":Z
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;

    .line 174
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v34

    .line 175
    .local v34, "width":Ljava/lang/Integer;
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v17

    .line 176
    .local v17, "height":Ljava/lang/Integer;
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 178
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v5

    .line 179
    .local v5, "adTimeoutDelaySeconds":Ljava/lang/Integer;
    if-nez v5, :cond_d

    const/16 v35, 0x0

    :goto_2
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 185
    invoke-virtual/range {p0 .. p1}, Lcom/mopub/network/AdRequest;->parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v25

    .line 186
    .local v25, "responseBody":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 187
    const-string v35, "json"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    const-string v35, "json_video"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 189
    :cond_3
    :try_start_0
    new-instance v35, Lorg/json/JSONObject;

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-static {v0, v6, v15, v1}, Lcom/mopub/mobileads/AdTypeTranslator;->getCustomEventName(Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "customEventClassName":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 203
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 204
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v35

    .line 203
    invoke-static/range {v35 .. v35}, Lcom/mopub/common/MoPub$BrowserAgent;->fromHeader(Ljava/lang/Integer;)Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object v7

    .line 205
    .local v7, "browserAgent":Lcom/mopub/common/MoPub$BrowserAgent;
    invoke-static {v7}, Lcom/mopub/common/MoPub;->setBrowserAgentFromAdServer(Lcom/mopub/common/MoPub$BrowserAgent;)V

    .line 206
    invoke-virtual {v8, v7}, Lcom/mopub/network/AdResponse$Builder;->setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;

    .line 209
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "customEventData":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 213
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    .line 218
    :cond_5
    :try_start_1
    invoke-static {v11}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v31

    .line 225
    .local v31, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v21, :cond_6

    .line 226
    const-string v35, "Redirect-Url"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_6
    if-eqz v9, :cond_7

    .line 231
    const-string v35, "Clickthrough-Url"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/mopub/network/AdRequest;->eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 235
    const-string v35, "Html-Response-Body"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v35, "Scrollable"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v35, "com_mopub_orientation"

    sget-object v36, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_8
    const-string v35, "json_video"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 240
    const-string v35, "Play-Visible-Percent"

    sget-object v36, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 241
    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v36

    .line 240
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v35, "Pause-Visible-Percent"

    sget-object v36, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 243
    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v36

    .line 242
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v35, "Impression-Min-Visible-Percent"

    sget-object v36, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 245
    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v36

    .line 244
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v35, "Impression-Visible-Ms"

    sget-object v36, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v35, "Max-Buffer-Ms"

    sget-object v36, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v35, Lcom/mopub/common/event/EventDetails$Builder;

    invoke-direct/range {v35 .. v35}, Lcom/mopub/common/event/EventDetails$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 253
    invoke-virtual/range {v35 .. v36}, Lcom/mopub/common/event/EventDetails$Builder;->adUnitId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 254
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/mopub/common/event/EventDetails$Builder;->adType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 255
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 256
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adWidthPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 257
    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adHeightPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 258
    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Lcom/mopub/common/event/EventDetails$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v36

    if-nez v19, :cond_e

    const/16 v35, 0x0

    .line 259
    :goto_3
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoLatitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v36

    if-nez v19, :cond_f

    const/16 v35, 0x0

    .line 260
    :goto_4
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoLongitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v36

    if-nez v19, :cond_10

    const/16 v35, 0x0

    .line 261
    :goto_5
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoAccuracy(Ljava/lang/Float;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    move-wide/from16 v36, v0

    .line 262
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/mopub/common/event/EventDetails$Builder;->performanceDurationMs(Ljava/lang/Long;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 263
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->requestId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    move/from16 v36, v0

    .line 264
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/mopub/common/event/EventDetails$Builder;->requestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/mopub/common/event/EventDetails$Builder;->requestUri(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v35

    .line 266
    invoke-virtual/range {v35 .. v35}, Lcom/mopub/common/event/EventDetails$Builder;->build()Lcom/mopub/common/event/EventDetails;

    move-result-object v35

    .line 252
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;

    .line 271
    :cond_9
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v33

    .line 272
    .local v33, "videoTrackers":Ljava/lang/String;
    if-eqz v33, :cond_a

    .line 273
    const-string v35, "Video-Trackers"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_a
    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    .line 278
    const-string v35, "rewarded_video"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_b

    const-string v35, "custom"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_b

    const-string v35, "rewarded_playable"

    .line 279
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 280
    :cond_b
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v30

    .line 282
    .local v30, "rewardedVideoCurrencyName":Ljava/lang/String;
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v29

    .line 284
    .local v29, "rewardedVideoCurrencyAmount":Ljava/lang/String;
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v26

    .line 286
    .local v26, "rewardedCurrencies":Ljava/lang/String;
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v28

    .line 288
    .local v28, "rewardedVideoCompletionUrl":Ljava/lang/String;
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v27

    .line 290
    .local v27, "rewardedDuration":Ljava/lang/Integer;
    sget-object v35, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    const/16 v36, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v32

    .line 292
    .local v32, "shouldRewardOnClick":Z
    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 293
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 294
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 295
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 296
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 297
    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setShouldRewardOnClick(Z)Lcom/mopub/network/AdResponse$Builder;

    .line 300
    .end local v26    # "rewardedCurrencies":Ljava/lang/String;
    .end local v27    # "rewardedDuration":Ljava/lang/Integer;
    .end local v28    # "rewardedVideoCompletionUrl":Ljava/lang/String;
    .end local v29    # "rewardedVideoCurrencyAmount":Ljava/lang/String;
    .end local v30    # "rewardedVideoCurrencyName":Ljava/lang/String;
    .end local v32    # "shouldRewardOnClick":Z
    :cond_c
    invoke-virtual {v8}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v4

    .line 301
    .restart local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Lcom/mopub/network/AdRequest;->logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 303
    invoke-virtual {v8}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v35

    .line 304
    invoke-static/range {p1 .. p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v36

    .line 303
    invoke-static/range {v35 .. v36}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object v35

    goto/16 :goto_0

    .line 182
    .end local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    .end local v7    # "browserAgent":Lcom/mopub/common/MoPub$BrowserAgent;
    .end local v10    # "customEventClassName":Ljava/lang/String;
    .end local v11    # "customEventData":Ljava/lang/String;
    .end local v25    # "responseBody":Ljava/lang/String;
    .end local v31    # "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33    # "videoTrackers":Ljava/lang/String;
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    goto/16 :goto_2

    .line 190
    .restart local v25    # "responseBody":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 191
    .local v13, "e":Lorg/json/JSONException;
    new-instance v35, Lcom/mopub/network/MoPubNetworkError;

    const-string v36, "Failed to decode body JSON for native ad format"

    sget-object v37, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v13, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v35 .. v35}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v35

    goto/16 :goto_0

    .line 219
    .end local v13    # "e":Lorg/json/JSONException;
    .restart local v7    # "browserAgent":Lcom/mopub/common/MoPub$BrowserAgent;
    .restart local v10    # "customEventClassName":Ljava/lang/String;
    .restart local v11    # "customEventData":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 220
    .restart local v13    # "e":Lorg/json/JSONException;
    new-instance v35, Lcom/mopub/network/MoPubNetworkError;

    const-string v36, "Failed to decode server extras for custom event data."

    sget-object v37, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v13, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v35 .. v35}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v35

    goto/16 :goto_0

    .line 259
    .end local v13    # "e":Lorg/json/JSONException;
    .restart local v31    # "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    goto/16 :goto_3

    .line 260
    :cond_f
    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    goto/16 :goto_4

    .line 261
    :cond_10
    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getAccuracy()F

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    goto/16 :goto_5
.end method

.method protected parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Lcom/mopub/volley/NetworkResponse;

    .prologue
    .line 319
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 320
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method
