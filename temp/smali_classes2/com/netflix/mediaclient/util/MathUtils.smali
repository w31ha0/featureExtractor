.class public Lcom/netflix/mediaclient/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ceiling(II)I
    .locals 1

    .prologue
    .line 12
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static constrain(III)I
    .locals 0

    .prologue
    .line 56
    if-ge p0, p1, :cond_0

    .line 62
    :goto_0
    return p1

    .line 59
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 60
    goto :goto_0

    :cond_1
    move p1, p0

    .line 62
    goto :goto_0
.end method

.method public static divideIntsWithRounding(II)I
    .locals 2

    .prologue
    .line 16
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static expandRect(Landroid/graphics/Rect;I)V
    .locals 2

    .prologue
    .line 76
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 77
    iget v0, p0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 78
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 79
    return-void
.end method

.method public static inclusiveRange(III)Z
    .locals 1

    .prologue
    .line 20
    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEven(I)Z
    .locals 1

    .prologue
    .line 52
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static randomInRange(JII)I
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    sub-int v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method
