.class public Lcom/netflix/msl/crypto/NullCryptoContext;
.super Ljava/lang/Object;
.source "NullCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 0

    .prologue
    .line 42
    return-object p1
.end method

.method public encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 0

    .prologue
    .line 34
    return-object p1
.end method

.method public sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 0

    .prologue
    .line 58
    return-object p1
.end method

.method public verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 0

    .prologue
    .line 50
    return-object p1
.end method
