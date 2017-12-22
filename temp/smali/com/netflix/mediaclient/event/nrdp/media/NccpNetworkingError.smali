.class public Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;
.super Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
.source "NccpNetworkingError.java"


# instance fields
.field private endpoint:Ljava/lang/String;

.field private stack:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->endpoint:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->stack:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->origin:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->result:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->transaction:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;-><init>(Lorg/json/JSONObject;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->stack:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string/jumbo v0, "endpoint"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->endpoint:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "stack"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->stack:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "origin"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->origin:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "result"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->result:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "transaction"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->transaction:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NccpNetworkingError [endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->stack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;->transaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
