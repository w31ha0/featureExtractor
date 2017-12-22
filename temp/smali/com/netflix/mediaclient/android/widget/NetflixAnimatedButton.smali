.class public Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;
.super Landroid/widget/FrameLayout;
.source "NetflixAnimatedButton.java"


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x145

.field private static final ANIMATION_DELAY_LONG:I = 0x12c

.field private static final ANIMATION_DELAY_SHORT:I = 0x64

.field private static final ANIMATION_DELAY_VERY_LONG:I = 0x258

.field private static final ANIMATION_DURATION:I = 0x28a

.field private static final CUBIC_BEZIER_IN:Landroid/view/animation/Interpolator;

.field private static final CUBIC_BEZIER_OUT:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "NetflixAnimatedButton"


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

.field private mButtonPadding:I

.field private mInitialButtonWidth:I

.field private mInitialTranslation:I

.field private final mResizeAnimator:Landroid/animation/ValueAnimator;

.field private final mTextView:Landroid/widget/TextView;

.field private final mTranslatorAnimator:Landroid/animation/ValueAnimator;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    const v0, 0x3e6b851f    # 0.23f

    const v1, 0x3ea3d70a    # 0.32f

    invoke-static {v0, v2, v1, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_IN:Landroid/view/animation/Interpolator;

    .line 38
    const v0, 0x3f0ccccd    # 0.55f

    const v1, 0x3d6147ae    # 0.055f

    const v2, 0x3f2ccccd    # 0.675f

    const v3, 0x3e428f5c    # 0.19f

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mVisible:Z

    .line 42
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    .line 44
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    .line 46
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 60
    sget v0, Lcom/netflix/android/widgetry/R$layout;->netflix_animated_button:I

    invoke-static {p1, v0, p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget v0, Lcom/netflix/android/widgetry/R$id;->nab_text:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixButtonDrawable;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAttributes:Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;

    iget v0, v0, Lcom/netflix/mediaclient/android/widget/NetflixButtonAttributes;->initialWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialButtonWidth:I

    .line 68
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialButtonWidth:I

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialTranslation:I

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mButtonPadding:I

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->setAlpha(F)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private varargs isAnimationRunning([Landroid/animation/ValueAnimator;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 157
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0

    .line 156
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private triggerAlphaAnimation(FFII)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 148
    return-void
.end method

.method private triggerButtonResizeAnimation(IIIILandroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$1;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    return-void
.end method

.method private triggerTextTranslationAnimation(IIIILandroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$2;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 120
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 12

    .prologue
    const/16 v7, 0x28a

    const/16 v8, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 202
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mVisible:Z

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mVisible:Z

    .line 208
    if-nez p1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialButtonWidth:I

    sget-object v5, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_OUT:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerButtonResizeAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 210
    iget v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialTranslation:I

    sget-object v7, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_OUT:Landroid/view/animation/Interpolator;

    move-object v2, p0

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerTextTranslationAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 211
    invoke-direct {p0, v11, v10, v3, v3}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerAlphaAnimation(FFII)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialButtonWidth:I

    sget-object v9, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_OUT:Landroid/view/animation/Interpolator;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerButtonResizeAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 214
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialTranslation:I

    sget-object v9, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_OUT:Landroid/view/animation/Interpolator;

    move-object v4, p0

    move v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerTextTranslationAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 215
    const/16 v0, 0x145

    const/16 v1, 0x258

    invoke-direct {p0, v11, v10, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerAlphaAnimation(FFII)V

    goto :goto_0
.end method

.method public isVisibleInViewPort()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mVisible:Z

    return v0
.end method

.method public setText(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public show(Z)V
    .locals 12

    .prologue
    const/16 v8, 0x12c

    const/4 v4, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mResizeAnimator:Landroid/animation/ValueAnimator;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTranslatorAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->isAnimationRunning([Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iput-boolean v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mVisible:Z

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    .line 171
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mButtonPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialButtonWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->setPadding(IIII)V

    .line 178
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->requestLayout()V

    .line 185
    invoke-virtual {p0, v10}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 189
    if-nez p1, :cond_2

    .line 190
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialButtonWidth:I

    sget-object v5, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_IN:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerButtonResizeAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 191
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialTranslation:I

    sget-object v6, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerTextTranslationAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 192
    invoke-direct {p0, v10, v11, v3, v3}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerAlphaAnimation(FFII)V

    goto :goto_0

    .line 195
    :cond_2
    iget v5, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialButtonWidth:I

    const/16 v7, 0x28a

    sget-object v9, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_IN:Landroid/view/animation/Interpolator;

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerButtonResizeAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 196
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->mInitialTranslation:I

    const/16 v4, 0x28a

    sget-object v6, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->CUBIC_BEZIER_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerTextTranslationAnimation(IIIILandroid/view/animation/Interpolator;)V

    .line 197
    const/16 v0, 0x145

    const/16 v1, 0x64

    invoke-direct {p0, v10, v11, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->triggerAlphaAnimation(FFII)V

    goto :goto_0
.end method
