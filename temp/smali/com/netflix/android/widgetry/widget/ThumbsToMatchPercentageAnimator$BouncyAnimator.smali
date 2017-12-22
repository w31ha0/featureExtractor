.class Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;
.super Ljava/lang/Object;
.source "ThumbsToMatchPercentageAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DEBUG_MULTIPLIER:I = 0x1

.field private static final LONG_DURATION_MS:J = 0x12cL

.field private static final MID_DURATION_MS:J = 0x96L

.field private static final SHORT_DURATION_MS:J = 0x64L

.field private static final VALUE_ONE:F = 1.0f

.field private static final VALUE_ZERO:F


# instance fields
.field private mCurrentState:I

.field private mCurrentTranslation:F

.field private final mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

.field private mFutureRating:I

.field private mFutureText:Ljava/lang/CharSequence;

.field private final mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

.field private mTargetTranslation:I

.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;


# direct methods
.method private constructor <init>(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)V
    .locals 4

    .prologue
    .line 297
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentState:I

    .line 282
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    .line 285
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    .line 299
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 302
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$1;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;-><init>(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)V

    return-void
.end method

.method private cancel(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 340
    :cond_0
    return-void
.end method

.method private varargs start(ILandroid/animation/ValueAnimator;[F)V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 332
    iput p1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentState:I

    .line 333
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 334
    return-void
.end method

.method private willDisplayText()Z
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureRating:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 350
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 376
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$400(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->willDisplayText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 366
    :goto_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$100(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentTranslation:F

    .line 367
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v4, v0, v1}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->start(ILandroid/animation/ValueAnimator;[F)V

    goto :goto_0

    .line 359
    :cond_0
    iput v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentState:I

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 370
    :pswitch_1
    iput v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentState:I

    .line 371
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$100(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mTargetTranslation:I

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$500(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 367
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 400
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 403
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$400(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 406
    iget v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 409
    iget v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentTranslation:F

    mul-float/2addr v0, v2

    .line 410
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$400(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v3}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$400(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/android/widgetry/utils/UiUtils;->getMarginEnd(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 411
    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$500(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 412
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$100(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/view/ViewGroup;

    move-result-object v2

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 416
    iget v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentTranslation:F

    mul-float/2addr v1, v2

    .line 417
    iget v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mTargetTranslation:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$500(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 418
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$100(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/view/ViewGroup;

    move-result-object v2

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0
.end method

.method public start(ILjava/lang/CharSequence;I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 307
    iput p1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureRating:I

    .line 308
    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureText:Ljava/lang/CharSequence;

    .line 309
    iput p3, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mTargetTranslation:I

    .line 310
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$100(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentTranslation:F

    .line 312
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->cancel(Landroid/animation/ValueAnimator;)V

    .line 313
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->cancel(Landroid/animation/ValueAnimator;)V

    .line 314
    iget v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureRating:I

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$200()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$100(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mCurrentTranslation:F

    .line 320
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$400(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureRating:I

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->this$0:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$400(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFutureText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mSecondHalfInAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->start(ILandroid/animation/ValueAnimator;[F)V

    .line 328
    :goto_1
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 326
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->mFirstHalfOutAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->start(ILandroid/animation/ValueAnimator;[F)V

    goto :goto_1

    .line 323
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 326
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
