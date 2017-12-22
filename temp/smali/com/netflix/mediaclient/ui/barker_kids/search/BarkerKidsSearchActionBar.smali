.class public Lcom/netflix/mediaclient/ui/barker_kids/search/BarkerKidsSearchActionBar;
.super Lcom/netflix/mediaclient/android/widget/SearchActionBar;
.source "BarkerKidsSearchActionBar.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getActiveSearchIconResId()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0201b7

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f03001d

    return v0
.end method

.method protected getSearchCloseButtonTint()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/search/BarkerKidsSearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchViewBgResId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f020249

    return v0
.end method

.method protected getSearchViewRightBgResId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f02024b

    return v0
.end method

.method protected getSearchViewTextColorResId()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f0f0021

    return v0
.end method

.method protected getSearchVoiceButtonTint()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/search/BarkerKidsSearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
