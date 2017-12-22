.class public Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;
.super Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;
.source "LogblobLoggingImpl.java"


# static fields
.field private static final MAX_TIME_THAN_EVENT_CAN_STAY_IN_QUEUE_MS:I = 0xea60

.field private static final MIN_NUMBER_OF_EVENTS_TO_POST:I = 0x1e

.field private static final REPOSITORY_DIR:Ljava/lang/String; = "logblobs"

.field private static final RETRY_TO_DELIVER_BACKUPS_IN_SEC:I = 0xf

.field private static final TAG:Ljava/lang/String; = "nf_logblob"


# instance fields
.field private mBackupHandler:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

.field private mEventQueue:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private final mPendingCachedLogPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;-><init>()V

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;-><init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mBackupHandler:Ljava/lang/Runnable;

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Owner is null?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;)Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->loadAndSendLogblobs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->removeSavedLogblobs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->sendLogblobs(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->sendEvents(Ljava/util/List;Z)V

    return-void
.end method

.method private createCommonParams()Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;
    .locals 5

    .prologue
    .line 303
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 304
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 305
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUserSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 306
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-object v0
.end method

.method private deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 8

    .prologue
    .line 154
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 155
    :cond_0
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "No saved events found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    return-void

    .line 164
    :cond_2
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 165
    invoke-interface {v2}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    const-string/jumbo v2, "nf_logblob"

    const-string/jumbo v3, "We are already trying to deliver %s deliveryRequestId, skip"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    if-eqz p2, :cond_4

    .line 174
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$2;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$2;-><init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 179
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 174
    invoke-interface {v3, v4, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 181
    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$3;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$3;-><init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private initDataRepository()V
    .locals 3

    .prologue
    .line 114
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "::init data repository started "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "logblobs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 119
    new-instance v0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    .line 121
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "::init data repository done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private loadAndSendLogblobs(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;-><init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V

    .line 214
    return-void
.end method

.method private loadNotDeliveredEvents()V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mBackupHandler:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mBackupHandler:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeSavedLogblobs(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/data/DataRepository;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Failed to remove payload from repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveEvents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/data/DataRepository;->save(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Failed to save payload to repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEvents(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 274
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 275
    :cond_0
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "dropping bad logblob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 280
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 286
    const/4 v0, 0x0

    .line 287
    if-eqz p2, :cond_2

    .line 288
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->saveEvents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    .line 293
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->createCommonParams()Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;)V

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Failed to create JSON object for logging request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendLogblobs(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;)V
    .locals 4

    .prologue
    .line 224
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "sendLogblobs starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils;->toLogBlobs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 228
    :cond_0
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "Nothing to sent, array is null. SendLogblobs done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;->onLogblobsSent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_1
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->createCommonParams()Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;)V

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 236
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "sendLogblobs done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Failed to add common parameters to JSON logbob?!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method checkState()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;->flushIfCriteriaIsFulfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "LogBlog events were sent recently. We reached timeout, force send"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method

.method destroy()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method handleConnectivityChange()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "Device is connected, lets see if we need to deliver cached events..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    move-result-object v0

    .line 395
    if-nez v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_1

    .line 396
    :cond_0
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "We found %d cached log entries, network is connected, lets try to deliver them"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    .line 400
    :cond_1
    return-void
.end method

.method init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->initDataRepository()V

    .line 105
    return-void
.end method

.method public sendLogblob(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V
    .locals 4

    .prologue
    .line 339
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/Log;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/Log;-><init>(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Failed to populate JSON"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 315
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUserSessionId()Ljava/lang/String;

    move-result-object v3

    .line 316
    instance-of v1, p1, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;

    if-eqz v1, :cond_1

    .line 318
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;

    move-object v1, v0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;->post(Ljava/lang/Object;)Z

    move-result v1

    .line 330
    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/Logblob;->shouldSendNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

    invoke-virtual {v1, v6}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;->flushEvents(Z)V

    .line 333
    :cond_0
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 320
    const-string/jumbo v2, "nf_logblob"

    const-string/jumbo v3, "Failed to populate JSON"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 323
    :cond_1
    if-eqz p1, :cond_2

    .line 324
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Unable to set common data by framework, logblob does not implement BaseLogblob %s "

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 326
    :cond_2
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Message is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startDelivery()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;->startDelivery()V

    .line 351
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->loadNotDeliveredEvents()V

    .line 352
    return-void
.end method
