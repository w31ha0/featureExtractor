.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;
.source "BarkerMovieDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarkerMovieDetailsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerDetailActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerDetailActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlpha(F)V

    .line 27
    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    move-result-object v0

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/IHandleBackPress;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/IHandleBackPress;->handleBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 19
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 43
    const v0, 0x7f100001

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 44
    return-void
.end method
