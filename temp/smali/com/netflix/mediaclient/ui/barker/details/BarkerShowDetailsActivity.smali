.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;
.source "BarkerShowDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarkerShowDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerDetailActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerDetailActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlpha(F)V

    .line 26
    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method protected createSecondaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->handleBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 18
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 52
    const v0, 0x7f100001

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 53
    return-void
.end method

.method protected setupFrags()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->bringToFront()V

    .line 42
    return-void
.end method
