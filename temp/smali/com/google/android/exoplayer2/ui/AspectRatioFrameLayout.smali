.class public final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1


# instance fields
.field private resizeMode:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v3, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout_resize_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 70
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 103
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 109
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 110
    .local v1, "height":I
    int-to-float v4, v3

    int-to-float v5, v1

    div-float v2, v4, v5

    .line 111
    .local v2, "viewAspectRatio":F
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    .line 112
    .local v0, "aspectDeformation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    .line 117
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    packed-switch v4, :pswitch_data_0

    .line 125
    cmpl-float v4, v0, v6

    if-lez v4, :cond_2

    .line 126
    int-to-float v4, v3

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 132
    :goto_1
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 133
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 132
    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 119
    :pswitch_0
    int-to-float v4, v3

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 120
    goto :goto_1

    .line 122
    :pswitch_1
    int-to-float v4, v1

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 123
    goto :goto_1

    .line 128
    :cond_2
    int-to-float v4, v1

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "widthHeightRatio"    # F

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 83
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 85
    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1
    .param p1, "resizeMode"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 98
    :cond_0
    return-void
.end method
