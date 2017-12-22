.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "AudioSwitch.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "soffms"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "switchdelay"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "oldtrackinfo"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "newtrackinfo"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "audioswitch"

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
