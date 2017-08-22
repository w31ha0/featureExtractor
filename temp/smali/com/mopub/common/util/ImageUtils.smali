.class public Lcom/mopub/common/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFastGaussianBlurToBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "mutableBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "radius"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 19
    .local v4, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 20
    .local v8, "h":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 21
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    move/from16 v16, p1

    .local v16, "r":I
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, v16

    if-lt v0, v1, :cond_2

    .line 24
    move/from16 v14, v16

    .local v14, "i":I
    :goto_1
    sub-int v1, v8, v16

    if-ge v14, v1, :cond_1

    .line 25
    move/from16 v15, v16

    .local v15, "j":I
    :goto_2
    sub-int v1, v4, v16

    if-ge v15, v1, :cond_0

    .line 26
    sub-int v1, v14, v16

    mul-int/2addr v1, v4

    add-int/2addr v1, v15

    sub-int v1, v1, v16

    aget v18, v2, v1

    .line 27
    .local v18, "tl":I
    sub-int v1, v14, v16

    mul-int/2addr v1, v4

    add-int/2addr v1, v15

    add-int v1, v1, v16

    aget v19, v2, v1

    .line 28
    .local v19, "tr":I
    sub-int v1, v14, v16

    mul-int/2addr v1, v4

    add-int/2addr v1, v15

    aget v17, v2, v1

    .line 29
    .local v17, "tc":I
    add-int v1, v14, v16

    mul-int/2addr v1, v4

    add-int/2addr v1, v15

    sub-int v1, v1, v16

    aget v10, v2, v1

    .line 30
    .local v10, "bl":I
    add-int v1, v14, v16

    mul-int/2addr v1, v4

    add-int/2addr v1, v15

    add-int v1, v1, v16

    aget v11, v2, v1

    .line 31
    .local v11, "br":I
    add-int v1, v14, v16

    mul-int/2addr v1, v4

    add-int/2addr v1, v15

    aget v9, v2, v1

    .line 32
    .local v9, "bc":I
    mul-int v1, v14, v4

    add-int/2addr v1, v15

    sub-int v1, v1, v16

    aget v12, v2, v1

    .line 33
    .local v12, "cl":I
    mul-int v1, v14, v4

    add-int/2addr v1, v15

    add-int v1, v1, v16

    aget v13, v2, v1

    .line 35
    .local v13, "cr":I
    mul-int v1, v14, v4

    add-int/2addr v1, v15

    const/high16 v3, -0x1000000

    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xff

    add-int/2addr v5, v6

    move/from16 v0, v17

    and-int/lit16 v6, v0, 0xff

    add-int/2addr v5, v6

    and-int/lit16 v6, v10, 0xff

    add-int/2addr v5, v6

    and-int/lit16 v6, v11, 0xff

    add-int/2addr v5, v6

    and-int/lit16 v6, v9, 0xff

    add-int/2addr v5, v6

    and-int/lit16 v6, v12, 0xff

    add-int/2addr v5, v6

    and-int/lit16 v6, v13, 0xff

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    const v5, 0xff00

    and-int v5, v5, v18

    const v6, 0xff00

    and-int v6, v6, v19

    add-int/2addr v5, v6

    const v6, 0xff00

    and-int v6, v6, v17

    add-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v6, v10

    add-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v6, v11

    add-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v6, v9

    add-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v6, v12

    add-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v6, v13

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x3

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    const/high16 v5, 0xff0000

    and-int v5, v5, v18

    const/high16 v6, 0xff0000

    and-int v6, v6, v19

    add-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int v6, v6, v17

    add-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v6, v10

    add-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v6, v11

    add-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v6, v9

    add-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v6, v12

    add-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v6, v13

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x3

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v2, v1

    .line 25
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 24
    .end local v9    # "bc":I
    .end local v10    # "bl":I
    .end local v11    # "br":I
    .end local v12    # "cl":I
    .end local v13    # "cr":I
    .end local v17    # "tc":I
    .end local v18    # "tl":I
    .end local v19    # "tr":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 23
    .end local v15    # "j":I
    :cond_1
    div-int/lit8 v16, v16, 0x2

    goto/16 :goto_0

    .line 43
    .end local v14    # "i":I
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 44
    return-object p0
.end method
