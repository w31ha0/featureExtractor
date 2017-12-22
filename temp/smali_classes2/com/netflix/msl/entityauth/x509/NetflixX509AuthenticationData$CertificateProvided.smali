.class public final enum Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;
.super Ljava/lang/Enum;
.source "NetflixX509AuthenticationData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

.field public static final enum CHAIN:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

.field public static final enum SINGLE:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    const-string/jumbo v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->SINGLE:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    .line 89
    new-instance v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    const-string/jumbo v1, "CHAIN"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->CHAIN:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    sget-object v1, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->SINGLE:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->CHAIN:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->$VALUES:[Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->$VALUES:[Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    invoke-virtual {v0}, [Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    return-object v0
.end method
