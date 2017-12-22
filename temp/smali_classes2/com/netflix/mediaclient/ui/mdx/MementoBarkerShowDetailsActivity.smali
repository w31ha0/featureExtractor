.class public Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;
.source "MementoBarkerShowDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoBarkerShowDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected hideCastPlayer()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected initSlidingPanel()V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->initSlidingPanel()V

    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 19
    return-void
.end method

.method public notifyCastPlayerShown(Z)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 28
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 29
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;->setRequestedOrientation(I)V

    .line 31
    :cond_0
    return-void
.end method

.method protected showCastPlayer()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
