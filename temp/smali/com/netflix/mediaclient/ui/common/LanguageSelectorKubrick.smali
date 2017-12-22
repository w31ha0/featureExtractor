.class final Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;
.super Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;
.source "LanguageSelectorKubrick.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorTablet;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized display(Lcom/netflix/mediaclient/media/Language;)V
    .locals 4

    .prologue
    .line 36
    monitor-enter p0

    if-nez p1, :cond_0

    .line 37
    :try_start_0
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Language data is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/media/Language;->restoreLanguage(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->language:Lcom/netflix/mediaclient/media/Language;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->language:Lcom/netflix/mediaclient/media/Language;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->language:Lcom/netflix/mediaclient/media/Language;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->initLists(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    .line 56
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;->wasPlaying()Z

    move-result v1

    .line 57
    const v2, 0x7f100214

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;

    invoke-direct {v3, p0, v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;-><init>(Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v1, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;-><init>()V

    .line 66
    const/4 v2, 0x1

    const v3, 0x7f0b0116

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->setStyle(II)V

    .line 67
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$AudioSubtitlesDlg;->setViewAndCallback(Landroid/view/View;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_3
    const-string/jumbo v1, "nf_language_selector"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
