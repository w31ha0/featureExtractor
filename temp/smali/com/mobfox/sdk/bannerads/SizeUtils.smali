.class public Lcom/mobfox/sdk/bannerads/SizeUtils;
.super Ljava/lang/Object;
.source "SizeUtils.java"


# static fields
.field public static final DEFAULT_BANNER_HEIGHT:I = 0x32

.field public static final DEFAULT_BANNER_WIDTH:I = 0x140

.field public static final DEFAULT_INTERSTITIAL_HEIGHT:I = 0x1e0

.field public static final DEFAULT_INTERSTITIAL_WIDTH:I = 0x140

.field private static final MAX_DISTANCE:F = 1.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SIZES()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x12c

    const/16 v6, 0x5a

    const/16 v3, 0x32

    const/16 v5, 0x140

    const/16 v4, 0x400

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v7, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26
    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0xfa

    invoke-direct {v2, v7, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27
    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e0

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1e0

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29
    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d8

    invoke-direct {v2, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x2d8

    invoke-direct {v2, v6, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31
    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x258

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32
    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x258

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33
    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x300

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x300

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public static calcDist(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4
    .param p0, "point1"    # Landroid/graphics/Point;
    .param p1, "point2"    # Landroid/graphics/Point;

    .prologue
    .line 79
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getNearest(Landroid/graphics/Point;Ljava/util/List;)Landroid/graphics/Point;
    .locals 10
    .param p0, "point"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 67
    .local v4, "minDist":D
    const/4 v2, 0x0

    .line 68
    .local v2, "min":Landroid/graphics/Point;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 69
    .local v3, "thisPoint":Landroid/graphics/Point;
    invoke-static {p0, v3}, Lcom/mobfox/sdk/bannerads/SizeUtils;->calcDist(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    .line 70
    .local v0, "dist":D
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v7, v4, v8

    if-eqz v7, :cond_1

    cmpg-double v7, v0, v4

    if-gez v7, :cond_0

    invoke-static {p0, v3}, Lcom/mobfox/sdk/bannerads/SizeUtils;->isLarger(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    :cond_1
    move-wide v4, v0

    .line 72
    move-object v2, v3

    goto :goto_0

    .line 75
    .end local v0    # "dist":D
    .end local v3    # "thisPoint":Landroid/graphics/Point;
    :cond_2
    return-object v2
.end method

.method public static getNearestFitSupported(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .param p0, "point"    # Landroid/graphics/Point;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/mobfox/sdk/bannerads/SizeUtils;->getNearestSupported(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 45
    .local v0, "winner":Landroid/graphics/Point;
    invoke-static {p0, v0}, Lcom/mobfox/sdk/bannerads/SizeUtils;->isTooFarOff(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    move-object v0, p0

    .line 49
    :cond_0
    return-object v0
.end method

.method public static getNearestSupported(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p0, "point"    # Landroid/graphics/Point;

    .prologue
    .line 58
    invoke-static {}, Lcom/mobfox/sdk/bannerads/SizeUtils;->SIZES()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mobfox/sdk/bannerads/SizeUtils;->getNearest(Landroid/graphics/Point;Ljava/util/List;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static isLarger(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p0, "point"    # Landroid/graphics/Point;
    .param p1, "nearPoint"    # Landroid/graphics/Point;

    .prologue
    .line 83
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-lt v0, v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTooFarOff(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 6
    .param p0, "point"    # Landroid/graphics/Point;
    .param p1, "winner"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 90
    invoke-static {p0, p1}, Lcom/mobfox/sdk/bannerads/SizeUtils;->isLarger(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 94
    :cond_1
    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    int-to-float v0, v3

    .line 95
    .local v0, "distX":F
    iget v3, p0, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    int-to-float v1, v3

    .line 97
    .local v1, "distY":F
    cmpl-float v3, v0, v5

    if-gtz v3, :cond_0

    cmpl-float v3, v1, v5

    if-gtz v3, :cond_0

    .line 101
    const/4 v2, 0x0

    goto :goto_0
.end method
