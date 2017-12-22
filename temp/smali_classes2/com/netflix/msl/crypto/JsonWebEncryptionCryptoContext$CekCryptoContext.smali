.class public abstract Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;
.super Ljava/lang/Object;
.source "JsonWebEncryptionCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# instance fields
.field private final algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;->algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    .line 149
    return-void
.end method


# virtual methods
.method getAlgorithm()Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$CekCryptoContext;->algo:Lcom/netflix/msl/crypto/JsonWebEncryptionCryptoContext$Algorithm;

    return-object v0
.end method

.method public sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method

.method public wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
.end method
