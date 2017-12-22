.class public Lcom/netflix/mediaclient/service/mdx/MdxSharedState;
.super Ljava/lang/Object;
.source "MdxSharedState.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;


# static fields
.field private static final INVALID_TIME:J = -0x1L

.field private static final INVALID_VOLUME:I = -0x1

.field private static final MDX_PLAYBACK_STATE_NAME:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowVolume:Z

.field private mHasActivePlayback:Z

.field private mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

.field private mPostplay:Ljava/lang/String;

.field private mReportedPlaybackPositionInMs:J

.field private mTimePositionReorptedInMs:J

.field private mUuid:Ljava/lang/String;

.field private mVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->MDX_PLAYBACK_STATE_NAME:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Stopped:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mUuid:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mHasActivePlayback:Z

    .line 128
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Stopped:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    .line 131
    return-void
.end method


# virtual methods
.method public declared-synchronized getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPlaybackPositionInMs()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 59
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mHasActivePlayback:Z

    if-eqz v2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Playing:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    if-ne v0, v1, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mTimePositionReorptedInMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    .line 66
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 63
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPostplayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPostplay:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentVolume()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    return v0
.end method

.method getTargetUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hasActivePlayback()Z
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mHasActivePlayback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVolumeEnabled()Z
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mAllowVolume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyPlayCommandReceived()V
    .locals 4

    .prologue
    .line 71
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Loading:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 72
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->MDX_PLAYBACK_STATE_NAME:Ljava/util/Map;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", volume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method notifyPlaybackEnd()V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->reset()V

    .line 84
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->MDX_PLAYBACK_STATE_NAME:Ljava/util/Map;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", volume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method notifyPlaybackStart()V
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mHasActivePlayback:Z

    .line 77
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Playing:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->resetPostplayState()V

    .line 79
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->MDX_PLAYBACK_STATE_NAME:Ljava/util/Map;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", volume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method notifyPlaybackState(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 96
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mTimePositionReorptedInMs:J

    .line 98
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    .line 100
    const-string/jumbo v0, "prepause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "preplay"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "preseek"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->resetPostplayState()V

    .line 120
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->MDX_PLAYBACK_STATE_NAME:Ljava/util/Map;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mReportedPlaybackPositionInMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", volume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 105
    :cond_1
    const-string/jumbo v0, "PROGRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->resetPostplayState()V

    .line 110
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    goto :goto_0

    .line 111
    :cond_2
    const-string/jumbo v0, "PLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PLAYING"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Playing:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->resetPostplayState()V

    goto :goto_0

    .line 115
    :cond_4
    const-string/jumbo v0, "PAUSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Paused:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    goto :goto_0

    .line 118
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Stopped:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPlaybackState:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    goto :goto_0
.end method

.method notifyPostplayState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPostplay:Ljava/lang/String;

    .line 125
    return-void
.end method

.method notifyTargetCapability(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isVolumeControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mAllowVolume:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ignore capability data "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public resetPostplayState()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->mPostplay:Ljava/lang/String;

    .line 135
    return-void
.end method
