.class Lcom/mopub/nativeads/SpinningProgressView;
.super Landroid/view/ViewGroup;
.source "SpinningProgressView.java"


# instance fields
.field private final mProgressBar:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressIndicatorRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 28
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/SpinningProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/SpinningProgressView;->setVisibility(I)V

    .line 31
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/SpinningProgressView;->setBackgroundColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/mopub/nativeads/SpinningProgressView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 34
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 35
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p0}, Lcom/mopub/nativeads/SpinningProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressIndicatorRadius:I

    .line 36
    iget-object v1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 37
    iget-object v1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/SpinningProgressView;->addView(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method addToRoot(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 61
    check-cast v1, Landroid/view/ViewGroup;

    .line 63
    .local v1, "rootViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/SpinningProgressView;->setVisibility(I)V

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/mopub/nativeads/SpinningProgressView;->setMeasuredDimension(II)V

    .line 66
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/mopub/nativeads/SpinningProgressView;->forceLayout()V

    .line 68
    const/4 v2, 0x1

    .line 71
    .end local v1    # "rootViewGroup":Landroid/view/ViewGroup;
    :cond_0
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    add-int v2, p2, p4

    div-int/lit8 v0, v2, 0x2

    .line 44
    .local v0, "centerX":I
    add-int v2, p3, p5

    div-int/lit8 v1, v2, 0x2

    .line 45
    .local v1, "centerY":I
    iget-object v2, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressIndicatorRadius:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressIndicatorRadius:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressIndicatorRadius:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressIndicatorRadius:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 53
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_0
    return-void
.end method

.method removeFromRoot()Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/SpinningProgressView;->setVisibility(I)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method
