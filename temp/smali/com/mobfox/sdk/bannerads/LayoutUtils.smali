.class public Lcom/mobfox/sdk/bannerads/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aboveTheFold(Landroid/content/Context;Landroid/view/View;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-static {p0}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 71
    .local v2, "screenHeight":I
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 72
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 73
    aget v0, v1, v4

    .line 74
    .local v0, "bannerTop":I
    if-gez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v3

    .line 75
    :cond_1
    if-ge v0, v2, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)I
    .locals 4
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 81
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .line 82
    .local v1, "px":F
    float-to-int v2, v1

    return v2
.end method

.method public static convertPixelToDP(FLandroid/content/Context;)F
    .locals 4
    .param p0, "px"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 87
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    div-float v0, p0, v2

    .line 88
    .local v0, "dp":F
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 63
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 65
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 66
    iget v3, v1, Landroid/graphics/Point;->y:I

    return v3
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 41
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 42
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 43
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 45
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-static {v6, p0}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertPixelToDP(FLandroid/content/Context;)F

    move-result v6

    float-to-int v4, v6

    .line 46
    .local v4, "width":I
    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v6, p0}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertPixelToDP(FLandroid/content/Context;)F

    move-result v6

    float-to-int v1, v6

    .line 47
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 48
    .local v2, "resultInPixel":Landroid/graphics/Point;
    return-object v2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 53
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 54
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 55
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 57
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-static {v4, p0}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertPixelToDP(FLandroid/content/Context;)F

    move-result v4

    float-to-int v2, v4

    .line 58
    .local v2, "width":I
    return v2
.end method

.method public static setDimensions(Landroid/content/Context;Landroid/view/View;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    .local v1, "layout_params":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v2, p2

    invoke-static {v2, p0}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 31
    int-to-float v2, p3

    invoke-static {v2, p0}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "layout_params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MobFoxBanner"

    const-string v3, "smart params error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSmartDimensions(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 23
    invoke-static {p0}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 24
    .local v0, "screenWidth":I
    invoke-static {p0, p1, v0, p2}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->setDimensions(Landroid/content/Context;Landroid/view/View;II)V

    .line 25
    return-void
.end method
