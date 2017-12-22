.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;
.super Ljava/lang/Object;
.source "ThroughputMonitor.java"


# instance fields
.field private mCdnId:Ljava/lang/String;

.field mDlStart:J

.field mDlStop:J

.field mDlbytes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mCdnId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method add(JJJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 22
    cmp-long v0, p3, v4

    if-lez v0, :cond_4

    cmp-long v0, p5, v4

    if-lez v0, :cond_4

    .line 23
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 24
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    .line 27
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    cmp-long v0, v0, p3

    if-gez v0, :cond_1

    .line 28
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    sub-long v2, p3, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    .line 31
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    cmp-long v0, v0, p5

    if-gez v0, :cond_3

    .line 32
    :cond_2
    iput-wide p5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    .line 34
    :cond_3
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlbytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlbytes:J

    .line 36
    :cond_4
    return-void
.end method

.method getAvtp()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 60
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlbytes:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    sub-long/2addr v2, v4

    div-long/2addr v0, v2

    .line 62
    :cond_0
    return-wide v0
.end method

.method getMap()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 42
    :try_start_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlbytes:J

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mCdnId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string/jumbo v0, "cdnid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mCdnId:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v0, "avtp"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v0, "tm"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    :cond_0
    :goto_0
    return-object v1

    .line 48
    :cond_1
    const-string/jumbo v0, "avtp"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v0, "tm"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStop:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->mDlStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
