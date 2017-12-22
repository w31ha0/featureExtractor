.class public final Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;
.super Ljava/lang/Object;
.source "AdvertiserIdLoggingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;


# static fields
.field private static final DAY_IN_MS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "nf_adv_id"


# instance fields
.field private mAdIdReported:Ljava/lang/String;

.field private mAdIdReportedOptedIn:Ljava/lang/Boolean;

.field private mAdIdReportedTimestamp:J

.field private mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

.field private mContext:Landroid/content/Context;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestFactory:Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;-><init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mRequestFactory:Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->initProvider()V

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReported:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedTimestamp:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedOptedIn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;)Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->onLogin()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->onLogout()V

    return-void
.end method

.method private doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, p1, v2, p3, v0}, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;-><init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 197
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->sendLoggingEvent(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V

    .line 198
    return-void
.end method

.method private initProvider()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    .line 81
    new-instance v1, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method private isAlreadySentInLastPeriod()Z
    .locals 6

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/32 v2, 0x5265c00

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedTimestamp:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLogin()V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->sign_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    .line 248
    return-void
.end method

.method private onLogout()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 256
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ONSIGNUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 262
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v2, "Failed to register "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private sendLoggingEvent(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V
    .locals 4

    .prologue
    .line 212
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "send Advertising ID event send starts: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mRequestFactory:Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;->createAdvertiserIdLoggingRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 215
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "send Advertising ID event send done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v2, "Failed to unregister "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 283
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Destroy and unregister receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->unregisterReceiver()V

    .line 285
    return-void
.end method

.method public getAdverisingTrackingPreference()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;->OPT_OUT:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;

    .line 316
    :goto_0
    return-object v0

    .line 314
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;->OPT_IN:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->getId()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->registerReceiver()V

    .line 112
    return-void
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    if-nez v2, :cond_0

    .line 122
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "User is logged in, but ADV ID provider is not readu, postpone sending ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 128
    const-string/jumbo v2, "nf_adv_id"

    const-string/jumbo v3, "Ad ID provider is ready and request to send AD ID exist, execute."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->getId()Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    :goto_1
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v3, "Ad ID provider exist, if we need to send ID %s, opted in %b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    if-nez v2, :cond_2

    .line 136
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Ad id can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_1

    .line 140
    :cond_2
    :try_start_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->check_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    if-eq p1, v1, :cond_3

    .line 141
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v3, "Not check in, execute"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto :goto_0

    .line 145
    :cond_3
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v3, "Check in, validate"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReported:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReported:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 150
    :cond_4
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v3, "Ad ID changed, execute"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto/16 :goto_0

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedOptedIn:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedOptedIn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 153
    :cond_6
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v3, "opt in status changed, execute"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto/16 :goto_0

    .line 156
    :cond_7
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v3, "Adverising ID is not changed, check when it was last time sent."

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->isAlreadySentInLastPeriod()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Ad id and opt in status already sent in last 24 hours, do not send again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    :cond_8
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v3, "Ad id and opt in status were NOT sent in last 24 hours, execute"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
