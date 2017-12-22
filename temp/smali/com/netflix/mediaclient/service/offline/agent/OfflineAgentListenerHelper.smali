.class public Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_offlineAgent"


# instance fields
.field private mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

.field private final mOfflineAgentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->removeDeadListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->takePartialWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->releasePartialWakeLock()V

    return-void
.end method

.method private releasePartialWakeLock()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    sget-object v1, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->DownloadGoingOn:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->releasePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V

    .line 245
    :cond_0
    return-void
.end method

.method private removeDeadListeners()V
    .locals 5

    .prologue
    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 312
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;

    .line 314
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;->isListenerDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const-string/jumbo v2, "nf_offlineAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "...removing deadListener... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method

.method private takePartialWakeLock()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    sget-object v1, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->DownloadGoingOn:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->acquirePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public addOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 1

    .prologue
    .line 252
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    if-eqz p2, :cond_0

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$13;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$13;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public agentDestroying()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->releasePartialWakeLock()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    .line 324
    return-void
.end method

.method public onAllPlayablesDeleted(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$8;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$8;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public onCreateRequestResponse(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method

.method public onDownloadCompleted(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 5

    .prologue
    .line 63
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onDownloadCompleted playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public onDownloadResumedByUser(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 5

    .prologue
    .line 95
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onDownloadResumedByUser playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$5;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$5;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public onDownloadStopped(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 5

    .prologue
    .line 80
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onDownloadStopped playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public onError(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$9;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$9;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public onLicenseRefreshDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$10;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public onOfflinePlayableDeleted(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V
    .locals 7

    .prologue
    .line 115
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public onOfflinePlayableProgress(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public onOfflinePlayablesDeleted(Landroid/os/Handler;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public onPlayWindowRenewDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$11;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$11;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method public removeOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 3

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-eqz p2, :cond_0

    .line 297
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOfflineAgentListener before listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$14;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$14;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendStorageAddedOrRemoved(Landroid/os/Handler;Z)V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method public setNetflixPowerManager(Lcom/netflix/mediaclient/service/NetflixPowerManager;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    .line 249
    return-void
.end method
