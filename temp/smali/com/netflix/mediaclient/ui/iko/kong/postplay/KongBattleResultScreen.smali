.class public Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;
.super Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;
.source "KongBattleResultScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KongBattleResultScreen"


# instance fields
.field private battleAgainSoundUrl:Ljava/lang/String;

.field private battleAgainSoundVolume:F

.field private battleResultAvatar:Landroid/widget/ImageView;

.field private battleResultAvatarSoundId:I

.field private battleResultAvatarSoundUrl:Ljava/lang/String;

.field private battleResultAvatarSoundVolume:F

.field private battleResultBattleAgainSoundId:I

.field private battleResultDataSoundUrl:Ljava/lang/String;

.field private battleResultDataSoundVolume:F

.field private battleResultSoundId:I

.field private hasWatchedAllBattlesForEpisode:Z

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private leftGateWidth:I

.field private resultAvatarImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->interpolator:Landroid/animation/TimeInterpolator;

    .line 44
    return-void
.end method


# virtual methods
.method hide()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 116
    return-void
.end method

.method initViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->leftGateWidth:I

    .line 79
    const v0, 0x7f1002b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    .line 80
    return-void
.end method

.method loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultAvatarImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->resultAvatarImageUrl:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultDataSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultDataSoundUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultDataSoundVolume:F

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultBattleSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleAgainSoundUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleAgainSoundVolume:F

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultAvatarSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatarSoundUrl:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatarSoundVolume:F

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPostPlayState()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->hasWatchedAllBattleVideosForEpisode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->hasWatchedAllBattlesForEpisode:Z

    .line 73
    :cond_3
    return-void
.end method

.method loadResources()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->resultAvatarImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->loadSoundPoolResources()V

    .line 89
    return-void
.end method

.method loadSoundPoolResources()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "KongBattleResultScreen"

    const-string/jumbo v1, "Sound pool manager is null. Cannot load VO resources."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultDataSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultSoundId:I

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleAgainSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultBattleAgainSoundId:I

    .line 104
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatarSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatarSoundId:I

    goto :goto_0
.end method

.method onResourcesLoaded()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method playAvatarSound()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatarSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatarSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 202
    :cond_0
    return-void
.end method

.method playBattleAgainSound()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultBattleAgainSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleAgainSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 188
    :cond_0
    return-void
.end method

.method playBattleResultSound()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultDataSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 195
    :cond_0
    return-void
.end method

.method public releaseBitmapResources()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 126
    return-void
.end method

.method start()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->startAnimation()Z

    .line 121
    return-void
.end method

.method startAnimation()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cancelCurrentAnimation()V

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->playAvatarSound()V

    .line 131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->playBattleResultSound()V

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleIntroContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getNextEpisodeContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v5, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGoneAnimation(Landroid/view/View;ZZ)V

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getUnlockingGearContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getGear1Group()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getGear2Group()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setClickable(Z)V

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getNextEpisodeView()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getGear1Group()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getGear2Group()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->shouldHideAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 155
    :goto_0
    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setCurrentAnimation(Landroid/animation/Animator;)V

    .line 179
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 180
    return v5

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->leftGateWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->battleResultAvatar:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method
