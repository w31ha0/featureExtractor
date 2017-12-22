.class public Lcom/netflix/mediaclient/util/gfx/AnimationUtils$AnimateOnHardwareLayer;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final views:[Landroid/view/View;


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$AnimateOnHardwareLayer;->views:[Landroid/view/View;

    .line 187
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$AnimateOnHardwareLayer;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 208
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$AnimateOnHardwareLayer;->views:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 201
    invoke-static {v4, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setLayerType(Landroid/view/View;I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$AnimateOnHardwareLayer;->views:[Landroid/view/View;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 193
    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setLayerType(Landroid/view/View;I)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method
