.class public Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;
.super Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;
.source "WPWordWallyCardLayout.java"


# instance fields
.field private preferredHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected createVideoMask()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public getCardHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->preferredHeight:I

    return v0
.end method

.method protected onHideVideo()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->setVisibility(I)V

    .line 86
    return-void
.end method

.method protected onVideoPlaybackStarted()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->setVisibility(I)V

    .line 81
    return-void
.end method

.method protected storeViews(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    .line 37
    const v0, 0x3eb851ec    # 0.36f

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenAspectRatio(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 40
    const v0, 0x3ecccccd    # 0.4f

    .line 42
    :cond_0
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 43
    int-to-float v1, v0

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->preferredHeight:I

    .line 45
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardImageView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->setAdjustViewBounds(Z)V

    .line 55
    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPWordWallyCardLayout{preferredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->preferredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method
