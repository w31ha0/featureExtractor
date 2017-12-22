.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;
.super Ljava/lang/Object;
.source "UserRatingButtonOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAlphaValue(F)I
    .locals 3

    .prologue
    .line 544
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 507
    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->getAlphaValue(F)I

    move-result v1

    .line 509
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$1900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setPressedStateAlpha(I)V

    .line 541
    :cond_1
    :goto_0
    return-void

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2100(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 517
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setAlpha(I)V

    .line 518
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setAlpha(I)V

    goto :goto_0

    .line 520
    :cond_3
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 523
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setAlpha(I)V

    goto :goto_0

    .line 525
    :cond_4
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$2400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v2, v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$2500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 531
    const v1, 0x3f2e147b    # 0.68f

    const v2, 0x3ea3d70a    # 0.32f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 532
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v1, v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setScale(F)V

    .line 533
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v1, v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;->setScale(F)V

    .line 534
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v1, v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 535
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v1, v1, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 538
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->requestLayout()V

    goto/16 :goto_0
.end method
