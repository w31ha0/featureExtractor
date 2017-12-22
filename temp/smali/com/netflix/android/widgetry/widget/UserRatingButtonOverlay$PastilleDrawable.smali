.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UserRatingButtonOverlay.java"


# static fields
.field private static final ICON_DOWNSCALE:F = 0.15f


# instance fields
.field private mApplyAlphaAlsoToIcon:Z

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mScale:F

.field private mSelected:Z

.field private final mSelectedIcon:Landroid/graphics/drawable/Drawable;

.field private final mSelectionPaint:Landroid/graphics/Paint;

.field private final mSize:I

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private final mUnselectedIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;


# direct methods
.method private constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;IIZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 725
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 718
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 719
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    .line 720
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 721
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mScale:F

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mApplyAlphaAlsoToIcon:Z

    .line 723
    iput-boolean v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelected:Z

    .line 727
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mUnselectedIcon:Landroid/graphics/drawable/Drawable;

    .line 728
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mUnselectedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_foreground:I

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 730
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    .line 731
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_foreground:I

    :goto_1
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 733
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p4, :cond_2

    sget v0, Lcom/netflix/android/widgetry/R$dimen;->thumbs_size:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSize:I

    .line 734
    invoke-direct {p0, p4}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->updatePaints(Z)V

    .line 735
    invoke-virtual {p0, v3}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setSelected(Z)V

    .line 736
    return-void

    .line 728
    :cond_0
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_foreground:I

    goto :goto_0

    .line 731
    :cond_1
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_foreground:I

    goto :goto_1

    .line 733
    :cond_2
    sget v0, Lcom/netflix/android/widgetry/R$dimen;->thumbs_close_size:I

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;IIZLcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$1;)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;IIZ)V

    return-void
.end method

.method private updatePaints(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 739
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_foreground:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_background:I

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_1

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_stroke:I

    :goto_1
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    :goto_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 749
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 750
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 751
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 752
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 753
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 754
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 755
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$dimen;->thumb_button_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 756
    return-void

    .line 741
    :cond_0
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_close_background:I

    goto :goto_0

    .line 742
    :cond_1
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_close_stroke:I

    goto :goto_1

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_foreground:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_3

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_background:I

    :goto_3
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 746
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_4

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_stroke:I

    :goto_4
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 745
    :cond_3
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_close_background:I

    goto :goto_3

    .line 746
    :cond_4
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_close_stroke:I

    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 793
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mScale:F

    mul-float/2addr v1, v2

    .line 794
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 795
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-lez v2, :cond_0

    .line 796
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 798
    :cond_0
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 803
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 804
    iget v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mScale:F

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)F

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 805
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 806
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 807
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 808
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 809
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mUnselectedIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 833
    const/4 v0, -0x3

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelected:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 817
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 818
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mApplyAlphaAlsoToIcon:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 823
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->invalidateSelf()V

    .line 824
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method setApplyAlphaAlsoToIcon(Z)V
    .locals 0

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mApplyAlphaAlsoToIcon:Z

    .line 776
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method setPressedStateAlpha(I)V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 843
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->invalidateSelf()V

    .line 844
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 837
    iput p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mScale:F

    .line 838
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->invalidateSelf()V

    .line 839
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 759
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelected:Z

    if-eq v0, p1, :cond_1

    .line 760
    :cond_0
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSelected:Z

    .line 761
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 762
    iget v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mSize:I

    int-to-float v0, v0

    const v1, 0x3f2e147b    # 0.68f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 763
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 764
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->invalidateSelf()V

    .line 766
    :cond_1
    return-void
.end method
