.class Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;
.super Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;
.source "LomoAdapter.java"

# interfaces
.implements Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;


# instance fields
.field private final pulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

.field private final pulseDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)V
    .locals 2

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 328
    invoke-virtual {p3}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->lightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const v0, 0x7f02006b

    .line 333
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;->pulseDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 334
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;->view:Landroid/view/View;

    .line 335
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;->pulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    .line 336
    return-void

    .line 331
    :cond_0
    const v0, 0x7f02006a

    goto :goto_0
.end method


# virtual methods
.method bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;->pulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->onPulseAttached()V

    .line 356
    return-void
.end method

.method doTrackingIfVisibleOnScreen()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public getImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public getPulseDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;->pulseDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public onViewRecycled()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;->onViewRecycled()V

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;->pulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->onPulseDetached()V

    .line 362
    return-void
.end method
