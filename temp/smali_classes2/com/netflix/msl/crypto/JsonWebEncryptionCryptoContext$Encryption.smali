.class public final enum Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;
.super Ljava/lang/Enum;
.source "JsonWebEncryptionCryptoContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

.field public static final enum A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

.field public static final enum A256GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    const-string/jumbo v1, "A128GCM"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    .line 408
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    const-string/jumbo v1, "A256GCM"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A256GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    .line 404
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A128GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->A256GCM:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

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
    .line 404
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;
    .locals 1

    .prologue
    .line 404
    const-class v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Encryption;

    return-object v0
.end method
