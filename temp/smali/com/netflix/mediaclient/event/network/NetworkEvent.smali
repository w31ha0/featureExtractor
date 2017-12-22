.class public Lcom/netflix/mediaclient/event/network/NetworkEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "NetworkEvent.java"


# instance fields
.field private errorCode:I

.field private errorGroup:I

.field private result:I

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "INetwork"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorCode:I

    return v0
.end method

.method public getErrorGroup()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorGroup:I

    return v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "nrdp.network"

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->result:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    const-string/jumbo v0, "type"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->type:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "result"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->result:I

    .line 31
    const-string/jumbo v0, "errorcode"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorCode:I

    .line 32
    const-string/jumbo v0, "errorgroup"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->errorGroup:I

    .line 33
    const-string/jumbo v0, "url"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/network/NetworkEvent;->url:Ljava/lang/String;

    .line 34
    return-void
.end method
