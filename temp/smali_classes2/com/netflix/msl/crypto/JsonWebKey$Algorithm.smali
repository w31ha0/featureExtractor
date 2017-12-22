.class public final enum Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;
.super Ljava/lang/Enum;
.source "JsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

.field public static final enum A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

.field public static final enum A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

.field public static final enum HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

.field public static final enum RSA1_5:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

.field public static final enum RSA_OAEP:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const-string/jumbo v1, "HS256"

    const-string/jumbo v2, "HS256"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 118
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const-string/jumbo v1, "RSA1_5"

    const-string/jumbo v2, "RSA1_5"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->RSA1_5:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 120
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const-string/jumbo v1, "RSA_OAEP"

    const-string/jumbo v2, "RSA-OAEP"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->RSA_OAEP:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 122
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const-string/jumbo v1, "A128KW"

    const-string/jumbo v2, "A128KW"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 124
    new-instance v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    const-string/jumbo v1, "A128CBC"

    const-string/jumbo v2, "A128CBC"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->HS256:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->RSA1_5:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->RSA_OAEP:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128KW:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->A128CBC:Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput-object p3, p0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->name:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;
    .locals 5

    .prologue
    .line 166
    invoke-static {}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->values()[Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 167
    invoke-virtual {v3}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    return-object v3

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->$VALUES:[Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;

    return-object v0
.end method


# virtual methods
.method public getJcaAlgorithmName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/netflix/msl/crypto/JsonWebKey$1;->$SwitchMap$com$netflix$msl$crypto$JsonWebKey$Algorithm:[I

    invoke-virtual {p0}, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No JCA standard algorithm name defined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    const-string/jumbo v0, "HmacSHA256"

    .line 146
    :goto_0
    return-object v0

    .line 143
    :pswitch_1
    const-string/jumbo v0, "RSA"

    goto :goto_0

    .line 146
    :pswitch_2
    const-string/jumbo v0, "AES"

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebKey$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method
