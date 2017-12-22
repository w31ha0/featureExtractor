.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;
.super Ljava/lang/Object;
.source "OfflineLicenseResponse.java"


# static fields
.field private static LINK_ACTIVATE:Ljava/lang/String;

.field private static LINK_ACTIVATE_AND_REFRESH:Ljava/lang/String;

.field private static LINK_COMPLETE_AND_DOWNLOAD:Ljava/lang/String;

.field private static LINK_DEACTIVATE:Ljava/lang/String;

.field public static LINK_REFRESH:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private licenseData:[B

.field private mAllocationsRemaining:I

.field private mExpirationTimeInMs:J

.field private mKeySetId:[B

.field private mLimitationType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

.field public mLinkActivate:Ljava/lang/String;

.field public mLinkDeactivate:Ljava/lang/String;

.field public mLinkDownloadAndActivate:Ljava/lang/String;

.field public mLinkRefresh:Ljava/lang/String;

.field private mPlayWindowResetLimit:J

.field private mPlayableWindowInHour:J

.field private mPlayableWindowInMs:J

.field private mPwResettable:Z

.field private mRefreshLicenseTimeStamp:J

.field private mShouldRefresh:Z

.field private mShouldRefreshByTimestamp:Z

.field private mShouldUsePlayWindowLimits:Z

.field private mViewingWindow:J

.field public mYearlyLimitExpiryDateMillis:J

.field private providerSessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "bladerunnerOfflineLicenseResponse"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->TAG:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "completeDownloadAndActivate"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_COMPLETE_AND_DOWNLOAD:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "activateAndRefresh"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_ACTIVATE_AND_REFRESH:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "activate"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_ACTIVATE:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "deactivate"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_DEACTIVATE:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "refresh"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_REFRESH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->parseOfflineParams(Lorg/json/JSONObject;)V

    .line 78
    return-void
.end method

.method public static getLink(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPlayableWindowInMs()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInMs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInHour:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInHour:J

    .line 160
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private parseOfflineParams(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string/jumbo v0, "providerSessionToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->providerSessionToken:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "licenseResponseBase64"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->licenseData:[B

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing license response end."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string/jumbo v0, "absoluteExpirationTimeMillis"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mExpirationTimeInMs:J

    .line 96
    const-string/jumbo v0, "viewingWindowExpiration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mViewingWindow:J

    .line 97
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mViewingWindow:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 98
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mViewingWindow:J

    .line 100
    :cond_2
    const-string/jumbo v0, "playbackLimitations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    const-string/jumbo v1, "APPLYPLAYWINDOW"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldUsePlayWindowLimits:Z

    .line 103
    const-string/jumbo v1, "PLAYWINDOWHOURS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInHour:J

    .line 104
    const-string/jumbo v1, "PLAYWINDOWMILLIS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInMs:J

    .line 105
    const-string/jumbo v1, "ALLOWPLAYWINDOWRESET"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPwResettable:Z

    .line 106
    const-string/jumbo v1, "PLAYWINDOWRESETLIMIT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayWindowResetLimit:J

    .line 107
    const-string/jumbo v1, "ALLOWAUTOLICENSEREFRESH"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldRefresh:Z

    .line 108
    const-string/jumbo v1, "APPLYLICENSEREFRESHLIMIT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldRefreshByTimestamp:Z

    .line 109
    const-string/jumbo v1, "REFRESHLICENSETIMESTAMP"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mRefreshLicenseTimeStamp:J

    .line 110
    const-string/jumbo v1, "YEARLYLIMITATIONTYPE"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLimitationType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    .line 111
    const-string/jumbo v1, "YEARLYLIMITEXPIRYDATEMILLIS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mYearlyLimitExpiryDateMillis:J

    .line 112
    const-string/jumbo v1, "ALLOCATIONSREMAINING"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mAllocationsRemaining:I

    .line 114
    :cond_3
    const-string/jumbo v0, "links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_ACTIVATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLink(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkActivate:Ljava/lang/String;

    .line 117
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_DEACTIVATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLink(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkDeactivate:Ljava/lang/String;

    .line 118
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_COMPLETE_AND_DOWNLOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLink(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkDownloadAndActivate:Ljava/lang/String;

    .line 119
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->LINK_ACTIVATE_AND_REFRESH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getLink(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkRefresh:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getLicenseData()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->licenseData:[B

    return-object v0
.end method

.method public populateLicenseData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)V
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mExpirationTimeInMs:J

    iput-wide v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mExpirationTimeInMs:J

    .line 143
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mViewingWindow:J

    iput-wide v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mViewingWindow:J

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mKeySetId:[B

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->keySetIdToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mKeySetId:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->getPlayableWindowInMs()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayableWindowInMs:J

    .line 146
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPwResettable:Z

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPwResettable:Z

    .line 147
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldRefresh:Z

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldRefresh:Z

    .line 148
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayWindowResetLimit:J

    iput-wide v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    .line 149
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mRefreshLicenseTimeStamp:J

    iput-wide v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mRefreshLicenseTimestamp:J

    .line 150
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldUsePlayWindowLimits:Z

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    .line 151
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldRefreshByTimestamp:Z

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldRefreshByTimestamp:Z

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkDeactivate:Ljava/lang/String;

    iput-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkDeactivate:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkDownloadAndActivate:Ljava/lang/String;

    iput-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkDownloadAndActivate:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkRefresh:Ljava/lang/String;

    iput-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkRefresh:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setKeySetId([B)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mKeySetId:[B

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OfflineLicenseResponse{mExpirationTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mExpirationTimeInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayableWindowInHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInHour:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayableWindowInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayableWindowInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayWindowResetLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPlayWindowResetLimit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRefreshLicenseTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mRefreshLicenseTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLimitationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLimitationType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAllocationsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mAllocationsRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mYearlyLimitExpiryDateMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mYearlyLimitExpiryDateMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mShouldUsePlayWindowLimits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldUsePlayWindowLimits:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPwResettable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mPwResettable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mShouldRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mShouldRefreshByTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mShouldRefreshByTimestamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mViewingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mViewingWindow:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mKeySetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mKeySetId:[B

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkActivate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkActivate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkDownloadAndActivate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkDownloadAndActivate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkDeactivate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkDeactivate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkRefresh=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLinkRefresh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", providerSessionToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->providerSessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0
.end method

.method public willTiggerYearlyLimit()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 164
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->License:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLimitationType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->Download:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mLimitationType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mAllocationsRemaining:I

    if-ne v1, v0, :cond_1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->mYearlyLimitExpiryDateMillis:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
