.class public final enum Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
.super Ljava/lang/Enum;
.source "RootCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/client/model/RootCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum clientRequestBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum dnsLookupFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum dnsTimeout:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum handledException:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum http4xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum http5xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum serverResponseBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum sslHandshakeFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum sslNoCipher:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum tcpConnectionRefusal:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum tcpConnectionTimeout:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum tcpNoRouteToHost:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum unhandledException:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

.field public static final enum unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "dnsTimeout"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->dnsTimeout:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "dnsLookupFailure"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->dnsLookupFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "tcpConnectionTimeout"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpConnectionTimeout:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "tcpNoRouteToHost"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpNoRouteToHost:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "tcpConnectionRefusal"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpConnectionRefusal:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "sslUntrustedCert"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "sslExpiredCert"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "sslNoCipher"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslNoCipher:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "sslHandshakeFailure"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslHandshakeFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "networkFailure"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "http4xx"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http4xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "http5xx"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http5xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "clientRequestBad"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientRequestBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "clientFailure"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "serverResponseBad"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverResponseBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "serverFailure"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "unknownFailure"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "handledException"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->handledException:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    const-string/jumbo v1, "unhandledException"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unhandledException:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 15
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->dnsTimeout:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->dnsLookupFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpConnectionTimeout:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpNoRouteToHost:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpConnectionRefusal:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslNoCipher:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslHandshakeFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http4xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http5xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientRequestBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverResponseBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->handledException:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unhandledException:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    return-object v0
.end method
