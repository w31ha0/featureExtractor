.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "IntrPlay.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;JJJJJLjava/lang/String;)V
    .locals 7

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    invoke-static {p6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vdlid"

    invoke-virtual {v2, v3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-lez v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflmsec"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-lez v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflmsec"

    invoke-virtual {v2, v3, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p13, v2

    if-lez v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflbytes"

    move-wide/from16 v0, p13

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-lez v2, :cond_4

    .line 50
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflbytes"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    :cond_4
    if-eqz p17, :cond_5

    .line 53
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "groupname"

    move-object/from16 v0, p17

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnid"

    move-wide/from16 v0, p15

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "intrplay"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
