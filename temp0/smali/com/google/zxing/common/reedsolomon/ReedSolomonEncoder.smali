.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;


# instance fields
.field private final cachedGenerators:Ljava/util/Vector;

.field private final field:Lcom/google/zxing/common/reedsolomon/GF256;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GF256;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only QR Code is supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 9

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_0
    if-gt v0, p1, :cond_0

    new-instance v2, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v7, v4, v5

    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/reedsolomon/GF256;->exp(I)I

    move-result v5

    aput v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    invoke-virtual {v1, v2}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->multiply(Lcom/google/zxing/common/reedsolomon/GF256Poly;)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v0
.end method


# virtual methods
.method public encode([II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    sub-int v2, v0, p2

    if-gtz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v0

    new-array v3, v2, [I

    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v4, v5, v3}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    invoke-virtual {v4, p2, v6}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->divide(Lcom/google/zxing/common/reedsolomon/GF256Poly;)[Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getCoefficients()[I

    move-result-object v3

    array-length v0, v3

    sub-int v4, p2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    add-int v5, v2, v0

    aput v1, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int v0, v2, v4

    array-length v2, v3

    invoke-static {v3, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
