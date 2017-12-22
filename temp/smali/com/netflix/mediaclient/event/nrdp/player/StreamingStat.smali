.class public Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "StreamingStat.java"


# static fields
.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private mAudioStat:Lorg/json/JSONObject;

.field private mStat:Lorg/json/JSONArray;

.field private mVideoStat:Lorg/json/JSONObject;

.field private mlocation:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamingStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    return-void
.end method


# virtual methods
.method public gatherMediaStat()V
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mStat:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mStat:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 44
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 45
    iput-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mVideoStat:Lorg/json/JSONObject;

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 47
    iput-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mAudioStat:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    :cond_2
    return-void
.end method

.method public getUIDisplayString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mVideoStat:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mAudioStat:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    :try_start_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, "Playing Bitrate (a/v): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mAudioStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "playbackBitrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mVideoStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "playbackBitrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, "Buffering Bitrate (a/v): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mAudioStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "streamingBitrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mVideoStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "streamingBitrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "Buffer size in Bytes (KB) (a/v): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mAudioStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "usedMediaBuffer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mVideoStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "usedMediaBuffer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, "Buffer size in Seconds (s) (a/v): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mAudioStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "completeBuffer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mVideoStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "completeBuffer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "Loc: AvgConnectTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mlocation:Lorg/json/JSONObject;

    const-string/jumbo v3, "avgConnectTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Loc: Bandwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mlocation:Lorg/json/JSONObject;

    const-string/jumbo v3, "bandwidth"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Loc: Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mlocation:Lorg/json/JSONObject;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoBitrate()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mVideoStat:Lorg/json/JSONObject;

    const-string/jumbo v2, "streamingBitrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "stat"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mStat:Lorg/json/JSONArray;

    .line 35
    const-string/jumbo v0, "location"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->mlocation:Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->gatherMediaStat()V

    .line 37
    return-void
.end method
