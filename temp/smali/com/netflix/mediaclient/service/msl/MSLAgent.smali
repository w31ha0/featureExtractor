.class public Lcom/netflix/mediaclient/service/msl/MSLAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "MSLAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMSLClient;
.implements Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;


# static fields
.field private static DEBUG:Z = false

.field public static final DEBUG_MSL_TEST_USER_RECOVERY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DEBUG_MSL_TEST_USER_RECOVERY"

.field private static final DEFAULT_INITIAL_INTERVAL_MS:I = 0x3e8

.field private static final DEFAULT_MAX_ELAPSED_TIME_MS:I = 0xdbba0

.field private static final DEFAULT_MAX_INTERVAL_MS:I = 0xea60

.field private static final DEFAULT_MULTIPLIER:D = 2.0

.field private static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final ERROR_URL:Ljava/lang/String; = "appbootendpoint"

.field private static final MAX_NUMBER_OF_RETRIES:I = 0x5

.field private static final RETRY:Ljava/lang/String; = "retry"

.field private static final RETRY_DELAY_IN_SEC:Ljava/lang/String; = "delay"

.field private static final SERVERTIME_SECONDS:Ljava/lang/String; = "servertime_seconds"

.field private static final TAG:Ljava/lang/String; = "nf_msl_agent"


# instance fields
.field private mAppBootActionId2Retries:I

.field private mAppbootTimeUpdateListener:Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;

.field private mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

.field private mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkRequestInspectorManager:Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;

.field private mServerTimeAtAppBoot:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 106
    sget-boolean v0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mNetworkRequestInspectorManager:Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->doExecuteAppBoot()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/msl/MSLAgent;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppBootActionId2Retries:I

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleTestUserRecovery()V

    return-void
.end method

.method private static createExponentialBackOffPolicy()Lcom/netflix/mediaclient/util/net/ExponentialBackOff;
    .locals 8

    .prologue
    .line 667
    new-instance v0, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;

    const/16 v1, 0x3e8

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const v6, 0xea60

    const v7, 0xdbba0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/net/ExponentialBackOff;-><init>(IDDII)V

    return-object v0
.end method

.method private doExecuteAppBoot()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->doExecuteAppBoot(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private doExecuteAppBoot(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, v1, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->defaultAppbootRequest(Ljava/lang/Long;Ljava/lang/Long;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 226
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "doExecuteAppBoot with default url..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->appbootRequest(Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 234
    :goto_0
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "doExecuteAppBoot:: Response on APP_BOOT_REQUEST: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleAppBootResponse(Lcom/netflix/android/org/json/JSONObject;)V

    .line 236
    return-void

    .line 230
    :cond_0
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "doExecuteAppBoot with given appboot url %s..."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 231
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->appbootRequest(Ljava/lang/String;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private executeAppBoot()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->shouldExecuteAppBotSynchronously()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Execute AppBoot synchronously, first app launch..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->doExecuteAppBoot()V

    .line 210
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Execute AppBoot asynchronously, regular app launch..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    .line 199
    new-instance v1, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleActionId(Lcom/netflix/android/org/json/JSONObject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 303
    const-string/jumbo v1, "actionid"

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "Error found, but not actionid. Not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return v0

    .line 308
    :cond_0
    const-string/jumbo v1, "actionid"

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 309
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 311
    :sswitch_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleActionId2()Z

    move-result v0

    goto :goto_0

    .line 313
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleActionId7(Lcom/netflix/android/org/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    .line 315
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleActionId13(Lcom/netflix/android/org/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method private handleActionId13(Lcom/netflix/android/org/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 378
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Handling action ID 13..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptorFactory;->getHandlerForActionIdError(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 382
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Error handler added for action ID 13."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private handleActionId2()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 323
    const-string/jumbo v2, "nf_msl_agent"

    const-string/jumbo v3, "Handling action ID 2, retry appboot..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v2, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppBootActionId2Retries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppBootActionId2Retries:I

    .line 325
    iget v2, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppBootActionId2Retries:I

    if-le v2, v8, :cond_0

    .line 326
    const-string/jumbo v2, "nf_msl_agent"

    const-string/jumbo v3, "Reached maximal number (%d) of retries %d for action ID 2"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget v5, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppBootActionId2Retries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 350
    :goto_0
    return v0

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    invoke-interface {v2}, Lcom/netflix/mediaclient/util/net/BackOff;->canRetry()Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    const-string/jumbo v2, "nf_msl_agent"

    const-string/jumbo v3, "Can not retry anymore using backoff policy on action ID 2, attempt %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppBootActionId2Retries:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mBackOffPolicy:Lcom/netflix/mediaclient/util/net/BackOff;

    invoke-interface {v2}, Lcom/netflix/mediaclient/util/net/BackOff;->nextBackOffInMs()J

    move-result-wide v2

    .line 337
    const-string/jumbo v4, "nf_msl_agent"

    const-string/jumbo v5, "Retry # %d for action ID 2 (max %d) in %d ms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppBootActionId2Retries:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 338
    new-instance v0, Lcom/netflix/mediaclient/service/msl/MSLAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent$3;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    .line 349
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 350
    goto :goto_0
.end method

.method private handleActionId7(Lcom/netflix/android/org/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 355
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Handling action ID 7, change appboot url and retry appboot..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v0, "appbootendpoint"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "New appboot server URL not found. Not expected!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return v4

    .line 361
    :cond_0
    const-string/jumbo v0, "appbootendpoint"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/netflix/mediaclient/util/net/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "New appboot server URL found, but is not proper web URL: %s. Not expected!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 368
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->doExecuteAppBoot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "Failed to re-execute AppBoot on actionid 2"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private handleAppBootResponse(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleRetry(Lcom/netflix/android/org/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Explicit retry on server response..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleError(Lcom/netflix/android/org/json/JSONObject;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleServerTimeUpdate(Lcom/netflix/android/org/json/JSONObject;)V

    goto :goto_0
.end method

.method private handleBlackListed()Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->handleCryptoFallback()Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$CryptoFailback;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$CryptoFailback;->widevineL3:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$CryptoFailback;

    if-ne v0, v1, :cond_0

    .line 167
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_BLACKLISTED_DEVICE_FAILBACK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 170
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    const-string/jumbo v1, "MSL_BLACKLISTED_DEVICE"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_BLACKLISTED_DEVICE_FATAL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method private handleError(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 289
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    return-void

    .line 293
    :cond_1
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 295
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleActionId(Lcom/netflix/android/org/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "handleError:: not handling error %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 297
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/NetflixMslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "Unhandled error in appboot response (%s)"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
.end method

.method private handleRetry(Lcom/netflix/android/org/json/JSONObject;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    const-string/jumbo v2, "retry"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    :goto_0
    return v0

    .line 260
    :cond_0
    const-string/jumbo v2, "retry"

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    .line 261
    const-string/jumbo v3, "delay"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 263
    new-instance v3, Lcom/netflix/mediaclient/service/msl/MSLAgent$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent$2;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    .line 274
    if-lez v2, :cond_1

    .line 275
    const-string/jumbo v4, "nf_msl_agent"

    const-string/jumbo v5, "Explicit retry in %d seconds"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    int-to-long v4, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    move v0, v1

    .line 281
    goto :goto_0

    .line 278
    :cond_1
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v2, "Delay is not found, retry now."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private handleServerTimeUpdate(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 4

    .prologue
    .line 390
    const-string/jumbo v0, "servertime_seconds"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Server time found..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string/jumbo v0, "servertime_seconds"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mServerTimeAtAppBoot:J

    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppbootTimeUpdateListener:Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;

    if-eqz v0, :cond_0

    .line 394
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Updating server time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppbootTimeUpdateListener:Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mServerTimeAtAppBoot:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;->updatedServerTime(J)V

    .line 398
    :cond_0
    return-void
.end method

.method private handleTestUserRecovery()V
    .locals 2

    .prologue
    .line 584
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Received request for test user recovery in release build. This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void
.end method

.method private inspectMslError(Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    .prologue
    .line 155
    invoke-static {p1}, Lcom/netflix/mediaclient/util/MSLUtils;->isBlackListed(Lcom/netflix/msl/msg/ErrorHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "Our device is one of black listed, we need to default to legacy crypto and offline is NOT supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->handleBlackListed()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiverForDebug()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method


# virtual methods
.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Trying to add NetworkRequestInspector in release build!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 181
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "MSLAgent::doInit start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->registerReceiverForDebug()V

    .line 123
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->executeAppBoot()V
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 144
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "MSLAgent::doInit done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "MSLAgent::doInit appboot failed!"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->inspectMslError(Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 133
    const-string/jumbo v0, "nf_msl_agent"

    const-string/jumbo v1, "MSLAgent::doInit failed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "MSLAgent::doInit failed!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public getAuthorizationCredentials(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getAuthorizationCredentials(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    return-object v0
.end method

.method public getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v0

    return-object v0
.end method

.method public getMslTokensAndCrypto()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getMslTokensAndCrypto(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMslUserState()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getMslUserState()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimeAtAppboot()J
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mServerTimeAtAppBoot:J

    return-wide v0
.end method

.method public getSwitchProfileAuthenticationData(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v1

    .line 409
    if-nez v1, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;

    invoke-direct {v0, v1, p2}, Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;-><init>(Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isUserKnown(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->removeUserData()V

    .line 430
    return-void
.end method

.method public prepareDataRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)V
    .locals 4

    .prologue
    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setMSLClient(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setConfig(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    .line 613
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setUserAgent(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 614
    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setMSLAgent(Lcom/netflix/mediaclient/servicemgr/IMSLClient;)V

    .line 615
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setErrorLogger(Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V

    .line 617
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDataRequestTimeout()I

    move-result v0

    .line 618
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setTimeout(I)V

    .line 620
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 632
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportDataRequestStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_1
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "Failed to add request! This can happen only when ESN provoder is null, ignore since app is not in working state. Error will be reported to an user by UI,"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public resetRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->resetRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public setAppbootTimeListener(Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mAppbootTimeUpdateListener:Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;

    .line 456
    return-void
.end method

.method public testUserRecovery()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->testUserRecovery()V

    .line 484
    return-void
.end method

.method public updateAuthorizationCredentials(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->updateAuthorizationCredentials(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 600
    return-void
.end method

.method public updateUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->updateUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method
