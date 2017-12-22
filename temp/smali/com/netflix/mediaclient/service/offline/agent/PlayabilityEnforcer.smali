.class public Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;
.super Ljava/lang/Object;
.source "PlayabilityEnforcer.java"


# static fields
.field private static final PERSISTENT_INTERVAL:J

.field private static final REFRESH_LICENSE_AHEAD_MS:J = 0x337f9800L

.field private static final TAG:Ljava/lang/String; = "nf_PlayabilityEnforcer"

.field private static final lastContactNetflixTimeLock:Ljava/lang/Object;

.field private static lastContactNetflixTimeMS:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->PERSISTENT_INTERVAL:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeLock:Ljava/lang/Object;

    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeMS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forceResetPlayWindow(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 170
    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPwResettable:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    .line 172
    iput-wide v6, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    .line 173
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 177
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_PLAY_WINDOW_RENEW_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0
.end method

.method private static getLastContactNetflix(Landroid/content/Context;)J
    .locals 6

    .prologue
    .line 63
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-wide v2, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeMS:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "last_contact_netflix_ms"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeMS:J

    .line 72
    :cond_0
    sget-wide v2, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeMS:J

    monitor-exit v1

    return-wide v2

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static hasRecentHomingAndConnectivity(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 86
    invoke-static {p0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->getLastContactNetflix(Landroid/content/Context;)J

    move-result-wide v0

    .line 87
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x2

    sget-wide v4, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->PERSISTENT_INTERVAL:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllowedByPlayWindow(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const-wide/16 v8, 0x0

    .line 114
    iget-boolean v1, p2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    iget-wide v4, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    sub-long v4, v2, v4

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->getPlayableWindowInMs()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 126
    invoke-static {p0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->getLastContactNetflix(Landroid/content/Context;)J

    move-result-wide v4

    .line 127
    iget-boolean v1, p2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPwResettable:Z

    if-eqz v1, :cond_1

    iget-wide v6, p2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    sub-long/2addr v2, v4

    .line 128
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->getPlayableWindowInMs()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 129
    iget-wide v2, p2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    .line 130
    monitor-enter p1

    .line 131
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    .line 132
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const-string/jumbo v1, "nf_PlayabilityEnforcer"

    const-string/jumbo v2, "reset play window"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllowedByViewWindow(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mViewingWindow:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLicenseExpired(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mExpirationTimeInMs:J

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->now()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldRefreshLicense(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z
    .locals 6

    .prologue
    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->now()J

    move-result-wide v0

    .line 155
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldRefreshByTimestamp:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mRefreshLicenseTimestamp:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mExpirationTimeInMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mExpirationTimeInMs:J

    const-wide/32 v4, 0x337f9800

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateLastContactNetflix(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 46
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    sget-wide v4, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeMS:J

    sget-wide v6, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->PERSISTENT_INTERVAL:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 49
    const-string/jumbo v0, "last_contact_netflix_ms"

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 51
    sput-wide v2, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->lastContactNetflixTimeMS:J

    .line 56
    :cond_0
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
