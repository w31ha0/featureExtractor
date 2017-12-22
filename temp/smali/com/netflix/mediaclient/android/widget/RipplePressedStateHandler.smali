.class public Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;
.super Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
.source "RipplePressedStateHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;-><init>(Landroid/view/View;)V

    .line 17
    sget-boolean v0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method protected handlePressCancelled(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    instance-of v0, p1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getForegroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 51
    :cond_0
    return-void
.end method

.method protected handlePressComplete(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler$1;-><init>(Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;)V

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startPressedStateCompleteAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    return-void
.end method

.method protected handlePressStarted(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 23
    instance-of v0, p1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getForegroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 29
    :cond_0
    return-void

    .line 26
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method
