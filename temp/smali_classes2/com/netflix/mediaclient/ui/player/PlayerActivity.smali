.class public Lcom/netflix/mediaclient/ui/player/PlayerActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field static final EXTRA_GET_DETAILS_EPISODE_DETAILS:Ljava/lang/String; = "extra_get_details_EPISODE_DETAILS"

.field static final EXTRA_GET_DETAILS_IS_EPISODE:Ljava/lang/String; = "extra_get_details_is_episode"

.field static final EXTRA_GET_DETAILS_PLAY_CONTEXT_BUNDLE:Ljava/lang/String; = "extra_get_details_play_context_bundle"

.field static final EXTRA_GET_DETAILS_VIDEO_ID:Ljava/lang/String; = "extra_get_details_video_id"

.field static final EXTRA_GET_DETAILS_VIDEO_TYPE:Ljava/lang/String; = "extra_get_details_video_type"

.field public static final INTENT_PLAY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_PLAY"

.field public static final PLAY_LAUNCHED_BY:Ljava/lang/String; = "play_launched_by"

.field private static final TAG:Ljava/lang/String; = "PlayerActivity"


# instance fields
.field private playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method public static createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "extra_get_details_video_type"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-interface {p3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->playContextToBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "extra_get_details_play_context_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method public static getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 2

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "Got null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/Asset;->fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseVideoId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "playableid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string/jumbo v0, "playableid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const-string/jumbo v0, "extra_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string/jumbo v0, "extra_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    const-string/jumbo v0, "extra_get_details_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string/jumbo v0, "extra_get_details_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldResumePreviousPlay(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 162
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->parseVideoId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->parseVideoId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected cleanupAndExit()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const-string/jumbo v1, "extra_get_details_play_context_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    .line 130
    const-string/jumbo v2, "extra_get_details_video_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra_get_details_video_type"

    .line 131
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v2, v3, v1, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createPlayerFragment(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 136
    :goto_0
    const-string/jumbo v1, "SeamlessMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 138
    const-string/jumbo v2, "SeamlessMode"

    const-string/jumbo v3, "SeamlessMode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    :cond_0
    const-string/jumbo v1, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "BookmarkSecondsFromStart"

    const-string/jumbo v3, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createPlayerFragment(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    goto :goto_0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 201
    const v0, 0x7f03006b

    return v0
.end method

.method public getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    return-object v0
.end method

.method public getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    move-result-object v0

    goto :goto_0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method protected hasEmbeddedToolbar()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->invalidateOptionsMenu()V

    .line 304
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "Check if MDX status is changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setTargetSelection()V

    .line 309
    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->shouldResumePreviousPlay(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "Got same video ID - resuming the playback..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v0, "SPY-8343 - PlayerActivity received onNewIntent() prior to onCreate() - skipping to avoid crash"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v0, "extra_get_details_video_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string/jumbo v0, "extra_get_details_play_context_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const-string/jumbo v2, "extra_get_details_video_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra_get_details_video_type"

    .line 117
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setExternalBundle(Landroid/os/Bundle;)V

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->resetCurrentPlayback()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setExternalBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onStop()V

    .line 262
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isApplicationInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "another activity on top, finish SPY-11284"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->finish()V

    .line 266
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onWindowFocusChanged(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 213
    const-string/jumbo v3, "play_launched_by"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const-string/jumbo v3, "play_launched_by"

    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->Unknown:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 215
    const-string/jumbo v3, "PlayerActivity"

    const-string/jumbo v4, "performUpAction launchedBy=%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    if-ltz v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->values()[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 217
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->values()[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    move-result-object v3

    aget-object v2, v3, v2

    .line 218
    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->HomeScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->LaunchActivity:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->performUpAction(Z)V

    .line 226
    :cond_2
    return-void
.end method

.method protected shouldAttachToolbar()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 153
    return-void
.end method
