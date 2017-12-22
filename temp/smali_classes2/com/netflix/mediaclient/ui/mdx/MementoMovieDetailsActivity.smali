.class public Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;
.source "MementoMovieDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoMovieDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected hideCastPlayer()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected initSlidingPanel()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->initSlidingPanel()V

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 22
    return-void
.end method

.method public notifyCastPlayerShown(Z)V
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "expandCastPlayer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 29
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 32
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;->setRequestedOrientation(I)V

    .line 34
    :cond_0
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected showCastPlayer()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
