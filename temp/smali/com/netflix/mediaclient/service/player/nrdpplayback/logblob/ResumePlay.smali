.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "ResumePlay.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJJJJJJJJJJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 101
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p7, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    invoke-virtual {v2, v3, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    invoke-static/range {p9 .. p9}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vdlid"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_1
    invoke-static/range {p10 .. p10}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "adlid"

    move-object/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p13, v2

    if-lez v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbitrate"

    move-wide/from16 v0, p13

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p15, v2

    if-lez v2, :cond_4

    .line 70
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abitrate"

    move-wide/from16 v0, p15

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 72
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, p21, v2

    if-lez v2, :cond_5

    .line 73
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflmsec"

    move-wide/from16 v0, p21

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p23, v2

    if-lez v2, :cond_6

    .line 76
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflbytes"

    move-wide/from16 v0, p23

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 78
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p17, v2

    if-lez v2, :cond_7

    .line 79
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflmsec"

    move-wide/from16 v0, p21

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, p19, v2

    if-lez v2, :cond_8

    .line 82
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflbytes"

    move-wide/from16 v0, p23

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, p27, v2

    if-lez v2, :cond_9

    .line 85
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "initialbw"

    move-wide/from16 v0, p25

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    :cond_9
    const-wide/16 v2, 0x0

    cmp-long v2, p27, v2

    if-lez v2, :cond_a

    .line 87
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "initialbt"

    move-wide/from16 v0, p27

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, p29, v2

    if-lez v2, :cond_b

    .line 89
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "actualbw"

    move-wide/from16 v0, p29

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, p31, v2

    if-lez v2, :cond_c

    .line 91
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "actualbt"

    move-wide/from16 v0, p31

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    :cond_c
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playdelay"

    move-wide/from16 v0, p33

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playdelaysdk"

    move-wide/from16 v0, p35

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playdelaynative"

    move-wide/from16 v0, p37

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnid"

    move-wide/from16 v0, p39

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnname"

    move-object/from16 v0, p41

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "groupname"

    move-object/from16 v0, p46

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "reason"

    move-object/from16 v0, p42

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "resumeplay"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
