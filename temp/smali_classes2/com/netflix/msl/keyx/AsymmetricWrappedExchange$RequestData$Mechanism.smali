.class public final enum Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;
.super Ljava/lang/Enum;
.source "AsymmetricWrappedExchange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field public static final enum ECC:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field public static final enum JWEJS_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field public static final enum JWE_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field public static final enum JWK_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field public static final enum JWK_RSAES:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

.field public static final enum RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    const-string/jumbo v1, "RSA"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 233
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    const-string/jumbo v1, "ECC"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ECC:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 235
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    const-string/jumbo v1, "JWE_RSA"

    invoke-direct {v0, v1, v5}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWE_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 237
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    const-string/jumbo v1, "JWEJS_RSA"

    invoke-direct {v0, v1, v6}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWEJS_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 239
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    const-string/jumbo v1, "JWK_RSA"

    invoke-direct {v0, v1, v7}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWK_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 241
    new-instance v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    const-string/jumbo v1, "JWK_RSAES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWK_RSAES:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    .line 229
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->ECC:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWE_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWEJS_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWK_RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->JWK_RSAES:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->$VALUES:[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

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
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->$VALUES:[Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-virtual {v0}, [Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    return-object v0
.end method
