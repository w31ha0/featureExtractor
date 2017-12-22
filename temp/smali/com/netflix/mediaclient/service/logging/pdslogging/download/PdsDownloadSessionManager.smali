.class public Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;


# static fields
.field public static CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String; = null

.field private static final ENABLE_PROGRESS_IN_CODE:Z = true

.field public static EXTRA_ERROR_CODE:Ljava/lang/String;

.field public static EXTRA_ERROR_MESSAGE:Ljava/lang/String;

.field public static EXTRA_PLAYABLE_ID:Ljava/lang/String;

.field public static STOP_DOWNLOAD_ERROR:Ljava/lang/String;

.field public static STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

.field public static STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSessionId:Ljava/lang/String;

.field mLogblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

.field private mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field private final mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

.field private mPdsDownloadSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;",
            ">;"
        }
    .end annotation
.end field

.field mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

.field private mSessionsLock:Ljava/lang/Object;

.field private mUserSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.PDSLOG_DOWNLOAD"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LICENSE_ERROR"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MANIFEST_EXPIRED"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DOWNLOAD_ERROR"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "errorCode"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->EXTRA_ERROR_CODE:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "errorMessage"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->EXTRA_ERROR_MESSAGE:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "playableId"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->EXTRA_PLAYABLE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    .line 355
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$4;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 66
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    .line 67
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mLogblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    .line 68
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    .line 69
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->registerReceiver(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "inited download session manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->handleProgressMessage(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->handleDownloadComplete(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private addDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
    .locals 7

    .prologue
    .line 313
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mAppSessionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mUserSessionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;)V

    .line 314
    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setDownloadContext(Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 315
    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setLinks(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->addDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V

    .line 317
    return-object v0
.end method

.method private dumpSessions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "is mPdsDownloadSessionsEmpty :%b"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 352
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "keySet : %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 353
    return-void
.end method

.method private fetchPersistedManifest(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;)V
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setManifestFetchInProgress(Z)V

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflinePdsData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V

    .line 346
    return-void
.end method

.method private getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
    .locals 1

    .prologue
    .line 252
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    goto :goto_0
.end method

.method private getDownloadSessionForEvent(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
    .locals 6

    .prologue
    .line 265
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDxId()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;->createDownloadContext(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDownloadComplete(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendDownloadCompleteMessage()V

    .line 151
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->removeDownloadSession(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private handlePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->sendDownloadCancelFor(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->removeDownloadSession(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private handleProgressMessage(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;I)V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setPaused(Z)V

    .line 120
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendDownloadResumeMessage()V

    .line 124
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendDownloadProgressMessage(I)V

    .line 126
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 388
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 395
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 396
    return-void
.end method

.method private removeAllDownloadSessions()V
    .locals 2

    .prologue
    .line 275
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeDownloadSession(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_0
    monitor-exit v1

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendDownloadCancelFor(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadOnCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method private sendDownloadCancelsForAll(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    .line 282
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadOnCancel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 400
    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->unregisterReceiver(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mAppSessionId:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getUserSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->mUserSessionId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public isListenerDestroyed()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->sendDownloadCancelsForAll(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 219
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->removeAllDownloadSessions()V

    .line 220
    return-void
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->getDownloadSessionForEvent(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->needToFetchManifest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$2;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->fetchPersistedManifest(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->handleDownloadComplete(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V

    goto :goto_0
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 157
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 195
    :goto_0
    :pswitch_0
    return-void

    .line 161
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$5;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$StopReason:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 192
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " onDownloadStopped stopReason: %s, no-op"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setPaused(Z)V

    .line 176
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendDownloadPauseMessage()V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->handlePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 201
    return-void
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->getDownloadSessionForEvent(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->needToFetchManifest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;I)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->fetchPersistedManifest(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->handleProgressMessage(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;I)V

    goto :goto_0
.end method

.method public onOfflinePlayablesDeleted(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->handlePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public onOfflineStorageVolumeAddedOrRemoved(Z)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public setOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->removeDownloadSession(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOfflineManifest playableId: %s, oxid: %s, dxid: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStartDownloadMessage()V

    .line 88
    return-void
.end method
