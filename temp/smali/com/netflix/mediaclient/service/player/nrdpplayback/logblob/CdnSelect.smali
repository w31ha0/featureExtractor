.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "CdnSelect.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "soffms"

    invoke-virtual {v0, v1, p12, p13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "cdninfo"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "cdnbwdata"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "pricdnid"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    if-ltz p4, :cond_0

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "oldcdnid"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "selcdnid"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "selcdnrtt"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "selcdnbw"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "cdnbwdata"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "testreason"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "fastselthreshold"

    invoke-virtual {v0, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "selreason"

    invoke-virtual {v0, v1, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "cdnsel"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
