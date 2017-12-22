.class public Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;
.super Ljava/lang/Object;
.source "OfflineLicenseManagerImpl.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;
.implements Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;
.implements Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;


# static fields
.field private static final MAX_MEDIA_DRM_SESSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "nf_offlineLicenseMgr"


# instance fields
.field private final mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private final mContext:Landroid/content/Context;

.field private final mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final mMediaDrm:Landroid/media/MediaDrm;

.field private final mNewLicenseRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshLicenseRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mWorkHandler:Landroid/os/Handler;

    .line 54
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 55
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 56
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getNewMediaDrmInstance(Landroid/media/MediaDrm$OnEventListener;)Landroid/media/MediaDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mMediaDrm:Landroid/media/MediaDrm;

    .line 57
    return-void
.end method

.method private trySendingNextRequest()V
    .locals 5

    .prologue
    .line 186
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "trySendingNextRequest %d %d %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;

    .line 189
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->sendRequest()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    .line 194
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->sendRequest()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->sendRequest()V

    goto :goto_0
.end method


# virtual methods
.method public abortAllRequestsForPlayable(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abortAllRequestsForPlayable playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 131
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;

    .line 133
    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->abortRequestAndCloseMediaSession()V

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 141
    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->isDrmSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    .line 144
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    .line 147
    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->abortRequestAndCloseMediaSession()V

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->isDrmSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    .line 158
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    .line 161
    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 162
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->abortRequestAndCloseMediaSession()V

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 165
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->isDrmSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 171
    :cond_7
    const/4 v0, 0x1

    if-ge v1, v0, :cond_8

    .line 172
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "abortAllRequestsForPlayable drmSessionsOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->trySendingNextRequest()V

    .line 175
    :cond_8
    return-void

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public deleteLicense(Ljava/lang/String;[BZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V
    .locals 12

    .prologue
    .line 111
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteLicense playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mWorkHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p7

    move-object v5, p0

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;-><init>(Ljava/lang/String;[BZLcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->sendRequest()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "deleteLicense serializing the request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 182
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 4

    .prologue
    .line 206
    const-string/jumbo v0, "EVENT_UNKNOWN"

    .line 207
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 209
    const-string/jumbo v0, "EVENT_KEY_EXPIRED"

    .line 222
    :cond_0
    :goto_0
    const-string/jumbo v1, "nf_offlineLicenseMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 223
    return-void

    .line 210
    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 212
    const-string/jumbo v0, "EVENT_KEY_REQUIRED"

    goto :goto_0

    .line 213
    :cond_2
    const/4 v1, 0x5

    if-ne p3, v1, :cond_3

    .line 214
    const-string/jumbo v0, "EVENT_SESSION_RECLAIMED"

    goto :goto_0

    .line 215
    :cond_3
    const/4 v1, 0x4

    if-ne p3, v1, :cond_4

    .line 217
    const-string/jumbo v0, "EVENT_VENDOR_DEFINED"

    goto :goto_0

    .line 218
    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 220
    const-string/jumbo v0, "EVENT_PROVISION_REQUIRED"

    goto :goto_0
.end method

.method public onLicenseRequestDone(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 228
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "onLicenseRequestDone %s %s %d %d %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    instance-of v0, p1, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    .line 234
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    .line 237
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "onLicenseRequestDone removing from mRefreshLicenseRequestQueue"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 265
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mOxId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mDxId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendBladerunnerError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsLoggingUtils;->downloadStoppedOnLicenseError(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->trySendingNextRequest()V

    .line 270
    return-void

    .line 243
    :cond_3
    instance-of v0, p1, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    if-eqz v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    .line 245
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    .line 248
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "onLicenseRequestDone removing from mDeactivateOfflineLicenseRequestQueue"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 256
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;

    .line 258
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v2, "onLicenseRequestDone removing from mNewLicenseRequestQueue"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V
    .locals 13

    .prologue
    .line 88
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshLicense playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mWorkHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object v6, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Landroid/os/Handler;[BLjava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    .line 96
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->sendRequest()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "refreshLicense serializing the request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestNewLicense(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V
    .locals 11

    .prologue
    .line 67
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "requestNewLicense playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mWorkHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object v5, p0

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$OfflineLicenseRequestCallback;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/media/MediaDrm;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mRefreshLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mNewLicenseRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mDeactivateOfflineLicenseRequestQueue:Ljava/util/Queue;

    .line 73
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->sendRequest()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "requestNewLicense serializing the request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendSyncActiveLicensesToServer(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;-><init>(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->syncActiveLicensesToServer(Ljava/util/List;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 282
    return-void
.end method
