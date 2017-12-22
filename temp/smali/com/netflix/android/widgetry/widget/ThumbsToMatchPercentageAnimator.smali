.class public Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;
.super Ljava/lang/Object;
.source "ThumbsToMatchPercentageAnimator.java"


# static fields
.field private static final CUBIC_BEZIER_DESELECTION:Landroid/view/animation/Interpolator;

.field private static final CUBIC_BEZIER_SELECTION:Landroid/view/animation/Interpolator;

.field private static final STATE_FIRST_HALF:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SECOND_HALF:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_PLACEHOLDER:Ljava/lang/String; = "X"

.field private static final TEXT_SPACE:Ljava/lang/String; = " "


# instance fields
.field private final mBouncyAnimator:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;

.field private final mContainerToAnimate:Landroid/view/ViewGroup;

.field private final mIconWidth:I

.field private mMatchPercentageText:Ljava/lang/String;

.field private final mMatchPercentageTextView:Landroid/widget/TextView;

.field private final mNewLabelId:I

.field private final mPercentStringId:I

.field private final mRtl:Z

.field private mTextHeight:I

.field private mTextWidth:I

.field private final mThumbDownIcon:Landroid/text/Spannable;

.field private final mThumbUpIcon:Landroid/text/Spannable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    const-class v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/utils/LogUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->TAG:Ljava/lang/String;

    .line 69
    const v0, 0x3e333333    # 0.175f

    const v1, 0x3f628f5c    # 0.885f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, 0x3fa33333    # 1.275f

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->CUBIC_BEZIER_SELECTION:Landroid/view/animation/Interpolator;

    .line 72
    const v0, 0x3f19999a    # 0.6f

    const v1, -0x4170a3d7    # -0.28f

    const v2, 0x3f3c28f6    # 0.735f

    const v3, 0x3d3851ec    # 0.045f

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->CUBIC_BEZIER_DESELECTION:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;III)V
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;-><init>(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$1;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mBouncyAnimator:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;

    .line 122
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mContainerToAnimate:Landroid/view/ViewGroup;

    .line 125
    invoke-static {}, Lcom/netflix/android/widgetry/utils/UiUtils;->isCurrentLocaleRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mRtl:Z

    .line 128
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    sget v1, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_up:I

    iget-boolean v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mRtl:Z

    invoke-static {v0, v1, v2, p4}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->getDrawableAsSpannable(Landroid/widget/TextView;IZI)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mThumbUpIcon:Landroid/text/Spannable;

    .line 129
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    sget v1, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_down:I

    iget-boolean v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mRtl:Z

    invoke-static {v0, v1, v2, p4}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->getDrawableAsSpannable(Landroid/widget/TextView;IZI)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mThumbDownIcon:Landroid/text/Spannable;

    .line 131
    iput p2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mPercentStringId:I

    .line 132
    iput p3, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mNewLabelId:I

    .line 134
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mIconWidth:I

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mContainerToAnimate:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->CUBIC_BEZIER_SELECTION:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->CUBIC_BEZIER_DESELECTION:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;)I
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->getTranslationDirection()I

    move-result v0

    return v0
.end method

.method private static getDrawableAsSpannable(Landroid/widget/TextView;IZI)Landroid/text/Spannable;
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    invoke-static {v0, p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 207
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 208
    invoke-virtual {v1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    if-eqz p2, :cond_0

    .line 211
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v2, "X"

    sget-object v3, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v2, v3}, Lcom/netflix/android/widgetry/utils/UiUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v2, 0x2

    invoke-interface {v0, v1, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v2, "X"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 215
    invoke-interface {v0, v1, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private getTranslationDirection()I
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private prepareTextViewLayout(III)V
    .locals 9

    .prologue
    const v3, 0x7fffffff

    const/4 v7, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 225
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_3

    .line 227
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    const-string/jumbo v1, " "

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 229
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 232
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_0
    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 233
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v8

    :goto_1
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 247
    :goto_2
    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mIconWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    if-nez v2, :cond_6

    :goto_3
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mTextWidth:I

    .line 251
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mTextHeight:I

    .line 255
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mTextWidth:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 256
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mTextHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 259
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mContainerToAnimate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mTextHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mContainerToAnimate:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 261
    return-void

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v5

    goto :goto_0

    .line 233
    :cond_2
    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v6

    goto :goto_1

    .line 237
    :cond_3
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 239
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 242
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_4

    :goto_4
    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 243
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v8

    :goto_5
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_2

    .line 242
    :cond_4
    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v5

    goto :goto_4

    .line 243
    :cond_5
    iget-object v6, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v6

    goto :goto_5

    .line 247
    :cond_6
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    .line 249
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v8

    goto/16 :goto_3
.end method

.method private start(ILjava/lang/CharSequence;IZ)V
    .locals 2

    .prologue
    .line 194
    if-nez p4, :cond_0

    .line 195
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mContainerToAnimate:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->getTranslationDirection()I

    move-result v1

    mul-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mBouncyAnimator:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator$BouncyAnimator;->start(ILjava/lang/CharSequence;I)V

    goto :goto_0
.end method


# virtual methods
.method public update(IIZZ)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v3

    add-int/2addr v2, v3

    .line 144
    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 147
    if-eqz p3, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mNewLabelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    .line 156
    :goto_0
    invoke-direct {p0, v2, v3, p1}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->prepareTextViewLayout(III)V

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_1
    invoke-direct {p0, p1, v0, v1, p4}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->start(ILjava/lang/CharSequence;IZ)V

    .line 184
    return-void

    .line 149
    :cond_1
    if-nez p2, :cond_2

    .line 150
    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mPercentStringId:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mThumbUpIcon:Landroid/text/Spannable;

    .line 164
    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mTextWidth:I

    iget v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mIconWidth:I

    sub-int/2addr v1, v2

    .line 165
    goto :goto_1

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mThumbDownIcon:Landroid/text/Spannable;

    .line 169
    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mTextWidth:I

    iget v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mIconWidth:I

    sub-int/2addr v1, v2

    .line 170
    goto :goto_1

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 175
    iget v1, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mIconWidth:I

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->mMatchPercentageTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/netflix/android/widgetry/utils/UiUtils;->getMarginEnd(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
