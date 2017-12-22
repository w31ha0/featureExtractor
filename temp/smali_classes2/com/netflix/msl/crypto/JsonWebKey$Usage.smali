.class public final enum Lcom/netflix/msl/crypto/JsonWebKey$Usage;
.super Ljava/lang/Enum;
.source "JsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/JsonWebKey$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$Usage;

.field public static final enum enc:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

.field public static final enum sig:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

.field public static final enum wrap:Lcom/netflix/msl/crypto/JsonWebKey$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    const-string/jumbo v1, "sig"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/JsonWebKey$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->sig:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    .line 96
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    const-string/jumbo v1, "enc"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/crypto/JsonWebKey$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->enc:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    .line 98
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    const-string/jumbo v1, "wrap"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/crypto/JsonWebKey$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->wrap:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->sig:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->enc:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->wrap:Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$Usage;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Usage;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/JsonWebKey$Usage;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Usage;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/JsonWebKey$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/JsonWebKey$Usage;

    return-object v0
.end method
