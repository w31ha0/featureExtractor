.class public Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;
.implements Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface;
.implements Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;


# static fields
.field private static final DEFAULT_DRM_SESSION_COUNT:I = 0x8

.field private static final DRM_PREFETCH_SESSION_LIFE_MS:J = 0xdbba0L

.field private static final MAX_DRM_SESSION_USED:I = 0x14

.field static final MSG_ERROR:I = 0x0

.field static final MSG_KEYS:I = 0x2

.field static final MSG_KEYS_LDL:I = 0x3

.field static final MSG_KEYS_OFFLINE:I = 0x4

.field static final MSG_PROVISION_REQUEST:I = 0x1

.field private static final RESERVED_DRM_SESSION_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfPlayerDrmManager"


# instance fields
.field private mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private mDeviceHasLowDrmResource:Z

.field private mDisableLicensePreftech:Z

.field private mDrmProvisionPending:Z

.field private mDrmSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

.field private mMaxDrmSesionCount:I

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mWaitToPrepareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/Triple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Z)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    .line 70
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 71
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    .line 172
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->initializeMediaDrmInstance()V

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v4, "maxNumberOfSessions"

    invoke-virtual {v0, v4}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 178
    :try_start_1
    const-string/jumbo v4, "NfPlayerDrmManager"

    const-string/jumbo v5, "maxNumberOfSessions is %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v0

    .line 184
    :goto_0
    if-nez p4, :cond_0

    if-ge v4, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDisableLicensePreftech:Z

    .line 185
    if-eqz p4, :cond_3

    .line 186
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v5, "license prefetch is disabled by config"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    :goto_2
    add-int/lit8 v0, v4, -0x3

    const/16 v4, 0x14

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    .line 192
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    if-gt v0, v3, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDeviceHasLowDrmResource:Z

    .line 196
    return-void

    .line 179
    :catch_0
    move-exception v0

    move v0, v3

    .line 180
    :goto_4
    const-string/jumbo v4, "NfPlayerDrmManager"

    const-string/jumbo v5, "default maxNumberOfSessions is %d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 184
    goto :goto_1

    .line 187
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDisableLicensePreftech:Z

    if-eqz v0, :cond_1

    .line 188
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v5, "license prefetch is disabled due to insufficient session"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v2, v1

    .line 192
    goto :goto_3

    .line 179
    :catch_1
    move-exception v4

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmProvisionPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmProvisionPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Landroid/media/MediaDrm$ProvisionRequest;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->startDrmProvision(Landroid/media/MediaDrm$ProvisionRequest;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->removeSession(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->closeAndRemoveSession(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->processDrmProvisionResponse([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Landroid/media/MediaDrm;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->initializeMediaDrmInstance()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDeviceHasLowDrmResource:Z

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    return-object v0
.end method

.method private clearAll(Z)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method private closeAndRemoveSession(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->close()V

    .line 335
    :cond_0
    return-void
.end method

.method static dumpKeyStatus(Landroid/media/MediaDrm;[B)V
    .locals 1

    .prologue
    .line 558
    const-string/jumbo v0, "NfPlayerDrmManager"

    invoke-static {v0, p0, p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->dumpKeyStatus(Ljava/lang/String;Landroid/media/MediaDrm;[B)V

    .line 559
    return-void
.end method

.method private static dumpMediaDrmProperty(Landroid/media/MediaDrm;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 530
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vendor"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "version"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "deviceUniqueId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "algorithms"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "securityLevel"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "systemId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "privacyMode"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "sessionSharing"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "usageReportingSupport"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "appId"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "hdcpLevel"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "maxHdcpLevel"

    aput-object v3, v1, v2

    .line 545
    const-string/jumbo v2, "NfPlayerDrmManager"

    const-string/jumbo v3, "===== MediaDrm property ======"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 548
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 549
    const-string/jumbo v5, "NfPlayerDrmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :catch_0
    move-exception v4

    .line 551
    const-string/jumbo v4, "NfPlayerDrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    :cond_0
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "===== End of MediaDrm property ======"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method private getAssocaitedPlayContext(J)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 5

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/Triple;

    .line 284
    iget-object v1, v0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v0, v0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 288
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    goto :goto_0
.end method

.method private initializeMediaDrmInstance()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getNewMediaDrmInstance(Landroid/media/MediaDrm$OnEventListener;)Landroid/media/MediaDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    :goto_1
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "fail to instantiate MediaDrm %s"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private processDrmProvisionResponse([B)V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$8;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
    return-void
.end method

.method private purgeCachedSessions(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "purgeCachedSessions has  %d, target is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 438
    if-le v0, p1, :cond_1

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 440
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 441
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 442
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getInUse()Z

    move-result v3

    if-nez v3, :cond_0

    if-le v1, p1, :cond_0

    .line 443
    add-int/lit8 v1, v1, -0x1

    .line 444
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getMovieId()Ljava/lang/Long;

    move-result-object v0

    .line 445
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->closeAndRemoveSession(Ljava/lang/Long;)V

    .line 446
    const-string/jumbo v3, "NfPlayerDrmManager"

    const-string/jumbo v4, "purgeCachedSessions remove a cached session %d"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    move v0, v1

    move v1, v0

    .line 448
    goto :goto_0

    .line 451
    :cond_1
    return-void
.end method

.method private purgeStaleSessions()V
    .locals 6

    .prologue
    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 418
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionAgeInMs()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getInUse()Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->close()V

    .line 420
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->isClosedOrError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 433
    :cond_2
    return-void
.end method

.method private removeSession(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method private startDrmProvision(Landroid/media/MediaDrm$ProvisionRequest;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 495
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmProvisionPending:Z

    .line 496
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$7;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$7;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;-><init>([BLcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;)V

    .line 511
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 512
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll(Z)V

    .line 294
    return-void
.end method

.method public getDrmSession(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
    .locals 6

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->purgeStaleSessions()V

    .line 212
    if-eqz p2, :cond_2

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 214
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getLicenseContext()Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->isClosedOrError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-object v0

    .line 218
    :cond_0
    if-eqz v0, :cond_1

    .line 220
    const-string/jumbo v2, "NfPlayerDrmManager"

    const-string/jumbo v3, "%d has cached drm session %s this manifest %s"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v5, 0x1

    .line 221
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getLicenseContext()Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "for"

    :goto_1
    aput-object v1, v4, v5

    const/4 v1, 0x2

    .line 222
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->isClosedOrError()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ", already closed."

    :goto_2
    aput-object v0, v4, v1

    .line 220
    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->removeSession(Ljava/lang/Long;)V

    .line 226
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->purgeCachedSessions(I)V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    .line 230
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 229
    invoke-static {v0, v1, v2, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->newWidevineDrmSession(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    goto :goto_0

    .line 221
    :cond_3
    const-string/jumbo v1, "not for"

    goto :goto_1

    .line 222
    :cond_4
    const-string/jumbo v0, "."

    goto :goto_2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method getDrmSessionWithSessionId([B)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 354
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionId()[B

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 3

    .prologue
    .line 364
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 365
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 367
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_KEY_EXPIRED - error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 371
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_KEY_REQUIRED - to renew"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 386
    :cond_1
    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    .line 388
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_SESSION_RECLAIMED."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 399
    :cond_2
    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    .line 401
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_VENDOR_DEFINED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 404
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_PROVISION_REQUIRED -  shouldn\'t happen, will handle later."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_4
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_UNKNOWN"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onManifestAvailable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 6

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v2

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 464
    new-instance v3, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    .line 465
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLicenseLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLdlLicenseLink()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V

    .line 468
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->getDrmSession(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 470
    :goto_1
    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/Triple;

    .line 472
    iget-object v1, v0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onManifestError(Ljava/lang/Long;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onUiHidden()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll(Z)V

    .line 347
    return-void
.end method

.method public prepare(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDisableLicensePreftech:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll(Z)V

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 342
    :cond_0
    return-void
.end method
