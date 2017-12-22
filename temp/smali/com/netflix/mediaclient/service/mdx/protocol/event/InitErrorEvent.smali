.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "InitErrorEvent.java"


# static fields
.field private static final ATTR_errorCode:Ljava/lang/String; = "errorCode"

.field private static final ATTR_errorDesc:Ljava/lang/String; = "errorDesc"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private errorCode:I

.field private errorDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->errorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->errorCode:I

    return v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->errorDesc:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "errorCode"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->errorCode:I

    .line 46
    const-string/jumbo v0, "errorDesc"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->errorDesc:Ljava/lang/String;

    .line 47
    return-void
.end method
