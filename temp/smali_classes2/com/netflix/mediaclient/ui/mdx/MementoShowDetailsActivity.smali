.class public Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;
.source "MementoShowDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoShowDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected hideCastPlayer()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected initSlidingPanel()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->initSlidingPanel()V

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 23
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 24
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 27
    return-void
.end method

.method public notifyCastPlayerShown(Z)V
    .locals 3

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "expandCastPlayer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 34
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;->setRequestedOrientation(I)V

    .line 36
    :cond_0
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected showCastPlayer()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
