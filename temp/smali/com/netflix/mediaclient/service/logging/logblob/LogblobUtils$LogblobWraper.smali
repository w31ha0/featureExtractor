.class Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils$LogblobWraper;
.super Ljava/lang/Object;
.source "LogblobUtils.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/Logblob;


# instance fields
.field private mClientEpoch:J

.field private mPayload:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Payload can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    const-string/jumbo v0, "clientJson"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils$LogblobWraper;->mPayload:Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v0, "clientEpoch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils$LogblobWraper;->mClientEpoch:J

    .line 83
    return-void
.end method


# virtual methods
.method public getClientEpoch()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils$LogblobWraper;->mClientEpoch:J

    return-wide v0
.end method

.method public getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Method not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Method not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMandatory()Z
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Method not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldSendNow()Z
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Method not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils$LogblobWraper;->mPayload:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogblobUtils$LogblobWraper;->mPayload:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
