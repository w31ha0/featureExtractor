.class public Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
.super Ljava/lang/Object;
.source "PdsDownloadSession.java"


# static fields
.field private static final PROGRESS_PERCENT_INTERVAL:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private DOWNLOAD_MSG_TYPE_CANCEL:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_COMPLETE:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_PAUSE:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_PROGRESS:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_RESUME:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_START:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_STOP_ERROR:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_STOP_MANIFEST_EXPIRED:Ljava/lang/String;

.field private DOWNLOAD_MSG_TYPE_STOP_REJECTED_LICENSE:Ljava/lang/String;

.field private isManifestFetchInProgress:Z

.field private isPaused:Z

.field private lastNotifiedProgressPercentage:I

.field private mAppSessionId:Ljava/lang/String;

.field private mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

.field private mDxId:Ljava/lang/String;

.field private mLinkEvents:Lorg/json/JSONObject;

.field private mOxId:Ljava/lang/String;

.field private mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

.field private mPercentageDownloaded:I

.field private mPlayableId:Ljava/lang/String;

.field private mUserSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "startDownload"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_START:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "pauseDownload"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_PAUSE:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "resumeDownload"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_RESUME:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "completeDownload"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_COMPLETE:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "cancelDownload"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_CANCEL:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "reportProgress"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_PROGRESS:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "stopDownloadDueToRejectedLicense"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_STOP_REJECTED_LICENSE:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "stopDownloadDueToExpiredManifest"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_STOP_MANIFEST_EXPIRED:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "stopDownloadDueToError"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_STOP_ERROR:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPlayableId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mOxId:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mDxId:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mAppSessionId:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mUserSessionId:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    .line 67
    return-void
.end method

.method private areLinksPresent()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildDownloadEvent(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mAppSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mUserSessionId:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPercentageDownloaded:I

    .line 192
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;->setProgressPercentage(I)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    .line 193
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;->setDownloadContext(Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;

    move-result-object v0

    .line 191
    return-object v0
.end method

.method private sendEventForLink(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sending pds download event: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->buildDownloadEvent(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendPdsEventViaLogging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPdsEventViaLogging(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->sendPdsEventViaLogging(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method private sendStopDownloadEventForLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setPaused(Z)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->buildDownloadEvent(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;->setErrorInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendPdsEventViaLogging(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    goto :goto_0
.end method

.method private shouldRateLimitProgressMessage()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPercentageDownloaded:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPercentageDownloaded:I

    iget v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->lastNotifiedProgressPercentage:I

    add-int/lit8 v3, v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 205
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPercentageDownloaded:I

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->lastNotifiedProgressPercentage:I

    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 208
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rate limited progress message percentage: %d, lastNotifiedProgressPercentage: %d, interval: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPercentageDownloaded:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->lastNotifiedProgressPercentage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getDxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mDxId:Ljava/lang/String;

    return-object v0
.end method

.method public getOxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mOxId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPlayableId:Ljava/lang/String;

    return-object v0
.end method

.method public isManifestFetchInProgress()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isManifestFetchInProgress:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isPaused:Z

    return v0
.end method

.method public needToFetchManifest()Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->areLinksPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isManifestFetchInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDownloadCompleteMessage()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_COMPLETE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendEventForLink(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    .line 99
    return-void
.end method

.method public sendDownloadPauseMessage()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_PAUSE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendEventForLink(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public sendDownloadProgressMessage(I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iput p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPercentageDownloaded:I

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->shouldRateLimitProgressMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_PROGRESS:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->buildDownloadEvent(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadEventParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendPdsEventViaLogging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendDownloadResumeMessage()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_RESUME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendEventForLink(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public sendStartDownloadMessage()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_START:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendEventForLink(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public sendStopDownloadOnCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadEventForLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public sendStopDownloadOnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_STOP_ERROR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadEventForLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public sendStopDownloadOnExpiredManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_STOP_MANIFEST_EXPIRED:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadEventForLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public sendStopDownloadOnLicenseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->DOWNLOAD_MSG_TYPE_STOP_REJECTED_LICENSE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->sendStopDownloadEventForLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setDownloadContext(Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    .line 87
    return-object p0
.end method

.method public setLinks(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;
    .locals 1

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-object p0

    .line 78
    :cond_0
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public setManifestFetchInProgress(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isManifestFetchInProgress:Z

    .line 167
    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isPaused:Z

    .line 232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PdsDownloadSession{mPdsLogging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastNotifiedProgressPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->lastNotifiedProgressPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayableId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOxId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mOxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDxId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mDxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppSessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mAppSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUserSessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mUserSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->mLinkEvents:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isManifestFetchInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isManifestFetchInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->isPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
