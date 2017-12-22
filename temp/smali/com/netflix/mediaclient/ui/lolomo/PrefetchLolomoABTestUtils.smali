.class public final Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;
.super Ljava/lang/Object;
.source "PrefetchLolomoABTestUtils.java"


# static fields
.field public static final MAP_LOLOMO_CACHE_EXPIRATION_TIME_MS:J = 0x2255100L

.field public static final PREFETCH_JSON_FILE_NAME:Ljava/lang/String; = "prefetch.json"

.field public static final PREFETCH_LOLOMO_JOB_REQUEST_FREQUENCY_TIMEOUT_MS:I = 0xea60

.field public static final PREFETCH_LOLOMO_JOB_START_DELAY_MS:I = 0x36ee80

.field public static final PREFETCH_LOLOMO_JOB_TIMEOUT_MS:I = 0x493e0

.field public static final PREFETCH_LOLOMO_METADATA_JOB_INTERVAL_MS:J = 0x2255100L

.field private static final TAG:Ljava/lang/String; = "PrefetchLolomoABTestUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static doesJobRequireCharging(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 147
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 152
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doesJobRequireDeviceIdle(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 166
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 168
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 171
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getJobPeriodicInterval()J
    .locals 2

    .prologue
    .line 183
    const-wide/32 v0, 0x2255100

    return-wide v0
.end method

.method public static getLastJobStartTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 193
    const-string/jumbo v0, "prefs_prefetch_lolomo_job_last_start_time_ms"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static handleCWRefreshBroadcast(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 204
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 205
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendHomeRefreshBrodcast(Landroid/content/Context;)V

    .line 207
    :cond_0
    return-void
.end method

.method public static hasJobScheduler(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :goto_0
    :pswitch_0
    return v0

    .line 90
    :cond_0
    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static hasPrefetchLolomoExpired(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 216
    const-string/jumbo v0, "prefs_prefetch_lolomo_fetch_time_ms"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 218
    const-wide/32 v2, 0x2255100

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 74
    if-eqz p0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    .line 75
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    .line 76
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJobNetworkTypeUnmetered(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 128
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 133
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isJobPeriodic(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 109
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 116
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
