.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "RegPairResponseEvent.java"


# static fields
.field private static final ATTR_cookies:Ljava/lang/String; = "cookies"

.field private static final ATTR_errorCode:Ljava/lang/String; = "errorCode"

.field private static final ATTR_errorDesc:Ljava/lang/String; = "errorDesc"

.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_remoteDevice:Ljava/lang/String; = "remoteDevice"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private cookies:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorDesc:Ljava/lang/String;

.field private pairingContext:Ljava/lang/String;

.field private remoteDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getCookies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->errorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getPairingContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->remoteDevice:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string/jumbo v0, "errorCode"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->errorCode:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "errorDesc"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->errorDesc:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "pairingContext"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->pairingContext:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "remoteDevice"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->remoteDevice:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "cookies"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/RegPairResponseEvent;->cookies:Ljava/lang/String;

    .line 58
    return-void
.end method
