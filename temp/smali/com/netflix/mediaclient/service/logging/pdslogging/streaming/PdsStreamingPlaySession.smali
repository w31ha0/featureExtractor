.class public Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;
.super Ljava/lang/Object;
.source "PdsStreamingPlaySession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;


# static fields
.field private static final KEEP_ALIVE_DELAY:I = 0xea60

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private DUMP_PDS_MESSAGES:Z

.field private NULL_TIME_MS:J

.field private appSessionId:Ljava/lang/String;

.field private final keepAliveEveryMinute:Ljava/lang/Runnable;

.field private mBookmarkInterface:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;

.field private mContext:Landroid/content/Context;

.field private mLastPtsTimeMs:J

.field private mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

.field private mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

.field private mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

.field private mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

.field private mSendResumeOnNextPts:Z

.field private mSessionParams:Lorg/json/JSONObject;

.field private mSessionStartEpoch:J

.field private mStartPosition:J

.field private mTrackId:I

.field private mWorkHandler:Landroid/os/Handler;

.field private userSessionId:Ljava/lang/String;

.field private xid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;Landroid/os/Handler;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->DUMP_PDS_MESSAGES:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->NULL_TIME_MS:J

    .line 340
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->keepAliveEveryMinute:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->xid:J

    .line 70
    iput-object p8, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    .line 71
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mStartPosition:J

    .line 72
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->appSessionId:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->userSessionId:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->transformUiPlayContext(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mSessionParams:Lorg/json/JSONObject;

    .line 75
    iput-object p9, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mWorkHandler:Landroid/os/Handler;

    .line 76
    invoke-interface {p10}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mTrackId:I

    .line 77
    iput-object p11, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mBookmarkInterface:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    .line 79
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PdsStreamingPlaySession created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendKeepAlive()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->repostOnTimerExpiry(I)V

    return-void
.end method

.method private buildAndSendKeepAlive()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mBookmarkInterface:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;->getCurrentBookmarkPositionMs()J

    move-result-wide v0

    .line 334
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->KEEP_ALIVE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    .line 335
    return-void
.end method

.method private buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->sendPdsEvent(Lorg/json/JSONObject;)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    .line 141
    :cond_0
    return-void
.end method

.method private buildBasePdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)Lorg/json/JSONObject;
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 255
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->now()J

    move-result-wide v0

    .line 258
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getEventsLink()Lorg/json/JSONObject;

    move-result-object v3

    .line 259
    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v4, "url"

    const-string/jumbo v5, "href"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 263
    const-string/jumbo v4, "event"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v4, "xid"

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->xid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string/jumbo v4, "clientTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string/jumbo v4, "position"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string/jumbo v4, "sessionStartTime"

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mSessionStartEpoch:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    if-ne p1, v4, :cond_0

    .line 271
    const-string/jumbo v4, "sessionEndTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    :cond_0
    const-string/jumbo v0, "trackId"

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mTrackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string/jumbo v0, "sessionId"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->userSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string/jumbo v0, "appId"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->appSessionId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    if-ne p1, v0, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->getManifestDefaultMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->insertMediaIdIntoMessage(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 283
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    if-eq v0, p1, :cond_2

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 285
    :goto_1
    const-string/jumbo v1, "playTimes"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_2
    const-string/jumbo v0, "sessionParams"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mSessionParams:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string/jumbo v0, "params"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_2
    sget-object v3, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "event: %s, bookmark: %d, totalDuration:%d "

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 295
    return-object v2

    .line 279
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->insertMediaIdIntoMessage(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "error building basePdsEvent, %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v8

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 284
    :cond_4
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getTotalPlayTime()J

    move-result-wide v0

    goto :goto_3
.end method

.method private buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildPdsEvent %s, bookmarkInMs(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$2;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$IBladeRunnerClient$PdsEventType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unexpected eventType, %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 249
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildBasePdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 250
    return-object v0

    .line 236
    :pswitch_1
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mSessionStartEpoch:J

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private didAudioOrTextChange(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    .line 420
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$2;->$SwitchMap$com$netflix$mediaclient$service$logging$pdslogging$streaming$IPdsPlayTimes$StreamType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 432
    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "didAudioOrTextChange : %b, %s (%s), %s, %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    const/4 v1, 0x2

    aput-object p2, v5, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentAudioMediaId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentSubtitleMediaId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    return v0

    .line 422
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentAudioMediaId()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 426
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentSubtitleMediaId()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadId(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getTrackIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getStreamIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getDownloadId(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMediaId(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getTrackIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getMediaId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStreamType(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;
    .locals 4

    .prologue
    .line 441
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getStreamType event: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 442
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->getTrackIndex()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getNumVideoTracks()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->VIDEO:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->AUDIO:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    goto :goto_0
.end method

.method private insertMediaIdIntoMessage(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->isMediaIdInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertMediaIdIntoMessage %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    const-string/jumbo v0, "mediaId"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "error while inserting mediaId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyOthersOfSpliceEvent()V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_AUDIO_SUBTITLE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 449
    return-void
.end method

.method private repostOnTimerExpiry(I)V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->keepAliveEveryMinute:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->keepAliveEveryMinute:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    return-void
.end method

.method private startKeepAliveTimer()V
    .locals 4

    .prologue
    .line 364
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Start timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->keepAliveEveryMinute:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    return-void
.end method

.method private stopKeepAliveTimer()V
    .locals 2

    .prologue
    .line 359
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Stop timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->keepAliveEveryMinute:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method private transformUiPlayContext(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 314
    if-nez p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object p1

    .line 318
    :cond_1
    const-string/jumbo v0, "uiplaycontext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    const-string/jumbo v0, "uiplaycontext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "uiplaycontext"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error transformingUiPlayContext"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public close(J)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    .line 217
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    .line 218
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->stopKeepAliveTimer()V

    .line 219
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    .line 221
    :cond_0
    return-void
.end method

.method public collectManifestInfo(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getDefaultSubtitleMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->setDefaultSubtitleMediaId(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "got manifest info"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getManifestDefaultMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getDefaultMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pause(J)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    .line 147
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignoring pause in wrong state : %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->PAUSED:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    .line 155
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mLastPtsTimeMs:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->NULL_TIME_MS:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mLastPtsTimeMs:J

    sub-long/2addr v0, v2

    .line 157
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->NULL_TIME_MS:J

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mLastPtsTimeMs:J

    .line 158
    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "incrementing bookmarkInMs: %d by %d, new: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    add-long v6, p1, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    add-long/2addr p1, v0

    .line 162
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->stopTicker(J)V

    .line 163
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->PAUSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    goto :goto_0
.end method

.method public play(J)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-ne v0, v1, :cond_1

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mLastPtsTimeMs:J

    .line 99
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    .line 100
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mStartPosition:J

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->startKeepAliveTimer()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->PAUSED:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-ne v0, v1, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mSendResumeOnNextPts:Z

    goto :goto_0
.end method

.method public resume(J)V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    .line 170
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->RESUME:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    .line 171
    return-void
.end method

.method public sendPdsEvent(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->sendPdsEventViaLogging(Ljava/lang/String;)V

    .line 382
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->DUMP_PDS_MESSAGES:Z

    if-eqz v1, :cond_0

    .line 383
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "streaming pdsEvent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 386
    :cond_0
    return-void
.end method

.method public stop(J)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-ne v0, v1, :cond_1

    .line 177
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignoring stop, already sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->stopTicker(J)V

    .line 182
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    .line 183
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->stopKeepAliveTimer()V

    goto :goto_0
.end method

.method public stopTicker(J)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->stopTicker(J)V

    .line 403
    :cond_0
    return-void
.end method

.method public streamPresentingEvent(JLcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "streamPresentEvent: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "drop streamPresentEvent because manifest is null, xid: %d %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->getStreamType(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    move-result-object v0

    .line 121
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->getMediaId(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)Ljava/lang/String;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "streamChanged: type: %s, %s, mediaId: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object p3, v4, v7

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->didAudioOrTextChange(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)Z

    move-result v2

    .line 125
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->getDownloadId(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->streamChanged(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->isMediaIdInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sending mediaId for %s (%s)"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->SPLICE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mBookmarkInterface:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;->getCurrentBookmarkPositionMs()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    .line 130
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->notifyOthersOfSpliceEvent()V

    goto :goto_0
.end method

.method public subtitleChanged(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "subtitleChanged xid:%d, downloadId: %s, mediaId: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    aput-object p4, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    invoke-static {p4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->subtitleVisibilityChanged(Z)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->TIMED_TEXT:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-direct {p0, v0, p4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->didAudioOrTextChange(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)Z

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->TIMED_TEXT:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-virtual {v2, v3, p3, p4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->streamChanged(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPdsManifestData:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->isMediaIdInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sending mediaId for %s (%s)"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->SPLICE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mBookmarkInterface:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;->getCurrentBookmarkPositionMs()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->buildAndSendPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;J)V

    goto :goto_0
.end method

.method public subtitleVisibilityChanged(JZ)V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->subtitleVisibilityChanged(Z)V

    .line 209
    return-void
.end method

.method public subtitleVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->subtitleVisibilityChanged(Z)V

    .line 409
    :cond_0
    return-void
.end method

.method public updatePts(J)V
    .locals 5

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->updateTicker(J)V

    .line 226
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePts bookmarkInMs: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mLastPtsTimeMs:J

    .line 229
    return-void
.end method

.method public updateTicker(J)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    if-eqz v0, :cond_1

    .line 390
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mSendResumeOnNextPts:Z

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mSendResumeOnNextPts:Z

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->resume(J)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->mPlayTimes:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateTicker(J)V

    .line 396
    :cond_1
    return-void
.end method
