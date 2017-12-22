.class public Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;
.super Lcom/netflix/msl/keyx/KeyExchangeScheme;
.source "NetflixKeyExchangeScheme.java"


# static fields
.field public static final ANYCAST:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field public static final AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field public static final CDM:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field public static final WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;

    const-string/jumbo v1, "AUTHENTICATED_DH"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->AUTHENTICATED_DH:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 15
    new-instance v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;

    const-string/jumbo v1, "WIDEVINE"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 17
    new-instance v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;

    const-string/jumbo v1, "ANYCAST"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->ANYCAST:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 19
    new-instance v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;

    const-string/jumbo v1, "CDM"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->CDM:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
