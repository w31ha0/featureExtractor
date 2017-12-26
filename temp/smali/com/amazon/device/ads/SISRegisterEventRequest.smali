.class Lcom/amazon/device/ads/SISRegisterEventRequest;
.super Lcom/amazon/device/ads/SISRequest;
.source "SourceFile"


# static fields
.field private static final CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

.field private static final LOGTAG:Ljava/lang/String; = "SISRegisterEventRequest"

.field private static final PATH:Ljava/lang/String; = "/register_event"


# instance fields
.field private final advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

.field private final appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

.field private final appEvents:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/Metrics$MetricType;

    sput-object v0, Lcom/amazon/device/ads/SISRegisterEventRequest;->CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)V
    .locals 7

    .prologue
    .line 265
    invoke-static {}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->getInstance()Lcom/amazon/device/ads/AppEventRegistrationHandler;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/SISRegisterEventRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V

    .line 271
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V
    .locals 7

    .prologue
    .line 279
    const-string v2, "SISRegisterEventRequest"

    sget-object v3, Lcom/amazon/device/ads/SISRegisterEventRequest;->CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v4, "/register_event"

    move-object v0, p0

    move-object v1, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/SISRequest;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V

    .line 280
    iput-object p1, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 281
    iput-object p2, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->appEvents:Lorg/json/JSONArray;

    .line 282
    iput-object p3, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    .line 283
    return-void
.end method


# virtual methods
.method public getPostParameters()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    const-string v1, "events"

    iget-object v2, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->appEvents:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-object v0
.end method

.method public getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Lcom/amazon/device/ads/SISRequest;->getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    move-result-object v0

    .line 289
    const-string v1, "adId"

    iget-object v2, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v0
.end method

.method public onResponseReceived(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 304
    const-string v0, "rcode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 306
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Application events registered successfully."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->onAppEventsRegistered()V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/SISRegisterEventRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application events not registered. rcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
