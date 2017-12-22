.class public final Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;
.super Ljava/lang/Object;
.source "PlaybackLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_play"

.field public static final UNDEFINED_START_TIME:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 354
    invoke-static {p0, v3, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 356
    return-void
.end method

.method private static getOldPlaybackIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 119
    const-string/jumbo v1, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    :goto_0
    const-string/jumbo v1, "SeamlessMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "play_launched_by"

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->netflixActivityToPlayLaunchedBy(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 126
    return-object v0

    .line 121
    :cond_0
    const-string/jumbo v1, "nf_play"

    const-string/jumbo v2, "Start time parameter was ignored since it exceeds the total duration."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isExisitingMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v2, "MDX service is NOT ready"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return v1

    .line 261
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v3

    .line 262
    if-eqz v3, :cond_1

    array-length v0, v3

    if-ge v0, v2, :cond_2

    .line 263
    :cond_1
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v2, "No MDX remote targets found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 267
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 268
    aget-object v4, v3, v0

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Target found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 270
    goto :goto_0

    .line 267
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_4
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v2, "Target NOT found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logMdx(Lcom/netflix/mediaclient/servicemgr/IMdx;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method private static netflixActivityToPlayLaunchedBy(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;
    .locals 1

    .prologue
    .line 130
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->DetailsScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    .line 139
    :goto_0
    return-object v0

    .line 132
    :cond_0
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->HomeScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    goto :goto_0

    .line 134
    :cond_1
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-eqz v0, :cond_2

    .line 135
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->PlayerScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    goto :goto_0

    .line 136
    :cond_2
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-eqz v0, :cond_3

    .line 137
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->LaunchActivity:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    goto :goto_0

    .line 139
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->Unknown:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    goto :goto_0
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V
    .locals 1

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->getOldPlaybackIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)V

    .line 70
    return-void
.end method

.method public static playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p3, p4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    .line 82
    return-void
.end method

.method public static shouldPlayOnRemoteTarget(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    const-string/jumbo v1, "nf_play"

    const-string/jumbo v2, "MDX or service manager are null! That should NOT happen. Default to local."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->logMdx(Lcom/netflix/mediaclient/servicemgr/IMdx;)V

    .line 159
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    const-string/jumbo v1, "nf_play"

    const-string/jumbo v2, "Local target, play on device"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->isExisitingMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static startMdxPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    .prologue
    .line 287
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    .line 288
    return-void
.end method

.method public static startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->whereToPlay(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    move-result-object v0

    .line 296
    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$1;->$SwitchMap$com$netflix$mediaclient$ui$common$PlaybackLauncher$PlaybackTarget:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 298
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    goto :goto_0

    .line 301
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    goto :goto_0

    .line 304
    :pswitch_2
    const v0, 0x7f0901be

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0

    .line 307
    :pswitch_3
    const v0, 0x7f0901bf

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    .line 280
    return-void
.end method

.method public static startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;I)V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    .line 284
    return-void
.end method

.method public static startPlaybackForceLocal(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    .line 318
    return-void
.end method

.method public static startPlaybackForceRemote(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    .line 314
    return-void
.end method

.method public static startPlaybackOnPINSuccess(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 325
    if-eqz p2, :cond_1

    .line 329
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Starting MDX remote playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p0, p1, p3, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;IZ)Z

    move-result v0

    .line 332
    if-nez v0, :cond_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Start local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    goto :goto_0

    .line 343
    :cond_2
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local playback is disabled, we can not start playback!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const v0, 0x7f0901be

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->displayErrorDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    goto :goto_0
.end method

.method private static verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V
    .locals 5

    .prologue
    .line 359
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "nf_pin verifyPinAndPlay - %s ageProtected: %b, pinProtected:%b, previewProtected: %b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 360
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPreviewProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 359
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAY_LAUNCHER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    .line 363
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V

    .line 366
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v1

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    .line 367
    return-void
.end method

.method public static whereToPlay(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
    .locals 4

    .prologue
    .line 176
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-nez v0, :cond_3

    .line 177
    :cond_0
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "MDX or service manager are null! That should NOT happen. Default to local."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "MDX manager null, but configuration exist and local playback is enabled, go local."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 225
    :goto_0
    return-object v0

    .line 183
    :cond_1
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "MDX manager null, but configuration exist and local playback is disabled, display an error."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->localButDisabled:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    .line 187
    :cond_2
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Service manager not available or ready! Guess that local playback is enabled! We should never end here!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v0

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    .line 194
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->logMdx(Lcom/netflix/mediaclient/servicemgr/IMdx;)V

    .line 196
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 198
    if-eqz v0, :cond_4

    .line 199
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local target, play on device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    .line 202
    :cond_4
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local target, but local playback disabled. Try to find at least one remote target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_6

    .line 205
    :cond_5
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Local target, local playback disabled and no remote targets. Display an error."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->localButDisabled:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    .line 211
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setCurrentTarget(Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    .line 217
    :cond_7
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->isExisitingMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto :goto_0

    .line 220
    :cond_8
    if-eqz v0, :cond_9

    .line 221
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Remote target not available and local playback enabled, play on device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto/16 :goto_0

    .line 224
    :cond_9
    const-string/jumbo v0, "nf_play"

    const-string/jumbo v1, "Remote target not available and local playback disabled, report an error!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remoteButNotAvailable:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    goto/16 :goto_0
.end method
