.class public Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;
.super Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
.source "NccpActionId.java"


# instance fields
.field private actionId:I

.field private bcp47:Ljava/lang/String;

.field private code:I

.field private message:Ljava/lang/String;

.field private reasonCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;-><init>()V

    .line 44
    iput p1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->actionId:I

    .line 45
    iput-object p3, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->message:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->origin:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->bcp47:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->result:Ljava/lang/String;

    .line 49
    iput p6, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->reasonCode:I

    .line 50
    iput-object p7, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->transaction:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "Nccp"

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->type:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;-><init>(Lorg/json/JSONObject;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getActionId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->actionId:I

    return v0
.end method

.method public getBcp47()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->bcp47:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->reasonCode:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    const-string/jumbo v0, "actionId"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->actionId:I

    .line 106
    const-string/jumbo v0, "reasonCode"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->reasonCode:I

    .line 107
    const-string/jumbo v0, "code"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->code:I

    .line 108
    const-string/jumbo v0, "message"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->message:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "bcp47"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->bcp47:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "origin"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->origin:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "result"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->result:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "transaction"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->transaction:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "type"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->type:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NccpActionId{actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bcp47=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->bcp47:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->reasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method
