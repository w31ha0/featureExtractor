.class public abstract Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "NccpError.java"


# static fields
.field protected static final ATTR_ACTION_ID:Ljava/lang/String; = "actionId"

.field protected static final ATTR_BCP47:Ljava/lang/String; = "bcp47"

.field protected static final ATTR_CODE:Ljava/lang/String; = "code"

.field protected static final ATTR_END_POINT:Ljava/lang/String; = "endpoint"

.field protected static final ATTR_MESSAGE:Ljava/lang/String; = "message"

.field protected static final ATTR_ORIGIN:Ljava/lang/String; = "origin"

.field protected static final ATTR_REASON_CODE:Ljava/lang/String; = "reasonCode"

.field public static final ATTR_RESULT:Ljava/lang/String; = "result"

.field protected static final ATTR_STACK:Ljava/lang/String; = "stack"

.field protected static final ATTR_TRANSACTION:Ljava/lang/String; = "transaction"

.field protected static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final ORIGIN_ACTION_ID:Ljava/lang/String; = "handleActionId"

.field public static final ORIGIN_NETWORKING_ERROR:Ljava/lang/String; = "reportNetworkingError"

.field public static final ORIGIN_STOP_TRANSACTION:Ljava/lang/String; = "stopTransaction"

.field public static final RESULT_ACTION_ID:Ljava/lang/String; = "ACTION_ID"

.field public static final RESULT_NETWORKING_ERROR:Ljava/lang/String; = "NETWORK_ERROR"

.field private static final TAG:Ljava/lang/String; = "nf-nccp"

.field public static final TRANSACTION_HEARTBEAT:Ljava/lang/String; = "heartbeat"

.field public static final TRANSACTION_LOGBLOB:Ljava/lang/String; = "logblob"

.field public static final TRANSACTION_PING:Ljava/lang/String; = "ping"

.field public static final TRANSACTION_PLAYDATA:Ljava/lang/String; = "playdata"

.field public static final TYPE:Ljava/lang/String; = "nccperror"

.field public static final TYPE_BACKGROUND:Ljava/lang/String; = "background"

.field public static final TYPE_NCCP:Ljava/lang/String; = "Nccp"


# instance fields
.field protected origin:Ljava/lang/String;

.field protected result:Ljava/lang/String;

.field protected transaction:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "nccperror"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "nccperror"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 78
    return-void
.end method

.method public static toNccpError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    const-string/jumbo v1, "origin"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "handleActionId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const-string/jumbo v0, "nf-nccp"

    const-string/jumbo v1, "NCCP Action ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;-><init>(Lorg/json/JSONObject;)V

    .line 139
    :goto_0
    return-object v0

    .line 131
    :cond_0
    const-string/jumbo v2, "stopTransaction"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string/jumbo v0, "nf-nccp"

    const-string/jumbo v1, "NCCP stop transaction"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 134
    :cond_1
    const-string/jumbo v2, "reportNetworkingError"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const-string/jumbo v0, "nf-nccp"

    const-string/jumbo v1, "NCCP networking error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpNetworkingError;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 138
    :cond_2
    const-string/jumbo v1, "nf-nccp"

    const-string/jumbo v2, "Not handled NCCP event type!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->type:Ljava/lang/String;

    return-object v0
.end method
