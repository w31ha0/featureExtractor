.class final Lcom/ibm/icu/impl/Norm2AllModes$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/impl/Norm2AllModes;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Norm2AllModes;
    .locals 3

    .prologue
    .line 348
    if-nez p2, :cond_0

    .line 349
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".nrm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->load(Ljava/lang/String;)Lcom/ibm/icu/impl/Normalizer2Impl;

    move-result-object v0

    .line 353
    :goto_0
    new-instance v1, Lcom/ibm/icu/impl/Norm2AllModes;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu/impl/Norm2AllModes;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/impl/Norm2AllModes$1;)V

    return-object v1

    .line 351
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Normalizer2Impl;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/Norm2AllModes$1;->createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method
