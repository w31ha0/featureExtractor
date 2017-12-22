.class public Lcom/netflix/android/widgetry/buffet/BuffetBar;
.super Ljava/lang/Object;
.source "BuffetBar.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateResource"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I = 0x0

.field static final MSG_SHOW_NO_ANIMATION:I = 0x2

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private mLastBackgroundColor:I

.field final mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field private mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

.field private swipeToDismissEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    aput v2, v0, v1

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->APPCOMPAT_CHECK_ATTRS:[I

    .line 144
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/buffet/BuffetBar$1;

    invoke-direct {v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->sHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mLastBackgroundColor:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->swipeToDismissEnabled:Z

    .line 499
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetBar$3;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$3;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    .line 216
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mTargetParent:Landroid/view/ViewGroup;

    .line 217
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    .line 219
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 222
    sget v1, Lcom/netflix/android/widgetry/R$layout;->design_layout_buffet:I

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    .line 225
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/android/widgetry/buffet/BuffetBar;)Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/android/widgetry/buffet/BuffetBar;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->swipeToDismissEnabled:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    .line 644
    invoke-virtual {v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 645
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 646
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V

    .line 647
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 677
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$anim;->design_snackbar_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 661
    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 662
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 663
    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 675
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    :cond_1
    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    return-void
.end method

.method protected static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 281
    move-object v1, v2

    move-object v0, p0

    .line 283
    :cond_0
    instance-of v3, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 285
    check-cast v0, Landroid/view/ViewGroup;

    .line 305
    :goto_0
    return-object v0

    .line 286
    :cond_1
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1020002

    if-ne v1, v3, :cond_2

    .line 290
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 293
    check-cast v1, Landroid/view/ViewGroup;

    .line 297
    :cond_3
    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 300
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/view/View;

    .line 302
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v1

    .line 305
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 300
    goto :goto_1
.end method

.method public static make(Landroid/view/View;III)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->make(Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-static {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;-><init>(Landroid/view/ViewGroup;)V

    .line 252
    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 253
    invoke-virtual {v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setBackgroundColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 254
    invoke-virtual {v0, p3}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setDuration(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 255
    return-object v0
.end method


# virtual methods
.method animateViewIn()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 604
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 605
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 606
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 607
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    .line 608
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 639
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$anim;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 623
    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 624
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 625
    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$8;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$8;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 637
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->dispatchDismiss(I)V

    .line 469
    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2

    .prologue
    .line 472
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->dismiss(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;I)V

    .line 473
    return-void
.end method

.method protected getBuffetLayout()Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mDuration:I

    return v0
.end method

.method protected getTargetParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mTargetParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 681
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->animateViewOut(I)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewHidden(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrent(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .prologue
    .line 496
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentOrNext(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 2

    .prologue
    .line 697
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    .line 699
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;->onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V

    .line 702
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 708
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setVisibility(I)V

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 712
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 713
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 715
    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 2

    .prologue
    .line 689
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->onShown(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    .line 690
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    invoke-virtual {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;->onShown(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    .line 693
    :cond_0
    return-void
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 330
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :goto_0
    return-object p0

    .line 333
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;

    invoke-direct {v1, p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 363
    return-object p0
.end method

.method public setActionTypeface(Landroid/graphics/Typeface;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 374
    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mLastBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setBackgroundColor(I)V

    .line 392
    iput p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mLastBackgroundColor:I

    .line 394
    :cond_0
    return-object p0
.end method

.method public setCallback(Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mCallback:Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;

    .line 481
    return-object p0
.end method

.method public setDuration(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 0

    .prologue
    .line 428
    iput p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mDuration:I

    .line 429
    return-object p0
.end method

.method public setSwipeToDismissEnabled(Z)V
    .locals 0

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->swipeToDismissEnabled:Z

    .line 353
    return-void
.end method

.method public setText(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 405
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->show(Z)V

    .line 455
    return-void
.end method

.method public show(Z)V
    .locals 3

    .prologue
    .line 461
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mDuration:I

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->show(ILcom/netflix/android/widgetry/buffet/BuffetManager$Callback;Z)V

    .line 462
    return-void
.end method

.method final showView(Z)V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 515
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 517
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 519
    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    .line 520
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 521
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 522
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setSwipeDirection(I)V

    .line 523
    new-instance v2, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 545
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 547
    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$5;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$5;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setOnAttachStateChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;)V

    .line 574
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->animateViewIn()V

    .line 599
    :goto_0
    return-void

    .line 580
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewShown()V

    goto :goto_0

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setOnLayoutChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;)V

    goto :goto_0
.end method
