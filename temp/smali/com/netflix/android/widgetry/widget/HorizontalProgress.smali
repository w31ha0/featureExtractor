.class public Lcom/netflix/android/widgetry/widget/HorizontalProgress;
.super Landroid/view/View;
.source "HorizontalProgress.java"


# instance fields
.field private mAnimatedVector:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->sharedConstructor(Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->sharedConstructor(Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->sharedConstructor(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private sharedConstructor(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$drawable;->avd_progress_indeterminate_horizontal:I

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->mAnimatedVector:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 41
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->mAnimatedVector:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 48
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->mAnimatedVector:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->mAnimatedVector:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->mAnimatedVector:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->mAnimatedVector:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 58
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 59
    return-void
.end method
