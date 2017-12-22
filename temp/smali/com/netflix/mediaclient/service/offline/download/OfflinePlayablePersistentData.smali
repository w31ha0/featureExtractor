.class public Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;
.super Ljava/lang/Object;
.source "OfflinePlayablePersistentData.java"


# instance fields
.field public final mAudioDownloadablePersistentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioTracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field private transient mDlStateBeforeDelete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private mDlStateBeforeDeleteValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dlStateBeforeDelete"
    .end annotation
.end field

.field public final mDownloadContextInitTimeMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dcInitTimeMs"
    .end annotation
.end field

.field public final mDownloadContextListPos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcListPos"
    .end annotation
.end field

.field public final mDownloadContextRequestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dcRequestId"
    .end annotation
.end field

.field public final mDownloadContextTrackId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcTrackId"
    .end annotation
.end field

.field public final mDownloadContextVideoPos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcVideoPos"
    .end annotation
.end field

.field private transient mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private mDownloadStateValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadStateValue"
    .end annotation
.end field

.field private final mDownloadVideoQuality:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoQuality"
    .end annotation
.end field

.field public mDxId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dxId"
    .end annotation
.end field

.field public mErrorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field public mErrorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorString"
    .end annotation
.end field

.field private mGeoBlocked:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geoBlocked"
    .end annotation
.end field

.field public final mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "licenseData"
    .end annotation
.end field

.field private mManifestNetworkType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manifestNetworkType"
    .end annotation
.end field

.field public final mOxId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oxId"
    .end annotation
.end field

.field public mPlayStartTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playStartTime"
    .end annotation
.end field

.field public final mPlayableId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableId"
    .end annotation
.end field

.field private final mProfileGuidList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profileGuidList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private mStopReasonValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stopReasonValue"
    .end annotation
.end field

.field public final mSubtitleDownloadablePersistentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitleTracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public final mTrickPlayDownloadablePersistentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trickPlays"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public final mVideoDownloadablePersistentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoTracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field private mWiFiSsidOrNetworkOperatorName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manifestNetworkName"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mProfileGuidList:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    .line 116
    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextTrackId:I

    .line 117
    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextVideoPos:I

    .line 118
    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextListPos:I

    .line 119
    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextRequestId:Ljava/lang/String;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextInitTimeMs:J

    .line 122
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mProfileGuidList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadVideoQuality:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    .line 130
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReasonValue:I

    .line 132
    return-void
.end method

.method public static createOfflineContentPersistentData(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;
    .locals 6

    .prologue
    .line 141
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setDownloadState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 224
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadStateValue:I

    .line 225
    return-void
.end method

.method private setStopReason(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 229
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReasonValue:I

    .line 230
    return-void
.end method


# virtual methods
.method public getDlStateBeforeDelete()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDlStateBeforeDelete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v0, :cond_0

    .line 258
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDlStateBeforeDeleteValue:I

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->getStateByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDlStateBeforeDelete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDlStateBeforeDelete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object v0
.end method

.method public getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v0, :cond_0

    .line 238
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadStateValue:I

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->getStateByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-nez v0, :cond_0

    .line 241
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReasonValue:I

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getStopReasonByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Deleted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mKeySetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->DeleteComplete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object v0
.end method

.method public getDownloadVideoQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadVideoQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestNetworkType()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mManifestNetworkType:I

    return v0
.end method

.method public getProfileGuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mProfileGuidList:Ljava/util/List;

    return-object v0
.end method

.method public getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReason:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 267
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    goto :goto_0
.end method

.method public getWiFiSsidOrNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mWiFiSsidOrNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public isGeoBlocked()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mGeoBlocked:Z

    return v0
.end method

.method public isOldFatalError()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextInitTimeMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReasonValue:I

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mStopReasonValue:I

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 305
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorCode:I

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    .line 306
    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 307
    goto :goto_0

    .line 311
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextInitTimeMs:J

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3c

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextInitTimeMs:J

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x16d

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 314
    goto :goto_0
.end method

.method public resetPersistentStatus()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorCode:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorString:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCreateFailedState()V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 220
    return-void
.end method

.method public setDownloadStateComplete()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 196
    return-void
.end method

.method public setDownloadStateDeleteComplete()V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->DeleteComplete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 211
    return-void
.end method

.method public setDownloadStateDeleted()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadState:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDlStateBeforeDelete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDlStateBeforeDelete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDlStateBeforeDeleteValue:I

    .line 206
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Deleted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 207
    return-void
.end method

.method public setDownloadStateInProgress()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    .line 201
    return-void
.end method

.method public setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setStopReason(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 216
    return-void
.end method

.method public setGeoBlocked(Z)V
    .locals 0

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mGeoBlocked:Z

    .line 234
    return-void
.end method

.method public setManifestNetworkType(I)V
    .locals 0

    .prologue
    .line 279
    iput p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mManifestNetworkType:I

    .line 280
    return-void
.end method

.method public setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 101
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorCode:I

    .line 102
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorString:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setWarningStatus(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 147
    return-void
.end method

.method public setWiFiSsidOrNetworkOperatorName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mWiFiSsidOrNetworkOperatorName:Ljava/lang/String;

    .line 292
    return-void
.end method
