.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "MessageEvent.java"


# static fields
.field private static final ATTR_msgObject:Ljava/lang/String; = "msgObject"

.field private static final ATTR_msgbody:Ljava/lang/String; = "msgbody"

.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_sid:Ljava/lang/String; = "sid"

.field private static final ATTR_transactionId:Ljava/lang/String; = "transactionId"

.field private static final ATTR_type:Ljava/lang/String; = "type"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private msgBody:Ljava/lang/String;

.field private msgObject:Lorg/json/JSONObject;

.field private pairingContext:Ljava/lang/String;

.field private sid:I

.field private transactionId:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getMsgBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->msgBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->msgObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPairingContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->sid:I

    return v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->transactionId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    const-string/jumbo v0, "pairingContext"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->pairingContext:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "transactionId"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->transactionId:I

    .line 56
    const-string/jumbo v0, "type"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->type:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "sid"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->sid:I

    .line 58
    const-string/jumbo v0, "msgObject"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->msgObject:Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v0, "msgbody"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->msgBody:Ljava/lang/String;

    .line 61
    return-void
.end method
