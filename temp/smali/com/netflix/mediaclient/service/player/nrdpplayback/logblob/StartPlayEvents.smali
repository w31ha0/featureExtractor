.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "StartPlayEvents.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "soffms"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "groupname"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    if-eqz p6, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "eventlist"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "startplayevents"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
