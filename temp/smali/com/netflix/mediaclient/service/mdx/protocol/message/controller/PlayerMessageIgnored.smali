.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerMessageIgnored.java"


# static fields
.field private static PROPERTY_errorCode:Ljava/lang/String;

.field private static PROPERTY_errorDesc:Ljava/lang/String;

.field private static PROPERTY_transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "transactionId"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->PROPERTY_transactionId:Ljava/lang/String;

    .line 4
    const-string/jumbo v0, "errorCode"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->PROPERTY_errorCode:Ljava/lang/String;

    .line 5
    const-string/jumbo v0, "errorDesc"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->PROPERTY_errorDesc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "MESSAGE_IGNORED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->PROPERTY_transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->PROPERTY_errorCode:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->PROPERTY_errorDesc:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerMessageIgnored;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
