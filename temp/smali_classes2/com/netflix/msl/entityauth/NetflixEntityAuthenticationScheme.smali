.class public Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
.source "NetflixEntityAuthenticationScheme.java"


# static fields
.field public static final ANYCAST:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final ECC:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final MGK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final MGK_PROFILE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;

    const-string/jumbo v1, "MGK"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;->MGK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 15
    new-instance v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;

    const-string/jumbo v1, "MGK_PROFILE"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;->MGK_PROFILE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 17
    new-instance v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;

    const-string/jumbo v1, "ECC"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;->ECC:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 19
    new-instance v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;

    const-string/jumbo v1, "ANYCAST"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;->ANYCAST:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    .line 30
    return-void
.end method
