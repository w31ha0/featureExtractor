.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "LogReposition.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJJ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 15
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "soffms"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "moff"

    div-long v2, p4, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "moffms"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "moffold"

    div-long v2, p6, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "moffoldms"

    invoke-virtual {v0, v1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "navt"

    invoke-virtual {v0, v1, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "repos"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
