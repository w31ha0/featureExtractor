.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "ChangeStream.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJJJJJJJ)V
    .locals 6

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vdlid"

    invoke-virtual {v2, v3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vdlidold"

    invoke-virtual {v2, v3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "bw"

    invoke-virtual {v2, v3, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "lbw"

    move-wide/from16 v0, p10

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbitrate"

    move-wide/from16 v0, p12

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbitrateold"

    move-wide/from16 v0, p14

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflmsec"

    move-wide/from16 v0, p16

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflbytes"

    move-wide/from16 v0, p18

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflmsec"

    move-wide/from16 v0, p20

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflbytes"

    move-wide/from16 v0, p22

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "chgstrm"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
