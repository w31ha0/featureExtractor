.class public Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;
.super Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;
.source "ResumePlay.java"


# direct methods
.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 7

    .prologue
    .line 14
    move-object/from16 v0, p9

    invoke-direct {p0, p7, p8, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soff"

    const-wide/16 v4, 0x3e8

    div-long v4, p5, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    invoke-virtual {v2, v3, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p3, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 23
    invoke-static/range {p11 .. p11}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vdlid"

    move-object/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vBitrate"

    move-wide/from16 v0, p12

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    :cond_0
    invoke-static/range {p14 .. p14}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "adlid"

    move-object/from16 v0, p14

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abitrate"

    move-wide/from16 v0, p15

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "reason"

    move-object/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "resumeplay"

    return-object v0
.end method
