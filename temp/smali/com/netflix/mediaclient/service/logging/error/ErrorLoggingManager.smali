.class public final Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation


# static fields
.field private static final CRITTER_VERSION_NAME:Ljava/lang/String; = "5.1.2"

.field private static final ENABLE_CRITTERCISM:Z = true

.field private static final INTERCEPT_EXCEPTIONS_FOR_DEBUGGING:Z = true

.field private static final TAG:Ljava/lang/String; = "nf_log_crit"

.field private static sBreadcrumbLoggingEnabled:Z

.field private static sCrittercismReady:Z

.field private static sErrorLoggingEnabledByConfig:Z

.field private static sIsUncaughtExceptionHandlerForDebugInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    .line 64
    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    .line 66
    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sIsUncaughtExceptionHandlerForDebugInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->wrapThrowableWithPrefix(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private static configureBreadcrumbLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V
    .locals 2

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Breadcrumb logging specification is missing. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Breadcrumb logging is explicitly disabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    goto :goto_0

    .line 364
    :cond_1
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Breadcrumb logging is NOT explicitly disabled, use error logging chance to keep all in sync since we are using only one service, ignore its own disable chance percentage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    goto :goto_0
.end method

.method private static configureErrorLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)V
    .locals 2

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Error logging specification is missing. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Error logging is explicitly disabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    goto :goto_0

    .line 329
    :cond_1
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v1, "Error logging is NOT explicitly disabled, apply disable chance percentage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDisableChancePercentage()I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isDeviceEnabled(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    goto :goto_0
.end method

.method public static didCrashOnLastLoad()Z
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/crittercism/app/Crittercism;->didCrashOnLastLoad()Z

    move-result v0

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized initCrittercism(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 91
    const-class v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isCrittercismEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Crittercism is NOT enabled in build!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 94
    new-instance v2, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    monitor-exit v1

    return-void

    .line 104
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sCrittercismReady:Z

    if-eqz v0, :cond_1

    .line 105
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Crittercism is already initialized"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 108
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Crittercism was not initialized before..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->shouldInitializeCrittercism()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "This device is approved for sampling, initialize Crittercism"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setNdkCrashReportingEnabled(Z)V

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setVersionCodeToBeIncludedInVersionString(Z)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setServiceMonitoringEnabled(Z)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setLogcatReportingEnabled(Z)V

    .line 129
    const-string/jumbo v2, "5.1.2"

    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setCustomVersionName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getCrittercismAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V

    .line 136
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 138
    new-instance v3, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;

    invoke-direct {v3, p0, v2, v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$2;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    const-string/jumbo v2, "android"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v2, "oem"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v2, "critSessionId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->setMetadata(Lorg/json/JSONObject;)V

    .line 178
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sCrittercismReady:Z

    .line 180
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "Init Crittercism done."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    :try_start_4
    const-string/jumbo v2, "nf_log_crit"

    const-string/jumbo v3, "Unable to init crittercism"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 114
    :cond_2
    const-string/jumbo v0, "nf_log_crit"

    const-string/jumbo v2, "This device is NOT approved for sampling"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private static initializeUncaughtExceptionHandlerForDebug(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public static isCrittercismEnabled()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method private static isEnabledAndReady()Z
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isCrittercismEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sCrittercismReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sBreadcrumbLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->leaveBreadcrumb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 402
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 411
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 412
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 425
    if-nez p0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/log/ExceptionLogClUtils;->reportHandledExceptionToCL(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 436
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized onConfigurationChanged(Landroid/content/Context;JLcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V
    .locals 3

    .prologue
    .line 381
    const-class v1, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->configureErrorLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)V

    .line 382
    invoke-static {p0, p4}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->configureBreadcrumbLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V

    .line 384
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->initCrittercism(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit v1

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static putValueOrNotAvailable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 511
    if-eqz p2, :cond_0

    .line 512
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    const-string/jumbo v0, "N/A"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 489
    if-nez p0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->isEnabledAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->setUsername(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static shouldInitializeCrittercism()Z
    .locals 1

    .prologue
    .line 524
    sget-boolean v0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->sErrorLoggingEnabledByConfig:Z

    return v0
.end method

.method private static wrapThrowableWithPrefix(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 5

    .prologue
    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    new-instance v1, Ljava/lang/StackTraceElement;

    const-string/jumbo v2, "version"

    const-string/jumbo v3, "n/a"

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 302
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
