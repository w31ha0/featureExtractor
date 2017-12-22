.class public Lorg/chromium/net/impl/QuicExceptionImpl;
.super Lorg/chromium/net/QuicException;
.source "QuicExceptionImpl.java"


# instance fields
.field private final mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

.field private final mQuicDetailedErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/net/QuicException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    new-instance v0, Lorg/chromium/net/impl/NetworkExceptionImpl;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1, p2}, Lorg/chromium/net/impl/NetworkExceptionImpl;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    .line 32
    iput p3, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    .line 33
    return-void
.end method


# virtual methods
.method public getCronetInternalErrorCode()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Lorg/chromium/net/impl/NetworkExceptionImpl;->getCronetInternalErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Lorg/chromium/net/impl/NetworkExceptionImpl;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v1}, Lorg/chromium/net/impl/NetworkExceptionImpl;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v1, ", QuicDetailedErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuicDetailedErrorCode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    return v0
.end method

.method public immediatelyRetryable()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Lorg/chromium/net/impl/NetworkExceptionImpl;->immediatelyRetryable()Z

    move-result v0

    return v0
.end method
