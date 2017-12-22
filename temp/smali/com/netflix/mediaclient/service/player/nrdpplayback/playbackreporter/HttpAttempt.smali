.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;
.super Ljava/lang/Object;
.source "HttpAttempt.java"


# instance fields
.field mBrecv:I

.field mErrorCode:I

.field mHrecv:I

.field mHttpCode:I

.field mLocation:Ljava/lang/String;

.field mOpenRange:Z

.field mOriginalUrl:Ljava/lang/String;

.field mPipelined:Z

.field mServerTcpInfo:Ljava/lang/String;

.field mTcomp:J

.field mTcpId:I

.field mTinterval:I

.field mTreq:J

.field mTresp:J

.field mTtrace:J

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHttpAttempt(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 35
    .line 36
    const-string/jumbo v1, "newHttpAttempt"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;-><init>()V

    .line 41
    const-string/jumbo v2, "mBrecv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mBrecv:I

    .line 42
    const-string/jumbo v2, "mErrorCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mErrorCode:I

    .line 43
    const-string/jumbo v2, "mHrecv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mHrecv:I

    .line 44
    const-string/jumbo v2, "mLocation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mLocation:Ljava/lang/String;

    .line 45
    const-string/jumbo v2, "mOpenRange"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mOpenRange:Z

    .line 46
    const-string/jumbo v2, "mPipelined"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mPipelined:Z

    .line 47
    const-string/jumbo v2, "mServerTcpInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mServerTcpInfo:Ljava/lang/String;

    .line 48
    const-string/jumbo v2, "mTcomp"

    invoke-static {v1, v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTcomp:J

    .line 50
    const-string/jumbo v2, "mTcpId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTcpId:I

    .line 51
    const-string/jumbo v2, "mTinterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTinterval:I

    .line 52
    const-string/jumbo v2, "mTresp"

    invoke-static {v1, v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTresp:J

    .line 53
    const-string/jumbo v2, "mTreq"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTreq:J

    .line 54
    const-string/jumbo v2, "mUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mUrl:Ljava/lang/String;

    .line 55
    const-string/jumbo v2, "mHttpCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mHttpCode:I

    .line 59
    :cond_0
    return-object v0
.end method
