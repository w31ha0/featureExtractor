.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "MessageDeliveredEvent.java"


# static fields
.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_transactionId:Ljava/lang/String; = "transactionId"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private pairingContext:Ljava/lang/String;

.field private transactionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getPairingContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->transactionId:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "pairingContext"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->pairingContext:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "transactionId"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->transactionId:I

    .line 50
    return-void
.end method
