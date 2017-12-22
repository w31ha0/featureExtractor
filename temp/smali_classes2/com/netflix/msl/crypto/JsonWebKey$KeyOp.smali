.class public final enum Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;
.super Ljava/lang/Enum;
.source "JsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum decrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum deriveBits:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum deriveKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum encrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum sign:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum unwrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum verify:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

.field public static final enum wrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "sign"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->sign:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 104
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "verify"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->verify:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 105
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "encrypt"

    invoke-direct {v0, v1, v5}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->encrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 106
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "decrypt"

    invoke-direct {v0, v1, v6}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->decrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 107
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "wrapKey"

    invoke-direct {v0, v1, v7}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->wrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 108
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "unwrapKey"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->unwrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 109
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "deriveKey"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->deriveKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 110
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    const-string/jumbo v1, "deriveBits"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->deriveBits:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->sign:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->verify:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->encrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->decrypt:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->wrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->unwrapKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->deriveKey:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->deriveBits:Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/JsonWebKey$KeyOp;

    return-object v0
.end method
