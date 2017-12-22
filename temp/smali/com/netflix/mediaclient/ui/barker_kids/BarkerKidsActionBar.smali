.class public Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.source "BarkerKidsActionBar.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f03001d

    return v0
.end method

.method public setSandwichIcon(Z)V
    .locals 2

    .prologue
    .line 20
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f02012a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 21
    return-void

    .line 20
    :cond_0
    const v0, 0x7f020129

    goto :goto_0
.end method
