.class public Lcom/netflix/mediaclient/util/gfx/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field public static final ANIM_DURATION_MS:I = 0x96

.field public static final APPEARANCE_ANIMATION_MS:I = 0x12c

.field private static final LAYOUT_ANIMATION_DELAY_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AnimationUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p3

    .line 140
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 143
    return-void
.end method

.method public static cancelImageDrawableWithCrossFade(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f100007

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->removeCallback(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static createGridLayoutAnimator(Landroid/content/Context;)Landroid/view/animation/LayoutAnimationController;
    .locals 3

    .prologue
    const/high16 v2, 0x3e800000    # 0.25f

    .line 216
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    const/high16 v1, 0x10a0000

    .line 217
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 218
    invoke-virtual {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->setColumnDelay(F)V

    .line 219
    invoke-virtual {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->setRowDelay(F)V

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/GridLayoutAnimationController;->setDirection(I)V

    .line 221
    return-object v0
.end method

.method public static hideView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    if-eqz p1, :cond_1

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0x4b

    new-instance v3, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 101
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static isTransitionAnimationSupported()Z
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setImageDrawableWithCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const v5, 0x7f100007

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    aput-object p1, v1, v2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 55
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->removeCallback(Ljava/lang/Runnable;)V

    .line 59
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$1;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {p0, v5, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 81
    const-wide/16 v2, 0x96

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void
.end method

.method public static showView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 117
    if-nez p0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    const/4 v0, 0x0

    const/16 v1, 0x96

    new-instance v2, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$ShowViewOnAnimatorStart;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$ShowViewOnAnimatorStart;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0, v3, v1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 128
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static showViewIfHidden(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 106
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public static startPressedStateCompleteAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .prologue
    .line 225
    const v0, 0x3f333333    # 0.7f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x96

    invoke-static {p0, v0, v1, v2, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->alphaAnimateView(Landroid/view/View;FFILandroid/animation/Animator$AnimatorListener;)V

    .line 226
    return-void
.end method

.method public static startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 236
    const/16 v0, 0x12c

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;
    .locals 4

    .prologue
    .line 251
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 252
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 253
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 254
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$2;

    invoke-direct {v2, p1, p0, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$2;-><init>(ZLandroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 255
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 294
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 295
    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
