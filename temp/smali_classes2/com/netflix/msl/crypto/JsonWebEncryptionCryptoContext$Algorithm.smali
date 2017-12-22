.class final enum Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;
.super Ljava/lang/Enum;
.source "JsonWebEncryptionCryptoContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

.field public static final enum A128KW:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

.field public static final enum RSA_OAEP:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    const-string/jumbo v1, "RSA_OAEP"

    const-string/jumbo v2, "RSA-OAEP"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->RSA_OAEP:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    .line 102
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    const-string/jumbo v1, "A128KW"

    const-string/jumbo v2, "A128KW"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->RSA_OAEP:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->name:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->values()[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 126
    invoke-virtual {v3}, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    return-object v3

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method
