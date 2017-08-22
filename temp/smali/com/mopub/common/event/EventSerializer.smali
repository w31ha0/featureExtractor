.class public Lcom/mopub/common/event/EventSerializer;
.super Ljava/lang/Object;
.source "EventSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeAsJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/common/event/BaseEvent;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/common/event/BaseEvent;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 32
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/event/BaseEvent;

    .line 34
    .local v1, "event":Lcom/mopub/common/event/BaseEvent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mopub/common/event/EventSerializer;->serializeAsJson(Lcom/mopub/common/event/BaseEvent;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to serialize event \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mopub/common/event/BaseEvent;->getName()Lcom/mopub/common/event/BaseEvent$Name;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" to JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "event":Lcom/mopub/common/event/BaseEvent;
    :cond_0
    return-object v2
.end method

.method public serializeAsJson(Lcom/mopub/common/event/BaseEvent;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "event"    # Lcom/mopub/common/event/BaseEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "_category_"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getScribeCategory()Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v5, "ts"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getTimestampUtcMs()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v5, "name"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getName()Lcom/mopub/common/event/BaseEvent$Name;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mopub/common/event/BaseEvent$Name;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v5, "name_category"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getCategory()Lcom/mopub/common/event/BaseEvent$Category;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mopub/common/event/BaseEvent$Category;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getSdkProduct()Lcom/mopub/common/event/BaseEvent$SdkProduct;

    move-result-object v4

    .line 67
    .local v4, "sdkProduct":Lcom/mopub/common/event/BaseEvent$SdkProduct;
    const-string v7, "sdk_product"

    if-nez v4, :cond_1

    move-object v5, v6

    :goto_0
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v5, "sdk_version"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getSdkVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v5, "ad_unit_id"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v5, "ad_creative_id"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAdCreativeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v5, "ad_type"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAdType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v5, "ad_network_type"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAdNetworkType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v5, "ad_width_px"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAdWidthPx()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v5, "ad_height_px"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAdHeightPx()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v5, "dsp_creative_id"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getDspCreativeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAppPlatform()Lcom/mopub/common/event/BaseEvent$AppPlatform;

    move-result-object v0

    .line 81
    .local v0, "appPlatform":Lcom/mopub/common/event/BaseEvent$AppPlatform;
    const-string v7, "app_platform"

    if-nez v0, :cond_2

    move-object v5, v6

    :goto_1
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v5, "app_name"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v5, "app_package_name"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v5, "app_version"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v5, "client_advertising_id"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getObfuscatedClientAdvertisingId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v5, "client_do_not_track"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getClientDoNotTrack()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v5, "device_manufacturer"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v5, "device_model"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getDeviceModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v5, "device_product"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getDeviceProduct()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v5, "device_os_version"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v5, "device_screen_width_px"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getDeviceScreenWidthDip()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v5, "device_screen_height_px"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getDeviceScreenHeightDip()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v5, "geo_lat"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getGeoLat()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v5, "geo_lon"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getGeoLon()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v5, "geo_accuracy_radius_meters"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getGeoAccuracy()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v5, "perf_duration_ms"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getPerformanceDurationMs()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v3

    .line 112
    .local v3, "moPubNetworkType":Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    const-string v5, "network_type"

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v5, "network_operator_code"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getNetworkOperatorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v5, "network_operator_name"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v5, "network_iso_country_code"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getNetworkIsoCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v5, "network_sim_code"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v5, "network_sim_operator_name"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v5, "network_sim_iso_country_code"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimIsoCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v5, "req_id"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v5, "req_status_code"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getRequestStatusCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v5, "req_uri"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getRequestUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v5, "req_retries"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getRequestRetries()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v5, "timestamp_client"

    invoke-virtual {p1}, Lcom/mopub/common/event/BaseEvent;->getTimestampUtcMs()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    instance-of v5, p1, Lcom/mopub/common/event/ErrorEvent;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 130
    check-cast v1, Lcom/mopub/common/event/ErrorEvent;

    .line 132
    .local v1, "errorEvent":Lcom/mopub/common/event/ErrorEvent;
    const-string v5, "error_exception_class_name"

    invoke-virtual {v1}, Lcom/mopub/common/event/ErrorEvent;->getErrorExceptionClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v5, "error_message"

    invoke-virtual {v1}, Lcom/mopub/common/event/ErrorEvent;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v5, "error_stack_trace"

    invoke-virtual {v1}, Lcom/mopub/common/event/ErrorEvent;->getErrorStackTrace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v5, "error_file_name"

    invoke-virtual {v1}, Lcom/mopub/common/event/ErrorEvent;->getErrorFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v5, "error_class_name"

    invoke-virtual {v1}, Lcom/mopub/common/event/ErrorEvent;->getErrorClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v5, "error_method_name"

    invoke-virtual {v1}, Lcom/mopub/common/event/ErrorEvent;->getErrorMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v5, "error_line_number"

    invoke-virtual {v1}, Lcom/mopub/common/event/ErrorEvent;->getErrorLineNumber()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .end local v1    # "errorEvent":Lcom/mopub/common/event/ErrorEvent;
    :cond_0
    return-object v2

    .line 67
    .end local v0    # "appPlatform":Lcom/mopub/common/event/BaseEvent$AppPlatform;
    .end local v3    # "moPubNetworkType":Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    :cond_1
    invoke-virtual {v4}, Lcom/mopub/common/event/BaseEvent$SdkProduct;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 81
    .restart local v0    # "appPlatform":Lcom/mopub/common/event/BaseEvent$AppPlatform;
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/common/event/BaseEvent$AppPlatform;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_1

    .line 112
    .restart local v3    # "moPubNetworkType":Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    :cond_3
    invoke-virtual {v3}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_2
.end method
