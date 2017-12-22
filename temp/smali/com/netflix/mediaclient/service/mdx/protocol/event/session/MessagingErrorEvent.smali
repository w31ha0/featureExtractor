.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "MessagingErrorEvent.java"


# static fields
.field private static final ATTR_errorCode:Ljava/lang/String; = "errorCode"

.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_sid:Ljava/lang/String; = "sid"

.field private static final ATTR_transactionId:Ljava/lang/String; = "transactionId"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private errorCode:I

.field private pairingContext:Ljava/lang/String;

.field private sid:I

.field private transactionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->errorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->errorCode:I

    return v0
.end method

.method public getPairingContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->sid:I

    return v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->transactionId:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 50
    const-string/jumbo v0, "pairingContext"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->pairingContext:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "transactionId"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->transactionId:I

    .line 52
    const-string/jumbo v0, "sid"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->sid:I

    .line 53
    const-string/jumbo v0, "errorCode"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->errorCode:I

    .line 54
    return-void
.end method
