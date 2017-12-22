.class public Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/IntentCommandHandler;
.implements Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;
.implements Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentServiceInterface;
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;


# static fields
.field private static final MAX_NUMBER_OF_ZERO_PLAYABLE_LICENSE_SYNC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "nf_offlineAgent"

.field private static final VIEW_TIME_TO_QUALIFY_FIRST_VIEW:J = 0x7530L


# instance fields
.field private final mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

.field private mAvailable:Z

.field private mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

.field private final mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mContext:Landroid/content/Context;

.field private mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

.field private final mDownloadControllerListener:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

.field private final mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;

.field private mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

.field private final mMainThreadOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

.field private mMaintenanceActionRunId:I

.field private mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

.field private final mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

.field private mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

.field private mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

.field private final mOfflinePlayManifestRequestMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mOfflinePlayableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

.field private final mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

.field private mPersistRegistryErrorTime:J

.field private mPlayableIdInFlight:Ljava/lang/String;

.field private mRealm:Lio/realm/Realm;

.field private mRegistryDirty:Z

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mSkipAdultContent:Z

.field private final mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

.field private final mStorageMonitor:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

.field private final mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    .line 122
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayManifestRequestMap:Ljava/util/Map;

    .line 127
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;

    .line 160
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMainThreadOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    .line 1488
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$22;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    .line 1531
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$23;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadControllerListener:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    .line 143
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 144
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 145
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    .line 146
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

    .line 147
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startBackgroundThread()V

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageMonitor:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageMonitor:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleThreadException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->recoverUiList()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleGeoPlayabilityUpdated(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getRealm()Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lio/realm/Realm;)Lio/realm/Realm;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendLicenseRefreshDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendPlayWindowRenewDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendOfflinePdsDataError(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->syncLicensesToServer()V

    return-void
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleAgentInitRequest()V

    return-void
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleCreateRequest(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDeleteRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handlePauseRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleResumeRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleAgentDestroyRequest()V

    return-void
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDownloadResumeJob()V

    return-void
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDownloadMaintenanceJob()V

    return-void
.end method

.method static synthetic access$3900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDeleteAllRequest(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleOfflinePlaybackStart30Second(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleMaintenanceJobDone()V

    return-void
.end method

.method static synthetic access$4202(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;)Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleChangeCurrentOfflineStorageVolume(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleRecalculateOsvSpaceUsage()V

    return-void
.end method

.method static synthetic access$4500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDeletePlayables(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)I
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceActionRunId:I

    return p1
.end method

.method static synthetic access$4800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    return-void
.end method

.method static synthetic access$5000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildFalkorDataAndPlayableListFromPersistentStore()V

    return-void
.end method

.method static synthetic access$5200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayManifestRequestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendOfflineManifestFromMainThread(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    return-void
.end method

.method private addRequestToHandler(I)V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1289
    return-void
.end method

.method private addRequestToHandler(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1285
    return-void
.end method

.method private buildFalkorDataAndPlayableListFromPersistentStore()V
    .locals 5

    .prologue
    .line 1067
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "buildFalkorDataAndPlayableListFromPersistentStore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setGeoCountryCode(Ljava/lang/String;)V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->hasAtLeastOnePlayable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startQueueIfRequired()V

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1075
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getRegistryEnumerator()Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;

    move-result-object v1

    .line 1076
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1077
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->nextElement()Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    move-result-object v2

    .line 1078
    iget-object v0, v2, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 1079
    iget-object v4, v2, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->createOfflineViewable(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1080
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1083
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->refreshUIData()V

    .line 1084
    return-void
.end method

.method private buildNewUiList()V
    .locals 4

    .prologue
    .line 836
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 837
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 838
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 841
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 842
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "buildNewUiList already in main regenerate"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->regenerate(Lio/realm/Realm;Ljava/util/Map;Z)V

    .line 853
    :goto_1
    return-void

    .line 845
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private createOfflineViewable(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;
    .locals 11

    .prologue
    .line 799
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;-><init>()V

    iget-object v2, p2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    .line 801
    invoke-static {p1, v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getDirectoryPathForViewable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMainThreadOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v10

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;Ljava/lang/String;Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    .line 799
    return-object v0
.end method

.method private doSaveToRegistryInBGThread(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 1157
    if-eqz p1, :cond_1

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->persistRegistry()V
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "doSaveToRegistryInBGThread can\'t persist registry"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v1

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "-1"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->logMessage(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_REGISTRY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1164
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1165
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPersistRegistryErrorTime:J

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPersistRegistryErrorTime:J

    .line 1167
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPersistRegistryErrorTime:J

    sub-long v0, v2, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;->onStorageAddedOrRemoved()V

    goto :goto_0

    .line 1173
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "doSaveToRegistryInBGThread context is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private emptyOfflinePlayableUiList()V
    .locals 3

    .prologue
    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 676
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$9;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$9;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    return-void
.end method

.method private getRealm()Lio/realm/Realm;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    return-object v0
.end method

.method private getVideoQualityFromPref()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 3

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download_video_quality"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 1003
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1002
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    return-object v0
.end method

.method private handleAgentDestroyRequest()V
    .locals 2

    .prologue
    .line 363
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleAgentDestroyRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageMonitor:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageMonitor:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->destroy()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->destroy()V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->destroy()V

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->destroy()V

    .line 376
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_4

    .line 378
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "Stopping Volley RequestQueue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 383
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->destroy()V

    goto :goto_0

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopBackgroundThread()V

    .line 387
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 388
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "destroyInBgThread done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method private handleAgentInitRequest()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getOfflineUnavailableReason()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    .line 263
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 329
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageMonitor:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->init()V

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getNetflixPowerManager()Lcom/netflix/mediaclient/service/NetflixPowerManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->setNetflixPowerManager(Lcom/netflix/mediaclient/service/NetflixPowerManager;)V

    .line 268
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 269
    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsEventHandler()Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    .line 271
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getRegistryState()Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 292
    :pswitch_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildFalkorDataAndPlayableListFromPersistentStore()V

    .line 295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 297
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    .line 298
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 299
    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceLowMem()Z

    move-result v4

    move-object v5, p0

    .line 294
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createDownloadNotificationManager(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    .line 302
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 304
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadControllerListener:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    .line 305
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->areDownloadsPausedByUser()Z

    move-result v7

    .line 306
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/job/MaintenanceAction;Ljava/util/List;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;ZLcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 317
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->init()V

    .line 319
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "OfflineAgent doInit success."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-boolean v9, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "offline_ever_worked"

    invoke-static {v0, v1, v9}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 322
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    :goto_1
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 279
    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_AGENT_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 284
    :pswitch_2
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_REGISTRY_CHECKSUM_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 287
    :pswitch_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    .line 288
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 272
    :catch_1
    move-exception v0

    goto :goto_1

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleChangeCurrentOfflineStorageVolume(I)V
    .locals 5

    .prologue
    .line 1643
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleChangeCurrentOfflineStorageVolume newVolumeIndex=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1644
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->hasAnyItemInCreatingOrCreateFailed(Ljava/util/List;)Z

    move-result v0

    .line 1645
    if-eqz v0, :cond_1

    .line 1646
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleChangeCurrentOfflineStorageVolume can\'t change volume while active create operations"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    .line 1650
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setCurrentOfflineVolume(I)Z

    move-result v1

    .line 1651
    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    .line 1653
    if-eqz v0, :cond_0

    .line 1654
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    goto :goto_0
.end method

.method private handleCreateRequest(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 393
    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->mPlayableId:Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startQueueIfRequired()V

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_0

    .line 400
    const-string/jumbo v2, "nf_offlineAgent"

    const-string/jumbo v3, "handleCreateRequest removing CreateFailed item"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 402
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V

    .line 403
    const/4 v0, 0x0

    .line 405
    :cond_0
    if-nez v0, :cond_1

    .line 406
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "handleCreateRequest creating new item %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 409
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generateOxId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 410
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getVideoQualityFromPref()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-static {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->createOfflineContentPersistentData(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    .line 412
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generateDxId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportAddCachedVideoStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getCurrentOsvDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->createOfflineViewable(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v1

    .line 416
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->addToCurrentRegistryData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    const-string/jumbo v0, "handleCreateRequest"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->processNextCreateRequest(Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "handleCreateRequest already requested"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->DL_TITTLE_ALREADY_REQUESTED_FOR_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onCreateRequestResponse(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleDeleteAllRequest(Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 621
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteAllRequest deletePermanently=%b"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 622
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 623
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->emptyOfflinePlayableUiList()V

    .line 624
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 626
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "handleDeleteRequest not deleting in-flight item"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    .line 634
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportRemoveCachedVideoStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V

    .line 636
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->deleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 637
    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 638
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v5, "handleDeleteAllRequest can\'t delete playableId=%s status=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v8

    invoke-static {v1, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, v2

    .line 641
    :cond_1
    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->reportDeleteConsolidatedLogging(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 642
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setPrimaryProfileGuid(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onAllPlayableDeleted()V

    .line 647
    if-eqz p1, :cond_3

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->deleteDeletedList()V

    .line 650
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 653
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->refreshUIData()V

    .line 654
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendAllDeleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 657
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;

    invoke-direct {v1, p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    return-void
.end method

.method private handleDeletePlayables(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 567
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    move v3, v4

    .line 568
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 569
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    const-string/jumbo v2, "nf_offlineAgent"

    const-string/jumbo v5, "handleDeletePlayables playableId=%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v2, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 571
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v5

    .line 572
    if-nez v5, :cond_0

    .line 573
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "handleDeletePlayables offlinePlayable not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 576
    :cond_0
    invoke-interface {v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeletePlayables not deleting in-flight item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_BUSY_TRY_DELETE_AGAIN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_1

    .line 580
    :cond_1
    invoke-interface {v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    .line 581
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportRemoveCachedVideoStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 584
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V

    .line 585
    invoke-interface {v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->deleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 586
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v2

    .line 589
    :cond_2
    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->reportDeleteConsolidatedLogging(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 590
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onDeleted(Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    goto :goto_1

    .line 595
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 596
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    .line 597
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadPlayablesDeleteDone(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 598
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    .line 599
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method

.method private handleDeleteRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 527
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteRequest playableId=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 529
    if-nez v0, :cond_1

    .line 530
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteRequest offlinePlayable not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteRequest not deleting in-flight item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_BUSY_TRY_DELETE_AGAIN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    .line 540
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportRemoveCachedVideoStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 543
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V

    .line 544
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->deleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->reportDeleteConsolidatedLogging(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onDeleted(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 550
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    .line 551
    invoke-direct {p0, p1, v1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V

    .line 552
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    .line 553
    if-eqz p2, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$6;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private handleDownloadMaintenanceJob()V
    .locals 4

    .prologue
    .line 496
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDownloadMaintenanceJob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->terminate()V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendNetflixJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 501
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;-><init>(Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Ljava/util/List;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->startMaintenanceJob(Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;)V

    .line 503
    return-void
.end method

.method private handleDownloadResumeJob()V
    .locals 2

    .prologue
    .line 506
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDownloadResumeJob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendNetflixJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 508
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onDownloadResumeJobDone()V

    .line 510
    return-void
.end method

.method private handleGeoPlayabilityUpdated(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleGeoPlayabilityUpdated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->applyGeoPlayabilityFlags(Ljava/util/Map;Ljava/util/List;)V

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setGeoCountryCode(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    goto :goto_0
.end method

.method private handleLicenseRefreshForAll()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 615
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->doMaintenanceWork(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V

    goto :goto_0

    .line 617
    :cond_0
    return-void
.end method

.method private handleMaintenanceJobDone()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    .line 670
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceActionRunId:I

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;->notifyMaintenanceActionDone(Lcom/netflix/mediaclient/service/job/MaintenanceAction;I)V

    .line 671
    return-void
.end method

.method private handleMayBeNewUser()V
    .locals 2

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->hasPrimaryProfileGuidChanged(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)Z

    move-result v0

    .line 1372
    if-eqz v0, :cond_0

    .line 1373
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDeleteAllRequest(Z)V

    .line 1375
    :cond_0
    return-void
.end method

.method private handleOfflinePlaybackStart30Second(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 1635
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1636
    if-eqz v0, :cond_0

    .line 1637
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->notifyOfflinePlayStarted()V

    .line 1639
    :cond_0
    return-void
.end method

.method private handlePauseRequest(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 474
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handlePauseRequest playableId=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 476
    if-nez v0, :cond_0

    .line 477
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handlePauseRequest playableId=%s not found"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 487
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_1

    .line 481
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StoppedFromAgentAPI:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->stopDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 482
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 483
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    goto :goto_0

    .line 485
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handlePauseRequest trying to pause a completed item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRecalculateOsvSpaceUsage()V
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->recalculateOsvSpaceUsage()V

    .line 1662
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.offline.osv.space.usage.updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1663
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1664
    return-void
.end method

.method private handleResumeRequest(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 427
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    .line 430
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleResumeRequest not found playableId=%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 458
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_1

    .line 434
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "handleResumeRequest not stopped, state=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 437
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 438
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    .line 439
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->tryResumingPlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v1

    .line 440
    if-eqz v1, :cond_2

    .line 441
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 445
    :goto_1
    const-string/jumbo v2, "nf_offlineAgent"

    const-string/jumbo v3, "handleResumeRequest playableId=%s resumed=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 443
    :cond_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    goto :goto_1
.end method

.method private handleThreadException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "uncaughtException threadName=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, p2, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 346
    :try_start_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "uncaughtException stopping all downloads"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 348
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onThreadException()V

    .line 353
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "uncaughtException stopped all downloads"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "passing to defaultExceptionHandler"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 359
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "setUncaughtExceptionHandler error stopping downloads"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private isOfflineFeatureDisabled()Z
    .locals 1

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDownloadPauseOrResumeByUser(Z)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setDownloadsPausedByUser(Z)V

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->setDownloadsAreStoppedByUser(Z)V

    .line 493
    return-void
.end method

.method private processNextCreateRequest(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 232
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "processNextCreateRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->findNextCreatingStatePlayable(Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v8

    .line 235
    if-eqz v8, :cond_0

    .line 236
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "processNextCreateRequest processing playableId=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    invoke-interface {v8}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_USER_NOT_LOGGED_IN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getCurrentOsvDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v4

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOxId()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-interface {v8}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDxId()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getCurrentOsvDirPath()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    .line 243
    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendOfflineDlRequestStorageInfoLogblob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->ensureEnoughDiskSpaceForNewRequest(JLjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleCreateRequest not enough space"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-interface {v8}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->initialize()V

    goto :goto_0

    .line 253
    :cond_3
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "processNextCreateRequest already processing, mPlayableIdInFlight=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private recoverUiList()V
    .locals 8

    .prologue
    .line 860
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getIncompleteVideoDetails(Lio/realm/Realm;)Ljava/util/List;

    move-result-object v0

    .line 861
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;

    .line 862
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "Recover details for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 863
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    .line 864
    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->getVideoType()I

    move-result v4

    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 865
    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$13;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$13;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 863
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->fetchVideoDetailsAndSaveToRealm(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Lio/realm/Realm;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 872
    :cond_0
    return-void
.end method

.method private saveToRegistry()V
    .locals 2

    .prologue
    .line 1140
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "saveToRegistry"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    .line 1142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 1153
    return-void
.end method

.method private sendAllDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onAllPlayablesDeleted(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1271
    return-void
.end method

.method private sendDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onDownloadCompleted(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 1234
    return-void
.end method

.method private sendDownloadDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V
    .locals 6

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onOfflinePlayableDeleted(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V

    .line 1239
    return-void
.end method

.method private sendDownloadPlayablesDeleteDone(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
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
    .line 1243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onOfflinePlayablesDeleted(Landroid/os/Handler;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1244
    return-void
.end method

.method private sendDownloadResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onDownloadResumedByUser(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 1261
    return-void
.end method

.method private sendDownloadStopped(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 7

    .prologue
    .line 1248
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v6

    .line 1249
    const/4 v5, 0x0

    .line 1250
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq v6, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne v6, v0, :cond_1

    .line 1251
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    .line 1252
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendDownloadStopError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onDownloadStopped(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1256
    return-void
.end method

.method private sendError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onError(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1266
    return-void
.end method

.method private sendGeoPlayabilityRequest()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getCompletedVideoIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$5;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$5;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 333
    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper;->sendGeoPlayabilityRequest(Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;)V

    .line 340
    return-void
.end method

.method private sendLicenseRefreshDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onLicenseRefreshDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1276
    return-void
.end method

.method private sendOfflineManifestFromMainThread(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1721
    return-void
.end method

.method private sendOfflinePdsDataError(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V
    .locals 2

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1136
    return-void
.end method

.method private sendPlayWindowRenewDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onPlayWindowRenewDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1281
    return-void
.end method

.method private sendProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onOfflinePlayableProgress(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    .line 1229
    return-void
.end method

.method private sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1179
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "sendResponseForCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1181
    if-nez v0, :cond_1

    .line 1182
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "sendResponseForCreate not found playableId=%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "-1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPlayableIdInFlight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->logMessage(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResponseForCreate notFound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->throwExceptionDelayedInDebug(Landroid/os/Handler;Ljava/lang/String;)V

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_2

    .line 1188
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "sendResponseForCreate STATE %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDxId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "STATE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->logMessage(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "STATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->throwExceptionDelayedInDebug(Landroid/os/Handler;Ljava/lang/String;)V

    .line 1192
    :cond_2
    iput-object v8, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    .line 1193
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->addCachedVideoButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v4, v8}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportAddCachedVideoEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1195
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_4

    .line 1198
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setWarningStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1200
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->DownloadLimitRequiresManualResume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1216
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    .line 1217
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    .line 1218
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onCreateRequestResponse(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1219
    const-string/jumbo v1, "sendResponseForCreate"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->processNextCreateRequest(Ljava/lang/String;)V

    .line 1220
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->areDownloadsPausedByUser()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1221
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->tryResumingPlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v0

    .line 1222
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "sendResponseForCreate playableId=%s resumed=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1203
    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_1

    .line 1207
    :cond_5
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->addCachedVideoButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportAddCachedVideoEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1209
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setCreateFailedState()V

    .line 1212
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_TOTAL_LICENSE_PER_DEVICE_LIMIT:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_3

    .line 1213
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->syncLicensesToServer()V

    goto/16 :goto_1
.end method

.method private startBackgroundThread()V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "nf_of_bg"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 691
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 692
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    .line 694
    :cond_0
    return-void
.end method

.method private startDownloadIfAllowed()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1013
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getNextPlayableForDownload()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_0

    .line 1016
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "starting the download for %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1017
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->startDownload()V

    .line 1024
    :goto_0
    return-void

    .line 1019
    :cond_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "no downloadable item found, count=%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1022
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "startDownloadIfAllowed user is not logged in or offline not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startQueueIfRequired()V
    .locals 6

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDownloadAgentThreadPoolSize()I

    move-result v0

    .line 1034
    new-instance v1, Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v2}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v4, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    const-string/jumbo v4, "offline"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 1035
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    goto :goto_0
.end method

.method private stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z
    .locals 4

    .prologue
    .line 1041
    const/4 v0, 0x0

    .line 1042
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 1043
    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->isDownloading(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1044
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->stopDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1045
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 1046
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 1048
    goto :goto_0

    .line 1049
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 2

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    .line 1055
    if-eqz v0, :cond_0

    .line 1056
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopAllDownloadsAndPersistRegistry something was stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    .line 1059
    :cond_0
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 699
    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 703
    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 704
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 706
    :cond_1
    return-void
.end method

.method private syncLicensesToServer()V
    .locals 3

    .prologue
    .line 1724
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "syncLicensesToServer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    :goto_0
    return-void

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getLicenseDeactivateLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$27;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$27;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->sendSyncActiveLicensesToServer(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;)V

    goto :goto_0
.end method

.method private tryResumingPlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->canThisPlayableBeResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->startDownload()V

    .line 465
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePrimaryProfileGuidIfMissing()V
    .locals 5

    .prologue
    .line 789
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getPrimaryProfileGuid()Ljava/lang/String;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getPrimaryProfileGuid()Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setPrimaryProfileGuid(Ljava/lang/String;)V

    .line 793
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "updatePrimaryProfileGuidIfMissing %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 795
    :cond_0
    return-void
.end method


# virtual methods
.method public abortManifestRequest(J)V
    .locals 5

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$25;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;J)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 1679
    :goto_0
    return-void

    .line 1677
    :cond_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "abortManifestRequest OfflineAgent not ready error movieId=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 2

    .prologue
    .line 907
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 908
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->addOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 909
    return-void
.end method

.method public deleteAllOfflineContent()V
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 955
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 956
    return-void
.end method

.method public deleteAndTryAgain(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    .line 816
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 817
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;

    invoke-direct {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 818
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 819
    return-void
.end method

.method public deleteOfflinePlayable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 809
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 810
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 811
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(ILjava/lang/String;)V

    .line 812
    return-void
.end method

.method public deleteOfflinePlayables(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 825
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 826
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 827
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "deleteOfflinePlayables nothing to be done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 724
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 726
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mStorageMonitor:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->destroy()V

    .line 727
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->agentDestroying()V

    .line 728
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    if-eqz v0, :cond_0

    .line 729
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadMaintenanceAction;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;->unregisterAction(Lcom/netflix/mediaclient/service/job/MaintenanceAction;)V

    .line 740
    return-void
.end method

.method protected doInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 710
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "OfflineAgent doInit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 712
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startBackgroundThread()V

    .line 719
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 720
    return-void
.end method

.method public getCommandHandler()Lcom/netflix/mediaclient/service/IntentCommandHandler;
    .locals 0

    .prologue
    .line 1008
    return-object p0
.end method

.method public getCurrentDownloadVideoQuality()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 1

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getVideoQualityFromPref()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    return-object v0
.end method

.method public getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;
    .locals 1

    .prologue
    .line 884
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 885
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    return-object v0
.end method

.method public getOfflineStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getUiStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;

    move-result-object v0

    return-object v0
.end method

.method public getRequiresUnmeteredNetwork()Z
    .locals 1

    .prologue
    .line 934
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 935
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->requiresUnmeteredConnectionForDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCommand(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1293
    invoke-static {p1}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->getGroupType(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    .line 1294
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1299
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "unsupported IntentCommandGroupType=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1301
    :goto_0
    return-void

    .line 1296
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->handleDownloadNotificationIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleConnectivityChange()V
    .locals 1

    .prologue
    .line 752
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->handleConnectivityChange()V

    .line 753
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleConnectivityChange()V

    .line 756
    :cond_0
    return-void
.end method

.method public isOfflineFeatureEnabled()Z
    .locals 1

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyPause(J)V
    .locals 0

    .prologue
    .line 1691
    return-void
.end method

.method public notifyPlay(J)V
    .locals 5

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0x9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1685
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1686
    return-void
.end method

.method public notifyPlayError(J)V
    .locals 3

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0x9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1708
    return-void
.end method

.method public notifyPlayProgress(JJ)V
    .locals 0

    .prologue
    .line 1702
    return-void
.end method

.method public notifyStop(J)V
    .locals 3

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0x9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1697
    return-void
.end method

.method public onAccountDataFetched()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1334
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1335
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v3, "onAccountDataFetched"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1337
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleMayBeNewUser()V

    .line 1338
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleLicenseRefreshForAll()V

    .line 1340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    .line 1341
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    .line 1340
    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper;->shouldSendGeoPlayabilityRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendGeoPlayabilityRequest()V

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->enoughTimePassedSinceLastLicenseSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1347
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getZeroPlayableLicenseSyncCount(Landroid/content/Context;)I

    move-result v3

    .line 1348
    if-eqz v0, :cond_3

    if-lt v3, v5, :cond_3

    .line 1349
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v3, "Not calling sync, already did %d syncs"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1346
    goto :goto_1

    .line 1351
    :cond_3
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->setLastLicenseSyncTimeToNow(Landroid/content/Context;)V

    .line 1352
    if-eqz v0, :cond_4

    .line 1353
    add-int/lit8 v0, v3, 0x1

    .line 1354
    const-string/jumbo v3, "nf_offlineAgent"

    const-string/jumbo v4, "zeroPlayableSyncCount %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1355
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->setZeroPlayableLicenseSyncCount(Landroid/content/Context;I)V

    .line 1357
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1365
    :cond_5
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "Not calling sync, too early"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAllMaintenanceJobDone()V
    .locals 2

    .prologue
    .line 1393
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onAllMaintenanceJobDone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 1395
    return-void
.end method

.method public onStreamingPlayStartReceived()V
    .locals 1

    .prologue
    .line 1379
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1380
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->notifyStreamingStarted()V

    goto :goto_0
.end method

.method public onStreamingPlayStopReceived()V
    .locals 1

    .prologue
    .line 1386
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1387
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->notifyStreamingStopped()V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->onTrimMemory(I)V

    .line 747
    :cond_0
    return-void
.end method

.method public onUserAccountActive()V
    .locals 2

    .prologue
    .line 1325
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1326
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onUserAccountActive"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1328
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleMayBeNewUser()V

    goto :goto_0
.end method

.method public onUserAccountInActive()V
    .locals 2

    .prologue
    .line 1310
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1311
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1313
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->AccountInActive:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1314
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 891
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 892
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 893
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(ILjava/lang/String;)V

    .line 894
    return-void
.end method

.method public recalculateSpaceUsageForOfflineStorageVolumes()V
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1107
    return-void
.end method

.method public refreshUIData()V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    .line 1088
    return-void
.end method

.method public removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 2

    .prologue
    .line 914
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 915
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->removeOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 916
    return-void
.end method

.method public requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V
    .locals 7

    .prologue
    .line 1596
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "requestOfflineManifest movieId=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1598
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    const/4 v4, 0x0

    const-string/jumbo v5, "-1"

    new-instance v6, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_AGENT_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v6, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    move-object v1, p3

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;->onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1631
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestOfflinePdsData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V
    .locals 2

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_AGENT_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendOfflinePdsDataError(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V

    .line 1127
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 768
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "requestOfflineViewing playableId=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 769
    const-string/jumbo v0, "request offline viewing started."

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 770
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string/jumbo v0, "SPY-12255 got requestOfflineViewing while offline feature disabled."

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->setZeroPlayableLicenseSyncCount(Landroid/content/Context;I)V

    .line 778
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->updatePrimaryProfileGuidIfMissing()V

    .line 779
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 780
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    invoke-direct {v0, p1, p3}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 782
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    invoke-static {v1, v2, v3, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->serializeMetadataToRealm(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Lio/realm/Realm;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 783
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v1, v4, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public requestRefreshLicenseForPlayable(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 961
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "requestRefreshLicenseForPlayable playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 962
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method public requestRenewPlayWindowForPlayable(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 983
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "requestRenewPlayWindowForPlayable playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 999
    return-void
.end method

.method public resumeDownload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 899
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 901
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(ILjava/lang/String;)V

    .line 902
    return-void
.end method

.method public setCurrentOfflineStorageVolume(I)V
    .locals 3

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1101
    return-void
.end method

.method public setDownloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)V
    .locals 3

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download_video_quality"

    .line 942
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 941
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    return-void
.end method

.method public setRequiresUnmeteredNetwork(Z)V
    .locals 5

    .prologue
    .line 921
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 922
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "setRequiresUnmeteredNetwork requires=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 923
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$14;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$14;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 929
    return-void
.end method

.method public setSkipAdultContent(Z)Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 876
    :goto_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    .line 877
    return v0

    .line 875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
