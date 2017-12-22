.class public final enum Lcom/netflix/msl/crypto/EccCryptoContext$Mode;
.super Ljava/lang/Enum;
.source "EccCryptoContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/EccCryptoContext$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

.field public static final enum ENCRYPT_DECRYPT:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

.field public static final enum SIGN_VERIFY:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    const-string/jumbo v1, "ENCRYPT_DECRYPT"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->ENCRYPT_DECRYPT:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    .line 19
    new-instance v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    const-string/jumbo v1, "SIGN_VERIFY"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    sget-object v1, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->ENCRYPT_DECRYPT:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->$VALUES:[Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/EccCryptoContext$Mode;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/EccCryptoContext$Mode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->$VALUES:[Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    return-object v0
.end method
