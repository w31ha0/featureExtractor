.class Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;
.super Ljava/lang/Object;
.source "PlayerStateManager.java"


# static fields
.field private static final DUPLICATE_MESSAGE_REQUEST_WINDOWS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "MdxTargetPlayerState"

.field private static final TIMEOUT_WAITING_FOR_STATE_CHANGE:J = 0x7530L

.field private static final TIME_WINDOW_IGNORE_VOLUME:J = 0xbb8L


# instance fields
.field private mAudioSubtitleSettingBlob:Ljava/lang/String;

.field private mCurrentState:Ljava/lang/String;

.field private mExpectedVolume:I

.field private final mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

.field private mPostplayStateBlob:Ljava/lang/String;

.field private mPreviousAudioSubExchangeTime:J

.field private mTargetPlaybackSessionToken:Ljava/lang/String;

.field private mTargetStateTransitionStarted:Z

.field private mTime:I

.field private mTimeMarked4StateTransition:J

.field private mTimeSetVolume:J

.field private final mUuid:Ljava/lang/String;

.field private mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

.field private mVolume:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    .line 27
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 32
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 38
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPreviousAudioSubExchangeTime:J

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    .line 41
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "PlayerStateManager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    .line 43
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private invalidateCachedLanguageData()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPreviousAudioSubExchangeTime:J

    .line 265
    return-void
.end method

.method private notifyStateAndMetaDataIfNeeded(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 220
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: PlayerStateManager notify state %s, volume = %d, , time = %d."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 221
    const-string/jumbo v0, "END_PLAYBACK"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FATAL_ERROR"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getEpisodeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getDuration()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->movieMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 226
    return-void
.end method

.method private playbackEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: playbackEnd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->reset(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->playbackEnd(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method private playbackStart(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: playbackStart"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->invalidateCachedLanguageData()V

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->playbackStart(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private processStateAndNotifyPostPlayIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 194
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getXid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetPlaybackSessionToken:Ljava/lang/String;

    .line 195
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getPostplayState()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v1, p1, v0}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->postplayState(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    .line 202
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getTime()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeSetVolume:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 204
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getVolume()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    .line 209
    :goto_0
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: processStateAndNotifyPostPlayIfNeeded %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    const-string/jumbo v0, "END_PLAYBACK"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getCurrentState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v6, v6, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->reset(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    :cond_1
    :goto_1
    return-void

    .line 206
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mExpectedVolume:I

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    .line 207
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: PlayerStateManager overide volume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getCatalogId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    .line 214
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    .line 215
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getDuration()I

    move-result v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getCatalogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->reset(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method changeState(Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getCurrentState()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const-string/jumbo v1, "MdxTargetPlayerState"

    const-string/jumbo v2, "TargetContext: changeState %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getCurrentState()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->processStateAndNotifyPostPlayIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;)V

    .line 72
    const-string/jumbo v1, "PLAYING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "PAUSE"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "prepause"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "preseek"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "PLAYING"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->playbackStart(Ljava/lang/String;)V

    .line 81
    :cond_2
    :goto_1
    const-string/jumbo v1, "PLAYING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    invoke-interface {v1, v2, v6, v6, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 87
    :cond_3
    :goto_2
    const-string/jumbo v1, "PLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    const-string/jumbo v3, "preplay"

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 91
    :cond_4
    const-string/jumbo v1, "PROGRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "PLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 92
    :cond_5
    iput-boolean v7, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 99
    :cond_6
    :goto_3
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: PlayerStateManager state changed to %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 76
    :cond_7
    const-string/jumbo v1, "STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "END_PLAYBACK"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "FATAL_ERROR"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_9
    const-string/jumbo v1, "PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    invoke-interface {v1, v2, v7, v6, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_2

    .line 94
    :cond_a
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    if-eqz v1, :cond_6

    .line 95
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->notifyStateAndMetaDataIfNeeded(Ljava/lang/String;)V

    goto :goto_3
.end method

.method getTargetPlaybackSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetPlaybackSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    return-object v0
.end method

.method hasActiveplayback()Z
    .locals 2

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "STOP"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FATAL_ERROR"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "END_PLAYBACK"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    monitor-exit p0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method receivedCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageName()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "PLAYER_PLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 153
    const-string/jumbo v0, "preplay"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 154
    iput v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    .line 155
    iput v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v0, v4, v4, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->reset(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 187
    :cond_0
    :goto_1
    return-void

    .line 159
    :cond_1
    const-string/jumbo v1, "PLAYER_RESUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 161
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 162
    const-string/jumbo v0, "preplay"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    const-string/jumbo v1, "PLAYER_PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 166
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 167
    const-string/jumbo v0, "prepause"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    const-string/jumbo v1, "PLAYER_SKIP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "PLAYER_SET_CURRENT_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 171
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 172
    const-string/jumbo v0, "preseek"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_5
    const-string/jumbo v1, "PLAYER_GET_CURRENT_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->state(Ljava/lang/String;Ljava/lang/String;II)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->getDuration()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->movieMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 178
    :cond_6
    const-string/jumbo v1, "PLAYER_SET_VOLUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    check-cast p1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;

    .line 180
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;->getVolume()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mExpectedVolume:I

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeSetVolume:J

    goto/16 :goto_1
.end method

.method reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTime:I

    .line 48
    iput v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVolume:I

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mVideoInfo:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;

    invoke-virtual {v0, v1, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->reset(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    .line 51
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    .line 52
    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    .line 54
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPreviousAudioSubExchangeTime:J

    .line 55
    return-void
.end method

.method updateAudioSub(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 247
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPreviousAudioSubExchangeTime:J

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->audiosub(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method updateState(Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getCurrentState()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v4, "TargetContext: updateState %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;->getCurrentState()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->processStateAndNotifyPostPlayIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTimeMarked4StateTransition:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    .line 121
    :goto_1
    if-nez v0, :cond_6

    .line 122
    const-string/jumbo v0, "PLAYING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mTargetStateTransitionStarted:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 123
    :goto_2
    const-string/jumbo v4, "preplay"

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    .line 125
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: updateState, still in preplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 118
    goto :goto_1

    :cond_3
    move v0, v2

    .line 122
    goto :goto_2

    .line 127
    :cond_4
    const-string/jumbo v4, "prepause"

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "PAUSE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 129
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: updateState, still in prepause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_5
    const-string/jumbo v4, "preseek"

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 133
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "TargetContext: updateState, still in preseek"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :cond_6
    const-string/jumbo v0, "PLAYING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->playbackStart(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2, v4}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 145
    :cond_7
    :goto_3
    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->notifyStateAndMetaDataIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_8
    const-string/jumbo v0, "PAUSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->playbackStart(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPostplayStateBlob:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2, v5}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_3
.end method

.method useCachedAudioSub()Z
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->audiosub(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPreviousAudioSubExchangeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->mPreviousAudioSubExchangeTime:J

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method
