.class public final Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 2
    .param p1, "yuvData"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 46
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 48
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->yuvData:[B

    .line 53
    iput p2, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    .line 54
    iput p3, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataHeight:I

    .line 55
    iput p4, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->left:I

    .line 56
    iput p5, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->top:I

    .line 57
    return-void
.end method


# virtual methods
.method public getDataHeight()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    return v0
.end method

.method public getMatrix()[B
    .locals 10

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    .line 82
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 86
    .local v1, "height":I
    iget v8, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_1

    iget v8, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v8, :cond_1

    .line 87
    iget-object v3, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->yuvData:[B

    .line 107
    :cond_0
    :goto_0
    return-object v3

    .line 90
    :cond_1
    mul-int v0, v5, v1

    .line 91
    .local v0, "area":I
    new-array v3, v0, [B

    .line 92
    .local v3, "matrix":[B
    iget v8, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->top:I

    iget v9, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->left:I

    add-int v2, v8, v9

    .line 95
    .local v2, "inputOffset":I
    iget v8, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_2

    .line 96
    iget-object v8, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v7, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->yuvData:[B

    .line 102
    .local v7, "yuv":[B
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 103
    mul-int v4, v6, v5

    .line 104
    .local v4, "outputOffset":I
    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v8, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v8

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 64
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested row is outside the image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    .line 68
    .local v1, "width":I
    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    .line 69
    :cond_2
    new-array p2, v1, [B

    .line 71
    :cond_3
    iget v2, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->left:I

    add-int v0, v2, v3

    .line 72
    .local v0, "offset":I
    iget-object v2, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->getWidth()I

    move-result v3

    .line 143
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->getHeight()I

    move-result v7

    .line 144
    .local v7, "height":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 145
    .local v1, "pixels":[I
    iget-object v13, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->yuvData:[B

    .line 146
    .local v13, "yuv":[B
    iget v4, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->left:I

    add-int v9, v4, v5

    .line 148
    .local v9, "inputOffset":I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-ge v12, v7, :cond_1

    .line 149
    mul-int v10, v12, v3

    .line 150
    .local v10, "outputOffset":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    if-ge v11, v3, :cond_0

    .line 151
    add-int v4, v9, v11

    aget-byte v4, v13, v4

    and-int/lit16 v8, v4, 0xff

    .line 152
    .local v8, "grey":I
    add-int v4, v10, v11

    const/high16 v5, -0x1000000

    const v6, 0x10101

    mul-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v1, v4

    .line 150
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 154
    .end local v8    # "grey":I
    :cond_0
    iget v4, p0, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v9, v4

    .line 148
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 157
    .end local v10    # "outputOffset":I
    .end local v11    # "x":I
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 158
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 159
    return-object v0
.end method
