.class public Lcom/netflix/msl/crypto/ClientMslCryptoContext;
.super Ljava/lang/Object;
.source "ClientMslCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 0

    .prologue
    .line 45
    return-object p1
.end method

.method public encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 0

    .prologue
    .line 37
    return-object p1
.end method

.method public sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Unwrap is unsupported by the MSL token crypto context."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Wrap is unsupported by the MSL token crypto context."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
