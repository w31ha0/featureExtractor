.class public Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;
.super Ljava/lang/Object;
.source "OfflinePlayablePersistentData.java"


# instance fields
.field public mExpirationTimeInMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expirationTime"
    .end annotation
.end field

.field public mKeySetId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keySetId"
    .end annotation
.end field

.field public mLicenseDate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "licenseDate"
    .end annotation
.end field

.field public mLinkDeactivate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkDeactivate"
    .end annotation
.end field

.field public mLinkDownloadAndActivate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkDownloadAndActivate"
    .end annotation
.end field

.field public mLinkRefresh:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkRefresh"
    .end annotation
.end field

.field public mPlayWindowResetLimit:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playWindowResetLimit"
    .end annotation
.end field

.field private mPlayableWindowInHour:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableWindow"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mPlayableWindowInMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableWindowMs"
    .end annotation
.end field

.field public mPwResettable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resettable"
    .end annotation
.end field

.field public mRefreshLicenseTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refreshLicenseTimestamp"
    .end annotation
.end field

.field public mShouldRefresh:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldRefresh"
    .end annotation
.end field

.field public mShouldRefreshByTimestamp:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mShouldRefreshByTimestamp"
    .end annotation
.end field

.field public mShouldUsePlayWindowLimits:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldUsePlayWindowLimits"
    .end annotation
.end field

.field public mViewingWindow:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewingWindow"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayableWindowInMs()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 189
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayableWindowInMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayableWindowInMs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayableWindowInHour:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayableWindowInHour:J

    .line 190
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
