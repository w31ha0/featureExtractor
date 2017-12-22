.class public Lcom/netflix/mediaclient/ui/player/PlayScreen;
.super Ljava/lang/Object;
.source "PlayScreen.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/Screen;
.implements Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;


# static fields
.field static final EANBLE_DEBUG_METADAT:Z = false

.field static final FORCE_SCOPED_BIF:Z = true

.field protected static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field private currentTimelineProgress:I

.field protected listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

.field protected mBackground:Landroid/widget/RelativeLayout;

.field protected mBif:Landroid/widget/ImageView;

.field private mBifAnim:Landroid/view/ViewPropertyAnimator;

.field protected mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

.field protected mBufferingOverlay:Landroid/view/View;

.field protected mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mDebugData:Landroid/widget/TextView;

.field protected mDebugGraphicOverlay:Landroid/widget/ImageView;

.field private mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

.field protected mFlipper:Landroid/widget/ViewFlipper;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field private mIsAdvisoryDisabled:Z

.field protected mLoadingOverlay:Landroid/view/View;

.field protected mNavigationBarSetVisibleInProgress:Z

.field private mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field private mPlaybackControlOverlayId:Ljava/lang/String;

.field private mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

.field private mQuickActions:Landroid/view/View;

.field private mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

.field private mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field protected final mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

.field protected mTabletBifsLayout:Landroid/view/View;

.field protected mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

.field protected mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

.field private mZoomEnabled:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V
    .locals 3

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    .line 194
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 199
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    .line 201
    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/TopPanel;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    .line 202
    new-instance v0, Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    .line 204
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 205
    const v0, 0x7f1002bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->addTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)V

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p2, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    :cond_3
    const v0, 0x7f1001d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    .line 216
    const v0, 0x7f1001d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f1002be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    .line 228
    const v0, 0x7f1002d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBufferingOverlay:Landroid/view/View;

    .line 229
    const v0, 0x7f1002bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mLoadingOverlay:Landroid/view/View;

    .line 231
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->shouldShowScopedBif(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f1002d0

    .line 232
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f1002cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    .line 235
    const v0, 0x7f1002c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    .line 236
    invoke-static {p1, p3}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory;->create(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    .line 238
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;->shouldShowSkipCreditsButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    const v0, 0x7f1002ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    .line 242
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 243
    return-void

    .line 231
    :cond_5
    const v0, 0x7f1002bd

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/PlayScreen;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    return p1
.end method

.method static createInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 4

    .prologue
    .line 1126
    const/4 v0, 0x0

    .line 1127
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    .line 1128
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 1129
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for JB (Android 4.1+"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenJB;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 1145
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1146
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Froyo/Gingerbread (Android 2.2-2.3) - default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    .line 1150
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    .line 1152
    return-object v0

    .line 1131
    :cond_2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "Amazon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFOT"

    .line 1132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFJWA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "KFJWI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1133
    :cond_3
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Amazon Kindle HD"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleHD;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto :goto_0

    .line 1135
    :cond_4
    const/16 v2, 0xe

    if-lt v1, v2, :cond_5

    .line 1136
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for ICS (Android 4+"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenICS;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto :goto_0

    .line 1138
    :cond_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Kindle Fire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayScreen for Amazon Kindle Fire"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenKindleFire;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)V

    goto/16 :goto_0
.end method

.method public static isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z
    .locals 1

    .prologue
    .line 534
    if-eqz p0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZoomEnabled()Z
    .locals 1

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->canVideoBeZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    const/4 v0, 0x1

    .line 1282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToInterrupted()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 355
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    .line 357
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method private moveToLoaded()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 463
    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "STATE_LOADED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 466
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0100

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 469
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setBackgroundColor(I)V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playbackControls:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    .line 481
    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->hide(Z)V

    .line 487
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 465
    goto :goto_0
.end method

.method private moveToLoadedTapped()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    const-string/jumbo v0, "screen"

    const-string/jumbo v3, "STATE_LOADED_TAPPED"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 494
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0100

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 497
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 500
    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v3, :cond_1

    .line 501
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setBackgroundColor(I)V

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playbackControls:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPlaybackControlOverlayId:Ljava/lang/String;

    .line 505
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playerOverlayVisibility(Z)V

    .line 507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->show(Z)V

    .line 510
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 493
    goto :goto_0
.end method

.method private moveToLoading()V
    .locals 2

    .prologue
    .line 373
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "STATE_LOADING, default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method private moveToSkipCredits()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 513
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 518
    :cond_0
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 519
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->show(Z)V

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->setShowSkipButtonIndependentlyOfPlayerControls(Z)V

    .line 525
    :cond_1
    return-void
.end method

.method static resolveContentView(Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)I
    .locals 2

    .prologue
    .line 1347
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_1

    .line 1349
    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_phone_episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const v0, 0x7f0300c8

    .line 1364
    :goto_0
    return v0

    .line 1352
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_3

    .line 1354
    :cond_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_tablet_episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const v0, 0x7f0300cc

    goto :goto_0

    .line 1358
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    if-ne p0, v0, :cond_4

    .line 1359
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_tablet_movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const v0, 0x7f0300cd

    goto :goto_0

    .line 1363
    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "playout_phone_movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const v0, 0x7f0300c9

    goto :goto_0
.end method

.method private setToolbarVisibility(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    .line 448
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_3

    .line 453
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 454
    :cond_2
    if-eq v0, p1, :cond_3

    .line 455
    invoke-static {v1, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 459
    :cond_3
    return-void
.end method

.method public static shouldShowScopedBif(Z)Z
    .locals 1

    .prologue
    .line 1441
    if-nez p0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method addWatermark(Lcom/netflix/mediaclient/media/Watermark;)V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 1384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    .line 1390
    const/16 v0, 0x77

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setGravity(I)V

    .line 1392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 1393
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setPadding(IIII)V

    .line 1394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0901b9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1404
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/media/Watermark;->getStyle(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->applyStyle(Landroid/widget/TextView;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    .line 1406
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1408
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1409
    sget-object v2, Lcom/netflix/mediaclient/media/Watermark$Anchor;->top_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getAnchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 1410
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1414
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mWatermarkDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    :cond_0
    return-void

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 1412
    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method public declared-synchronized canExitPlaybackEndOfPlay()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 927
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v2, v3, :cond_0

    .line 928
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "We are in post play state, do not exit player activity"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :goto_0
    monitor-exit p0

    return v0

    .line 932
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->wasPostPlayDismissed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Postplay was dismissed, force postplay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 935
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V

    .line 936
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setBackgroundImageVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 941
    :cond_1
    :try_start_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v2, "Not in postplay, exit activity"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 942
    goto :goto_0
.end method

.method public changeActionState(Z)V
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(ZZ)V

    .line 962
    return-void
.end method

.method public changeActionState(ZZ)V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 973
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "changeActionState() was called when activity is already not in valid state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_2

    .line 978
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_3

    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->changeActionState(Z)V

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->changeActionState(ZZ)V

    goto :goto_0
.end method

.method clearPanel()V
    .locals 2

    .prologue
    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_0

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0
.end method

.method createAdvisories()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 248
    if-nez v0, :cond_1

    .line 249
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PlayerFragment getCurrentAsset() is null. Advisory notice is disabled."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    goto :goto_0
.end method

.method declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 762
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->removeTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)Z

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->destroy()V

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_3

    .line 776
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->destroy()V

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_4

    .line 780
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->destroy()V

    .line 783
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_5

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_5
    monitor-exit p0

    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableButtons(Z)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 633
    return-void
.end method

.method public finishDragging()V
    .locals 2

    .prologue
    .line 647
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTopPanelVisibility(Z)V

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->finishDragging()V

    .line 654
    return-void
.end method

.method public getController()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimelineProgress()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->currentTimelineProgress:I

    return v0
.end method

.method public getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    return-object v0
.end method

.method getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->listeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    return-object v0
.end method

.method getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    return-object v0
.end method

.method public getSkipCreditsButton()Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    return-object v0
.end method

.method public final getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    return-object v0
.end method

.method public getTimeStringForMs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getFormatter()Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeXAndUpdateHandler(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    return-object v0
.end method

.method hideAdvisories()V
    .locals 0

    .prologue
    .line 300
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismissAll()V

    .line 301
    return-void
.end method

.method hideNavigationBar()V
    .locals 2

    .prologue
    .line 1318
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "hide nav noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void
.end method

.method protected hideQuickActions()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mQuickActions:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_0
    return-void
.end method

.method public hideTopBottomPanel()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->hide()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    .line 443
    :cond_1
    return-void
.end method

.method declared-synchronized inInterruptedOrPendingInterrupted()Z
    .locals 2

    .prologue
    .line 1336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized inPostPlayOrPendingPostplay()Z
    .locals 2

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initProgress(I)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->initProgress(I)V

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    .line 686
    :cond_0
    return-void
.end method

.method isAdvisoryDisabled()Z
    .locals 1

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mIsAdvisoryDisabled:Z

    return v0
.end method

.method public moveToPostPlay()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 366
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "POST_PLAY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 368
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionToPostPlay()V

    .line 370
    return-void
.end method

.method declared-synchronized moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "moveToState() mController is already in finishing state, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 312
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, p1, :cond_1

    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 320
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_3

    .line 321
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoading()V

    .line 336
    :goto_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPendingState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_4

    .line 323
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoaded()V

    goto :goto_1

    .line 324
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_5

    .line 325
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToLoadedTapped()V

    goto :goto_1

    .line 326
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_6

    .line 327
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToPostPlay()V

    goto :goto_1

    .line 328
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_7

    .line 329
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToInterrupted()V

    goto :goto_1

    .line 330
    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne p1, v0, :cond_8

    .line 331
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToSkipCredits()V

    goto :goto_1

    .line 333
    :cond_8
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Invalid state set, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 1181
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1201
    :cond_1
    return-void
.end method

.method public onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    .line 1187
    :cond_0
    return-void
.end method

.method onPause()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onPause()V

    .line 745
    :cond_0
    return-void
.end method

.method onResume()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onResume()V

    .line 755
    :cond_0
    return-void
.end method

.method public onSkipCreditsClicked(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1246
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "CreditMarks - Seeking player to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    .line 1248
    return-void
.end method

.method onStart()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStart()V

    .line 724
    :cond_0
    return-void
.end method

.method onStop()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStop()V

    .line 735
    :cond_0
    return-void
.end method

.method onTap(Z)V
    .locals 2

    .prologue
    .line 550
    if-nez p1, :cond_2

    .line 551
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Hack to make player overlay visible on ICS+ devices. It is only called when event is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    if-eqz v0, :cond_1

    .line 553
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Navigation bar visibility was already triggered. Ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Navigation bar is now visible. Make player overlay visible."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    .line 564
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_3

    .line 565
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Loading, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_2
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Event is received. We are either not on ICS+ phone or this is tap to hide overlay."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mNavigationBarSetVisibleInProgress:Z

    goto :goto_1

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_4

    .line 567
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_5

    .line 569
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to PlayingWithTrickPlayOverlay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0

    .line 571
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_6

    .line 572
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to Playing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0

    .line 574
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_8

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->wasPostPlayDismissed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 576
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "PostPlay was dismissed before, stay in it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    goto/16 :goto_0

    .line 581
    :cond_7
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Move to PlayingWithTrickPlayOverlay from post play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mPostPlayManager:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    .line 584
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideNavigationBar()V

    goto/16 :goto_0

    .line 588
    :cond_8
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "This should not be possible, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 3

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p2, v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 1175
    :goto_0
    return-void

    .line 1173
    :cond_0
    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoDetailsFetched not passing to decorator, playbackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    .line 658
    return-void
.end method

.method protected playerOverlayVisibility(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 388
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getController()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 389
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    :cond_0
    const/4 v0, 0x1

    .line 391
    :goto_0
    if-eqz p1, :cond_1

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 393
    :cond_1
    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->hide()V

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    .line 420
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    if-nez v1, :cond_6

    .line 423
    :cond_5
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->onPlayerOverlayVisibiltyChange(Z)V

    .line 426
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_7

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    .line 430
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 431
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setToolbarVisibility(Z)V

    .line 433
    :cond_8
    return-void

    .line 389
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :cond_a
    if-eqz v0, :cond_b

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 410
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    if-eqz v0, :cond_c

    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isZoomEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->show()V

    .line 415
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->show()V

    goto :goto_1
.end method

.method removeSplashScreen()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_1

    .line 695
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "=========================>"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 699
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    .line 701
    :cond_1
    return-void
.end method

.method setBufferingOverlayVisibility(Z)V
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBufferingOverlay:Landroid/view/View;

    .line 881
    if-nez v0, :cond_0

    .line 882
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bufferingOverlay is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :goto_0
    return-void

    .line 892
    :cond_0
    if-eqz p1, :cond_1

    .line 893
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Display buffering overlay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 900
    :cond_1
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Remove buffering overlay"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setDebugData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method setDebugDataVisibility(Z)V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public setDebugGraphicOverlayVisibility(Z)V
    .locals 0

    .prologue
    .line 1425
    return-void
.end method

.method public setDecorator(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    .line 1157
    return-void
.end method

.method public setMediaImage(Z)V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->updatePlaybackStatus(Z)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setMediaImage(Z)V

    .line 621
    return-void
.end method

.method public setPlayPauseVisibility(I)V
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setPlayPauseVisibility(I)V

    .line 1292
    return-void
.end method

.method setProgress(IIZ)I
    .locals 1

    .prologue
    .line 602
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->currentTimelineProgress:I

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p3}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setProgress(IIZ)I

    .line 608
    return p1
.end method

.method public setSeekbarTrackingEnabled(Z)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setSeekbarTrackingEnabled(Z)V

    .line 629
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    .line 1112
    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setTitle(Ljava/lang/String;)V

    .line 1115
    :cond_0
    return-void
.end method

.method public setTopPanelVisibility(Z)V
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_0

    .line 996
    if-eqz p1, :cond_2

    .line 997
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_1

    .line 998
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Player UI is NOT visible. Do not make top panel visible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->show()V

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hide()V

    goto :goto_0
.end method

.method public setZoom(Z)V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    .line 1206
    if-eqz p1, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSurface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMode(I)V

    goto :goto_0
.end method

.method public setZoomEnabledByPlayertype(Z)V
    .locals 0

    .prologue
    .line 1270
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mZoomEnabled:Z

    .line 1271
    return-void
.end method

.method public setZoomImage(Z)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomImage(Z)V

    .line 625
    return-void
.end method

.method public setZoomVisibility(I)V
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->setZoomVisibility(I)V

    .line 1299
    return-void
.end method

.method protected shouldPlaybackRelatedOptionBePossible()Z
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAdvisories()V
    .locals 0

    .prologue
    .line 296
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->showAll()V

    .line 297
    return-void
.end method

.method public showBif(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->setBifDownloaded(Z)V

    .line 1019
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1020
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->shouldShowScopedBif(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 1023
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1024
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v3

    .line 1025
    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1026
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1029
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1030
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1031
    if-eqz v0, :cond_4

    .line 1032
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1017
    goto :goto_1

    .line 1034
    :cond_4
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bitmap is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    :cond_5
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "bif data is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showBottomPanel()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->show()V

    .line 675
    return-void
.end method

.method showNavigationBar()V
    .locals 2

    .prologue
    .line 1325
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "show nav noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void
.end method

.method showSplashScreen()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mState:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v0, v1, :cond_0

    .line 709
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "=========================> display spash screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 714
    :cond_0
    return-void
.end method

.method public startBif(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1042
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->shouldShowScopedBif(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1047
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    .line 1052
    :goto_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showBif(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method startCurrentTime(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    .line 1083
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->start(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public startDragging()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, v0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(ZZ)V

    .line 637
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTopPanelVisibility(Z)V

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mDecorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->startDragging()V

    .line 644
    return-void
.end method

.method public startSeamlessMode()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public stopBif()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1056
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isTablet()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->shouldShowScopedBif(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBifAnim:Landroid/view/ViewPropertyAnimator;

    .line 1065
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTabletBifsLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBif:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method stopCurrentTime(Z)V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mBottomPanel:Lcom/netflix/mediaclient/ui/player/BottomPanel;

    .line 1099
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1100
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->stop(Z)V

    goto :goto_0
.end method

.method public updatePlaybackPosition(JJ)V
    .locals 7

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->updatePlaybackPosition(JJ)Z

    .line 1218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;->shouldShowSkipCreditsButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getCreditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v4

    .line 1229
    if-eqz v4, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlaybackSeekWindowSizeMs()I

    move-result v5

    move-wide v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->isWithinCreditMarks(JLcom/netflix/model/leafs/blades/CreditMarks;ILcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mSkipCreditsButton:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->isShowSkipButtonIndependentlyOfPlayerControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    goto :goto_0
.end method
