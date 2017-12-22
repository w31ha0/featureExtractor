.class Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;
.super Lcom/netflix/mediaclient/ui/common/LanguageSelector;
.source "LanguageSelectorTablet.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected calculateListViewHeight()I
    .locals 5

    .prologue
    .line 35
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Tablet calculate height"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0191

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 48
    :goto_0
    if-gt v0, v2, :cond_2

    move v0, v2

    .line 51
    :cond_0
    :goto_1
    return v0

    .line 43
    :cond_1
    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v0, v3

    goto :goto_0

    .line 51
    :cond_2
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method protected getDialogLayoutId()I
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "R.layout.language_selector_tablet_dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v0, 0x7f030088

    return v0
.end method
