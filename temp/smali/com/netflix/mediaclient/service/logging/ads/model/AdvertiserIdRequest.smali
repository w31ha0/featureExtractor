.class public final Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;
.super Ljava/lang/Object;
.source "AdvertiserIdRequest.java"


# static fields
.field protected static final DATA:Ljava/lang/String; = "data"

.field protected static final DATA_APP_NAME:Ljava/lang/String; = "appName"

.field protected static final DATA_DEVICE:Ljava/lang/String; = "device"

.field protected static final DATA_DEVICE_HEADER:Ljava/lang/String; = "deviceModelHeader"

.field protected static final DATA_EVENTS:Ljava/lang/String; = "events"

.field protected static final DATA_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field protected static final DATA_ID:Ljava/lang/String; = "advdevtag_id"

.field protected static final DATA_NAME:Ljava/lang/String; = "name"

.field protected static final DATA_OPTED_FOR_ADS:Ljava/lang/String; = "ad_tracking_preference"

.field protected static final DATA_OS_VERSION:Ljava/lang/String; = "os_version"

.field protected static final DATA_TIME:Ljava/lang/String; = "time"

.field protected static final DATA_TYPE:Ljava/lang/String; = "advdevtag_type"

.field protected static final DATA_USER_AGENT:Ljava/lang/String; = "user_agent"

.field protected static final EVENT_NAME:Ljava/lang/String; = "advdevtag"

.field protected static final VALUE_APP_NAME:Ljava/lang/String; = "android"

.field protected static final VALUE_OPT_IN:Ljava/lang/String; = "opt-in"

.field protected static final VALUE_OPT_OUT:Ljava/lang/String; = "opt-out"


# instance fields
.field private mAdvertiserId:Ljava/lang/String;

.field private mDeviceModel:Ljava/lang/String;

.field private mEventType:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field private mOptedIn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mAdvertiserId:Ljava/lang/String;

    .line 60
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mOptedIn:Z

    .line 61
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mEventType:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 62
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mDeviceModel:Ljava/lang/String;

    .line 63
    if-nez p3, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Event type can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method private getEvent()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    const-string/jumbo v0, "appName"

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v0, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mDeviceModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    const-string/jumbo v2, "device"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v2, "deviceModelHeader"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mDeviceModel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 82
    const-string/jumbo v2, "events"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 86
    const-string/jumbo v0, "name"

    const-string/jumbo v3, "advdevtag"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 89
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v0, "advdevtag_type"

    const-string/jumbo v2, "android"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mAdvertiserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v0, "advdevtag_id"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mAdvertiserId:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_1
    const-string/jumbo v2, "ad_tracking_preference"

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mOptedIn:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "opt-in"

    :goto_0
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v0, "event_type"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->mEventType:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v0, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const-string/jumbo v2, "user_agent"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_2
    return-object v1

    .line 97
    :cond_3
    const-string/jumbo v0, "opt-out"

    goto :goto_0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "{}"

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->getEvent()Lorg/json/JSONObject;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0
.end method
