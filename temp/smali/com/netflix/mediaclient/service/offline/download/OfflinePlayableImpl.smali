.class public Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;


# static fields
.field private static final DISK_FREE_SPACE_SAFETY_MARGIN:J = 0x17d7840L

.field private static final MIN_PERCENTAGE_UPDATE_PERIOD_MS:J = 0x7d0L

.field private static final MSG_CDN_URL_DOWNLOADED_SESSION_END:I = 0x4

.field private static final MSG_CDN_URL_EXPIRED_OR_MOVED:I = 0x3

.field private static final MSG_CDN_URL_GEO_CHECK_ERROR:I = 0x5

.field private static final MSG_NETWORK_ERROR:I = 0x2

.field private static final MSG_URL_DOWNLOAD_DISK_IO_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "nf_offlinePlayable"


# instance fields
.field private mActiveDownloadableCount:I

.field private mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

.field private final mBackgroundThread:Landroid/os/HandlerThread;

.field private final mCdnUrlDownloaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mCompletedDownloadableCount:I

.field private final mContext:Landroid/content/Context;

.field private final mDirPathOfPlayable:Ljava/lang/String;

.field private final mDirPathOfPlayableFileObject:Ljava/io/File;

.field private mLicenseRefreshing:Z

.field private final mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

.field private final mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

.field private final mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

.field private final mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

.field private final mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

.field private final mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;Ljava/lang/String;Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    .line 111
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 113
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    .line 114
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    .line 116
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 117
    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    .line 118
    iput-object p7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    .line 119
    iput-object p8, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    .line 120
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    invoke-virtual {p9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    .line 121
    iput-object p9, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 122
    iput-object p10, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 125
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "OfflinePlayableImpl constructor marking item stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->DownloadLimitRequiresManualResume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq v1, v2, :cond_2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getLastPersistentStatus()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_DELETE_ON_REVOCATION:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_3

    .line 132
    :cond_2
    const/4 v0, 0x1

    .line 134
    :cond_3
    if-nez v0, :cond_4

    .line 135
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->checkAllDownloadablesExists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 136
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "OfflinePlayableImpl checkAllDownloadablesExists false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    .line 143
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildDownloadableProgressInfoMap()V

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    if-nez v0, :cond_6

    .line 145
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mOfflineManifestManager or mOfflineLicenseManager can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleFirstTimeLicenseReceived(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleUrlDownloadDiskIOError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleCdnUrlGeoCheckError(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->fetchFreshLicenseOnRefreshFailure(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleRefreshLicenseResponse(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleFirstTimeManifestReceived(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasManifestNetworkChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshManifestFromServerAndContinue()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestUpdated(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestForPlayback(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestRefreshedFromServer(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->onProgressWatchRunnable()V

    return-void
.end method

.method private buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;",
            ">;",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1269
    iget-object v0, p2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadInfo(Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    move-result-object v0

    .line 1270
    if-eqz v0, :cond_0

    .line 1271
    invoke-direct {p0, p2, v0, p4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createCdnUrlDownloader(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    move-result-object v0

    .line 1272
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_0
    return-void
.end method

.method private buildDownloadableProgressInfoMap()V
    .locals 3

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1142
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1147
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_1

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1152
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_2

    .line 1155
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1157
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_3

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->updateProgressPercentage()V

    .line 1160
    return-void
.end method

.method private buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 958
    if-eqz p1, :cond_0

    .line 959
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;-><init>(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;)V

    .line 960
    invoke-direct {p0, v0, p1, p4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createCdnUrlDownloader(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    move-result-object v1

    .line 961
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_0
    return-void
.end method

.method private canRefreshOrDeleteLicense()Z
    .locals 1

    .prologue
    .line 1540
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mLicenseRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAllDownloadablesExists()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1084
    .line 1086
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1087
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    .line 1089
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1091
    :cond_0
    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v0, v3

    :goto_1
    move v1, v0

    .line 1098
    goto :goto_0

    .line 1093
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1094
    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "audio downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1101
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    .line 1103
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1105
    :cond_5
    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v1, v3

    goto :goto_2

    .line 1106
    :cond_6
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1107
    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "video downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_2

    .line 1112
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1113
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    .line 1115
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    .line 1117
    :cond_9
    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v1, v3

    goto :goto_3

    .line 1118
    :cond_a
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1119
    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "subtitle downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_3

    .line 1124
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 1125
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    .line 1127
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    .line 1129
    :cond_d
    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v1, v3

    goto :goto_4

    .line 1130
    :cond_e
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1131
    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "trickplay downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_4

    .line 1135
    :cond_f
    return v1
.end method

.method private createCdnUrlDownloader(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;
    .locals 11

    .prologue
    .line 810
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    .line 811
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v2

    .line 810
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v6

    .line 812
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 813
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 816
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 819
    invoke-static {v3, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->create(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;

    move-result-object v8

    iget-object v9, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-object v3, p1

    move-object v4, p2

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;Ljava/io/File;Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;)V

    .line 812
    return-object v0
.end method

.method private createCdnUrlDownloadersFromUpdatedManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Z
    .locals 8

    .prologue
    .line 850
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "createCdnUrlDownloadersFromUpdatedManifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 854
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectAudioDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 857
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 859
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectVideoDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 862
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 864
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectSubtitleDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 867
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 869
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectTrickPlayDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 874
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->areAllDownloadablesStillFound(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 882
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPlaybackContextId()Ljava/lang/String;

    move-result-object v5

    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 884
    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v1, v0, v7, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 888
    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v2, v0, v6, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 892
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v3, v0, v2, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 896
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v4, v0, v2, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 899
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildDownloadableProgressInfoMap()V

    .line 900
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createFreshCdnUrlDownloadersFromManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 910
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "createFreshCdnUrlDownloadersFromManifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectAudioDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 912
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectVideoDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 913
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectSubtitleDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 914
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectTrickPlayDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 916
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 918
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPlaybackContextId()Ljava/lang/String;

    move-result-object v4

    .line 919
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 920
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    .line 921
    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v7, v7, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v6, v7, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 926
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    .line 927
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v5, v6, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 932
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    .line 933
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v2, v5, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 938
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    .line 939
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 942
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildDownloadableProgressInfoMap()V

    .line 943
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasAtLeastOneTrackForDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method public static deleteLicense(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V
    .locals 8

    .prologue
    .line 1503
    invoke-static {p1}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getKeySetIdOrNull(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)[B

    move-result-object v2

    .line 1504
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_2

    .line 1505
    :cond_0
    if-eqz p2, :cond_1

    .line 1506
    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;->onDeleteCompleted(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 1532
    :cond_1
    :goto_0
    return-void

    .line 1510
    :cond_2
    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    .line 1511
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDlStateBeforeDelete()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkDeactivate:Ljava/lang/String;

    iget-object v5, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    iget-object v6, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    new-instance v7, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;

    invoke-direct {v7, p2, p1, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V

    move-object v0, p0

    .line 1510
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->deleteLicense(Ljava/lang/String;[BZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    goto :goto_0

    .line 1511
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doDeleteDownload()Lcom/netflix/mediaclient/android/app/Status;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 983
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 985
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    .line 986
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Delete"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->logMessage(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->notifyDeletingPlayable(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateDeleted()V

    .line 990
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canRefreshOrDeleteLicense()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-static {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->deleteLicense(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->deletePlayableDirectory(Ljava/lang/String;)Z

    move-result v0

    .line 994
    if-eqz v0, :cond_1

    .line 995
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 998
    :goto_0
    return-object v0

    .line 997
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deletePlayableDirectory failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 998
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_DELETE_PLAYABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0
.end method

.method private doStopDownload()V
    .locals 2

    .prologue
    .line 975
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 976
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    .line 977
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->stopDownload()V

    goto :goto_0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 980
    return-void
.end method

.method private failIfNoPlayableDirectory()Z
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->createDirectoryIfRequired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fetchFreshLicenseOnRefreshFailure(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 7

    .prologue
    .line 1477
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "Fetching fresh license on refresh failure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v2

    .line 1479
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLicenseLinkJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$11;

    invoke-direct {v6, p0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$11;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    .line 1478
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->requestNewLicense(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    .line 1488
    return-void
.end method

.method private getDownloadInfo(Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;"
        }
    .end annotation

    .prologue
    .line 1277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    .line 1278
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1282
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotEnoughSpaceDebugString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getTotalEstimatedSpace()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getCurrentEstimatedSpace()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x17d7840

    add-long/2addr v0, v2

    .line 1015
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v2

    .line 1016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "freeSpaceOnFileSystem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " freeSpaceNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;
    .locals 8

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mDownloadableProgressInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    .line 1177
    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;-><init>()V

    .line 1181
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v1

    .line 1184
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    .line 1185
    iget-boolean v1, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    if-eqz v1, :cond_1

    .line 1186
    iget-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    .line 1190
    :goto_0
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "getProgressInfoForDownloadable complete=%b downloadableId=%s  mBytesOnTheDisk=%d mTotalBytesToDownload=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    .line 1191
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1190
    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1193
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mDownloadableProgressInfoMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    return-object v0

    .line 1188
    :cond_1
    iget-wide v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mSizeOfDownloadable:J

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    goto :goto_0
.end method

.method private handleCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 318
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->updateActiveAndCompleteDownloadableCount()V

    .line 319
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, " completeTrackCount=%d activeTrackCount=%d downloadableId=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 319
    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 323
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 324
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "all tracks downloaded"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateComplete()V

    .line 326
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->markComplete()V

    .line 327
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v1, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onDownloadCompletedSuccess(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 332
    :goto_0
    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->updateLastContactNetflix(Landroid/content/Context;)V

    .line 338
    :goto_1
    return-void

    .line 329
    :cond_0
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "completeTrackCount=%d activeTrackCount=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasEnoughFreeSpace()Z

    move-result v0

    goto :goto_0

    .line 336
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_1
.end method

.method private handleCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    .line 292
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasEnoughFreeSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshManifestFromServerAndContinue()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0
.end method

.method private handleCdnUrlGeoCheckError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->GeoCheckError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 304
    return-void
.end method

.method private handleFirstTimeClearContent()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 230
    return-void
.end method

.method private handleFirstTimeLicenseReceived(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 237
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->populateLicenseData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)V

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 244
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleFirstTimeManifestReceived(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 174
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createFreshCdnUrlDownloadersFromManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    .line 176
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasEnoughFreeSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setManifestNetwork()V

    .line 179
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v2

    .line 181
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLicenseLinkJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    .line 180
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->requestNewLicense(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    .line 212
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleFirstTimeClearContent()V

    goto :goto_0

    .line 195
    :cond_1
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p2, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 196
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getNotEnoughSpaceDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDebugMessageForServerLogs(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendNotEnoughSpaceLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 199
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "handleFirstTimeManifestReceived not enough space"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleManifestForPlayback(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
    .locals 18

    .prologue
    .line 432
    const/4 v14, 0x0

    .line 433
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 435
    :try_start_0
    new-instance v2, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 436
    invoke-static {v5}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getKeySetIdOrNull(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    .line 437
    invoke-static {v5}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    .line 438
    invoke-static {v5}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    .line 439
    invoke-static {v5}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    .line 440
    invoke-static {v5}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v11, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v12, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 443
    invoke-static {v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;->createDownloadContext(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    move-result-object v13

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v13}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;->onPlayableManifestReady(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 509
    return-void

    .line 445
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 448
    const/4 v8, -0x1

    .line 449
    const/4 v5, -0x1

    .line 450
    const/4 v7, -0x1

    .line 451
    const/4 v4, 0x0

    .line 452
    const/4 v6, 0x0

    .line 454
    :try_start_1
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathOfflineManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v8, 0x0

    .line 455
    :goto_1
    const/4 v3, 0x0

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 458
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v12, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v11, v2, v12}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v11

    .line 460
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 461
    add-int/lit8 v2, v3, 0x1

    move v3, v4

    :goto_3
    move v4, v3

    move v3, v2

    .line 469
    goto :goto_2

    .line 454
    :cond_0
    const/4 v8, 0x1

    goto :goto_1

    .line 463
    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->sidxInfoMissing(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_8

    .line 464
    add-int/lit8 v2, v4, 0x1

    .line 465
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v4

    .line 466
    const-string/jumbo v12, "nf_offlinePlayable"

    const-string/jumbo v13, "failed audio track deleted=%b %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v15, v16

    const/4 v4, 0x1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v4

    invoke-static {v12, v13, v15}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_3

    .line 471
    :cond_2
    const/4 v5, 0x0

    .line 473
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 474
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v12, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v11, v2, v12}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v11

    .line 476
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 477
    add-int/lit8 v2, v5, 0x1

    move v5, v6

    :goto_5
    move v6, v5

    move v5, v2

    .line 485
    goto :goto_4

    .line 479
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->sidxInfoMissing(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    add-int/lit8 v2, v6, 0x1

    .line 481
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v6

    .line 482
    const-string/jumbo v12, "nf_offlinePlayable"

    const-string/jumbo v13, "failed video track deleted=%b %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v15, v16

    const/4 v6, 0x1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v6

    invoke-static {v12, v13, v15}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v17, v5

    move v5, v2

    move/from16 v2, v17

    goto :goto_5

    :cond_4
    move v2, v8

    .line 491
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->checkAllDownloadablesExists()Z

    move-result v7

    .line 492
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OfflinePlayableManifestImpl DL_MANIFEST_DATA_MISSING oxid="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " manifestCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " audioCounts="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " videoCounts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failedAudio=%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failedVideo=%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " allExists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    const-string/jumbo v3, "nf_offlinePlayable"

    invoke-static {v3, v2, v9}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v2, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_DATA_MISSING:Lcom/netflix/mediaclient/StatusCode;

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 500
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setThrowable(Ljava/lang/Throwable;)V

    .line 502
    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    move-object v2, v14

    .line 503
    goto/16 :goto_0

    .line 487
    :catch_1
    move-exception v2

    move v3, v5

    move-object v5, v2

    move v2, v8

    .line 488
    :goto_7
    const-string/jumbo v8, "nf_offlinePlayable"

    const-string/jumbo v10, "exception"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-static {v8, v10, v11}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v5, v7

    goto/16 :goto_6

    .line 504
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    :cond_6
    move-object v2, v14

    goto/16 :goto_0

    .line 487
    :catch_2
    move-exception v3

    move v4, v2

    move v2, v8

    move/from16 v17, v5

    move-object v5, v3

    move/from16 v3, v17

    goto :goto_7

    :catch_3
    move-exception v2

    move-object v5, v2

    move v2, v8

    goto :goto_7

    :catch_4
    move-exception v5

    move v6, v2

    move v2, v8

    goto :goto_7

    :cond_7
    move v2, v5

    move v5, v6

    goto/16 :goto_5

    :cond_8
    move v2, v3

    move v3, v4

    goto/16 :goto_3
.end method

.method private handleManifestRefreshedFromServer(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1074
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setManifestNetwork()V

    .line 1076
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestUpdated(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    .line 1081
    :goto_0
    return-void

    .line 1078
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1079
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleManifestUpdated(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createCdnUrlDownloadersFromUpdatedManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Z

    move-result v0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasEnoughFreeSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->startCdnUrlDownloaders()V

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendEncodesNotAvailableError()V

    goto :goto_0
.end method

.method private handleNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 260
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NetworkError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 261
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->updateActiveAndCompleteDownloadableCount()V

    .line 270
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "handleNetworkError networkConnected"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    if-lez v1, :cond_1

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 281
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "handleNetworkError noNetwork"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0
.end method

.method private handleRefreshLicenseResponse(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1457
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1458
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->populateLicenseData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)V

    .line 1459
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    .line 1469
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setLicenseRefreshing(Z)V

    .line 1470
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    .line 1471
    if-eqz p3, :cond_1

    .line 1472
    invoke-virtual {p3, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;->onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1474
    :cond_1
    return-void

    .line 1461
    :cond_2
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshLicense failed %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1464
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isLicenseExpired(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleUrlDownloadDiskIOError()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_URL_DOWNLOAD_DISK_IO_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StorageError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 252
    return-void
.end method

.method private hasAtLeastOneTrackForDownload()Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1021
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 1023
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NO_TRACKS_TO_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0
.end method

.method private hasEnoughFreeSpace()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1003
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getTotalEstimatedSpace()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getCurrentEstimatedSpace()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x17d7840

    add-long/2addr v2, v4

    .line 1004
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v4

    .line 1005
    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 1006
    const-string/jumbo v6, "nf_offlinePlayable"

    const-string/jumbo v7, "hasEnoughFreeSpace freeSpaceNeeded=%d freeSpaceOnFileSystem=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1009
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private hasManifestNetworkChanged()Z
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x0

    return v0
.end method

.method private isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 1352
    iget-boolean v0, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1353
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mSizeOfDownloadable:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1352
    :goto_0
    return v0

    .line 1353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onProgressWatchRunnable()V
    .locals 5

    .prologue
    .line 1205
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1213
    :goto_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "ProgressWatchRunnable playableId=%s PlayablePercentageProgress=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getPercentageDownloaded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1213
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1215
    return-void

    .line 1207
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->updateProgressPercentage()V

    .line 1208
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->scheduleNextProgressWatch()V

    .line 1209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onProgress(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    goto :goto_0

    .line 1205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 1425
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canRefreshOrDeleteLicense()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->shouldRefreshLicense(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1426
    :cond_0
    if-eqz p3, :cond_1

    .line 1427
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p3, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;->onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1454
    :cond_1
    :goto_0
    return-void

    .line 1432
    :cond_2
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshing license for %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1433
    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setLicenseRefreshing(Z)V

    .line 1435
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    .line 1436
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 1437
    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getKeySetIdOrNull(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)[B

    move-result-object v4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v5, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkRefresh:Ljava/lang/String;

    .line 1438
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;

    invoke-direct {v8, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    move-object v1, p1

    .line 1435
    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    goto :goto_0
.end method

.method private refreshManifestFromServerAndContinue()V
    .locals 7

    .prologue
    .line 1056
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshManifestFromServerAndContinue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 1058
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadVideoQuality()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$7;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$7;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    .line 1057
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestRefreshFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    .line 1065
    return-void
.end method

.method private removeProgressWatcher()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method private scheduleFirstProgressWatch()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method

.method private scheduleNextProgressWatch()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-void
.end method

.method private sendMessageToHandler(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendMessageToHandler after handler is gone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 1029
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendNetworkError already in stopped state."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_0
    return-void

    .line 1031
    :cond_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendNetworkError sending error to mOfflinePlayableListener."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1033
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onNetworkError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private sendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 4

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v0

    .line 1039
    const-wide/32 v2, 0x17d7840

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 1040
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendStorageError overriding error to not enough space"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 1042
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 1044
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1047
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendStorageError already in stopped state."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :goto_0
    return-void

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1050
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onStorageError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private setLicenseRefreshing(Z)V
    .locals 0

    .prologue
    .line 1536
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mLicenseRefreshing:Z

    .line 1537
    return-void
.end method

.method private setManifestNetwork()V
    .locals 3

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkTypeOrMinusOne(Landroid/content/Context;)I

    move-result v1

    .line 1330
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setManifestNetworkType(I)V

    .line 1331
    const-string/jumbo v0, ""

    .line 1332
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1333
    packed-switch v1, :pswitch_data_0

    .line 1346
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setWiFiSsidOrNetworkOperatorName(Ljava/lang/String;)V

    .line 1347
    return-void

    .line 1335
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1336
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getSsidOrEmptyString(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1339
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1340
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentOperatorNameOrEmptyString(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startCdnUrlDownloaders()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 826
    .line 827
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "startCdnUrlDownloaders"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    .line 829
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->isDownloadComplete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 830
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->startDownload()V

    move v0, v3

    :goto_1
    move v1, v0

    .line 835
    goto :goto_0

    .line 833
    :cond_0
    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "download was complete downloadableId=%s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_1

    .line 836
    :cond_1
    if-eqz v1, :cond_2

    .line 837
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->removeProgressWatcher()V

    .line 838
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateInProgress()V

    .line 839
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->scheduleFirstProgressWatch()V

    .line 843
    :goto_2
    return-void

    .line 841
    :cond_2
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "startCdnUrlDownloaders not running progress watcher."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private stopAndSendEncodesNotAvailableError()V
    .locals 3

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_ARE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onUnRecoverableError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 315
    return-void
.end method

.method private stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 309
    return-void
.end method

.method private stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 257
    return-void
.end method

.method private updateActiveAndCompleteDownloadableCount()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 794
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    .line 795
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    .line 796
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    .line 797
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->isDownloadComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    .line 800
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    goto :goto_0

    .line 804
    :cond_2
    return-void
.end method


# virtual methods
.method public canResumeWithoutUserAction()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->canResumeWithoutUserAction()Z

    move-result v0

    return v0
.end method

.method public deleteDownload()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 412
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doDeleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 539
    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->abortAllRequestsForPlayable(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public doMaintenanceWork(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldRefresh:Z

    if-eqz v0, :cond_1

    .line 515
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "attempt auto refresh playableId=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 516
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->MAINTENANCE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$5;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshLicenseIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    .line 524
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "does not allow auto refresh playableId=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 525
    if-eqz p1, :cond_0

    .line 526
    invoke-interface {p1, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;->onMaintenanceJobDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    if-eqz p1, :cond_0

    .line 530
    invoke-interface {p1, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;->onMaintenanceJobDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    goto :goto_0
.end method

.method public getCurrentEstimatedSpace()J
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    .line 665
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getActualSizeOfPlayableOnDiskInCompleteState(Ljava/io/File;)J

    move-result-wide v0

    .line 664
    :goto_0
    return-wide v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    .line 666
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getBytesDownloadedSoFar()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDownloadContextInitTimeMs()J
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextInitTimeMs:J

    return-wide v0
.end method

.method public getDownloadContextListPos()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextListPos:I

    return v0
.end method

.method public getDownloadContextRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadContextTrackId()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextTrackId:I

    return v0
.end method

.method public getDownloadContextVideoPos()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextVideoPos:I

    return v0
.end method

.method public getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public getDxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiringInMillis()J
    .locals 12

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v10, 0x0

    .line 692
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    if-eqz v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    .line 694
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v4, v4, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-wide v4, v4, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    .line 695
    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->getPlayableWindowInMs()J

    move-result-wide v6

    .line 696
    cmp-long v8, v2, v10

    if-lez v8, :cond_0

    cmp-long v4, v4, v10

    if-gtz v4, :cond_0

    cmp-long v4, v6, v10

    if-gtz v4, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-wide v0

    .line 699
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    sub-long v0, v6, v0

    goto :goto_0
.end method

.method public getLastPersistentStatus()Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorCode:I

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorCode:I

    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 710
    if-nez v0, :cond_0

    .line 711
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    .line 713
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDisplayMessage(Z)V

    :cond_1
    move-object v0, v1

    .line 720
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method public getOfflinePdsData(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V
    .locals 6

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;

    invoke-direct {v5, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    .line 1422
    return-void
.end method

.method public getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    return-object v0
.end method

.method public getOxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentageDownloaded()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getPercentageDownloaded()I

    move-result v0

    return v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGuidOfDownloadRequester()Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 681
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 685
    :goto_0
    return-object v0

    .line 684
    :cond_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "getProfileGuidOfDownloadRequester error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    return-object v0
.end method

.method public getTotalEstimatedSpace()J
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    .line 673
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getActualSizeOfPlayableOnDiskInCompleteState(Ljava/io/File;)J

    move-result-wide v0

    .line 672
    :goto_0
    return-wide v0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    .line 674
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getTotalBytesToDownload()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 6

    .prologue
    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    .line 601
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->isGeoBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->GEO_BLOCKED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 644
    :cond_0
    :goto_0
    return-object v0

    .line 606
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->WATCHING_ALLOWED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 608
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    .line 610
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mKeySetId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 613
    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isAllowedByViewWindow(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 614
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->VIEW_WINDOW_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 615
    :cond_2
    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isLicenseExpired(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 616
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->LICENSE_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 618
    :cond_3
    iget-wide v2, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    .line 619
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isAllowedByPlayWindow(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 620
    iget-boolean v0, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPwResettable:Z

    if-eqz v0, :cond_4

    iget-wide v0, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 621
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_BUT_RENEWABLE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 623
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_FINAL:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 626
    :cond_5
    iget-wide v4, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    .line 627
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    if-eqz v1, :cond_0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    new-instance v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$6;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 644
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->NOT_WATCHABLE_DUE_TO_NOT_ENOUGH_DATA:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0
.end method

.method public initialize()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 343
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "initialize playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 345
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->failIfNoPlayableDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_CREATE_VIEWABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 362
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportDownloadStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 354
    invoke-static {v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;->createDownloadContext(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 356
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadVideoQuality()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v6

    new-instance v7, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$2;

    invoke-direct {v7, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$2;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    .line 352
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    goto :goto_0
.end method

.method public notifyOfflinePlayStarted()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->hasRecentHomingAndConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 739
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    .line 744
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 744
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 751
    :cond_1
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "notifyOfflinePlayStarted not starting playWindow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 5

    .prologue
    .line 759
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onCdnUrlDownloadSessionEnd downloadableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 760
    const/4 v0, 0x4

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {v1, p0, v2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 762
    return-void
.end method

.method public onCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 781
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onCdnUrlExpiredOrMoved downloadableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 782
    const/4 v0, 0x3

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 783
    return-void
.end method

.method public onCdnUrlGeoCheckFailure(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 787
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onCdnUrlExpiredOrMoved downloadableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 788
    const/4 v0, 0x5

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 789
    return-void
.end method

.method public onLicenseSync(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;)V
    .locals 5

    .prologue
    .line 1390
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1407
    :goto_0
    :pswitch_0
    return-void

    .line 1400
    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_DELETE_ON_REVOCATION:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 1401
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->deleteAllDownloadables(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Z

    move-result v1

    .line 1402
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1403
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesRevoked:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1404
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v2, "onLicenseSync encodes deleted=%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 769
    const/4 v0, 0x2

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 770
    return-void
.end method

.method public onUrlDownloadDiskIOError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 4

    .prologue
    .line 774
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onUrlDownloadDiskIOError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x1

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    new-instance v2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_URL_DOWNLOAD_DISK_IO_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {v1, p0, v2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 777
    return-void
.end method

.method public refreshLicenseIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 6

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->shouldRefreshLicense(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canRefreshOrDeleteLicense()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshLicenseIfNeeded playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;

    invoke-direct {v5, p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1377
    :cond_1
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshLicenseIfNeeded not refreshing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    if-eqz p2, :cond_0

    .line 1379
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;->onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public requestManifestForPlayback(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
    .locals 6

    .prologue
    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;

    invoke-direct {v5, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    .line 429
    return-void
.end method

.method public startDownload()V
    .locals 6

    .prologue
    .line 366
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 367
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "startDownload"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 369
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "Download is already complete. This shouldn\'t be called."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canResumeWithoutUserAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "Download is not resume-able without user action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StorageError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_VIEWABLE_DIRECTORY_MISSING:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onStorageError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateInProgress()V

    .line 383
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasEnoughFreeSpace()Z

    move-result v0

    if-nez v0, :cond_3

    .line 384
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    .line 387
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    goto :goto_0
.end method

.method public stopDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 405
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 407
    return-void
.end method
