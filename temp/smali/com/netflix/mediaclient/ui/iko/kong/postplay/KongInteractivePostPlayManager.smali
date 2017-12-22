.class public Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;


# static fields
.field public static final TAG:Ljava/lang/String; = "KongInteractivePostPlayManager"


# instance fields
.field private battleIntroContainer:Landroid/view/ViewGroup;

.field private battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

.field private battleLoseVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private battleResultAvatar:Landroid/widget/ImageView;

.field private battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

.field private battleWinVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private bgScoreUrl:Ljava/lang/String;

.field private bgScoreVolume:F

.field private bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

.field cachingResourcesRunnable:Ljava/lang/Runnable;

.field private currentAnimation:Landroid/animation/Animator;

.field private detailsForPlaybackCallback:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;

.field private exitToStandardPostPlay:Ljava/lang/Runnable;

.field private failureCount:I

.field private gear1Group:Landroid/view/ViewGroup;

.field private gear2Group:Landroid/view/ViewGroup;

.field private gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

.field private final handler:Landroid/os/Handler;

.field private hideAnimations:Z

.field private inKongPostPlay:Z

.field private initialState:Ljava/lang/String;

.field private isCachingInProgress:Z

.field private isEndOfPlayPostPlay:Z

.field private isHighPerfDevice:Z

.field private isInGearSelection:Z

.field private isInKongPostPlay:Z

.field private isLowPerfDevice:Z

.field private kongPostplayContainer:Landroid/view/View;

.field private mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

.field private nextEpisodeContainer:Landroid/view/ViewGroup;

.field private nextEpisodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private final playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private final postPlay:Lcom/netflix/mediaclient/ui/player/PostPlay;

.field private postPlayPaused:Z

.field postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

.field private postPlayType:Ljava/lang/String;

.field private powerUpContainer:Landroid/view/ViewGroup;

.field private powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

.field private preCacheableResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourceResponseCounter:I

.field private resourceToLocalCacheFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private retryCounter:I

.field private soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

.field private trackId:I

.field uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

.field private unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

.field private unlockingGearContainer:Landroid/view/ViewGroup;

.field verifySoundPoolLoadedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->preCacheableResources:Ljava/util/List;

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    .line 135
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->LOADING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 136
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->INIT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    .line 510
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$4;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->verifySoundPoolLoadedRunnable:Ljava/lang/Runnable;

    .line 1170
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$9;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cachingResourcesRunnable:Ljava/lang/Runnable;

    .line 139
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlay:Lcom/netflix/mediaclient/ui/player/PostPlay;

    .line 140
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 142
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Player fragment is null. Cannot initialize Kong post play manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    .line 146
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    .line 147
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    .line 152
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->populatePostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initMediaPlayer()V

    .line 155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initKongSoundVOManager()V

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/device/yearclass/YearClass;->get(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 157
    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x7dc

    if-ge v0, v4, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isLowPerfDevice:Z

    .line 162
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x7df

    if-lt v0, v3, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isHighPerfDevice:Z

    .line 164
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->options:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 161
    goto :goto_1

    :cond_3
    move v1, v2

    .line 162
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlay:Lcom/netflix/mediaclient/ui/player/PostPlay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadBattleResultScreenSoundResources()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadUnlockScreenSoundResources()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadPowerUpScreenSoundResources()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleWinVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleLoseVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->nextEpisodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isCachingInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceResponseCounter:I

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceResponseCounter:I

    return p1
.end method

.method static synthetic access$208(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceResponseCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceResponseCounter:I

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->failureCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->failureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->failureCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->preCacheableResources:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadGearSelectionScreenSoundResources()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadBattleIntroScreenSoundResources()V

    return-void
.end method

.method private loadBackgroundScreenResources()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->loadResources()V

    .line 560
    :cond_0
    return-void
.end method

.method private loadBattleIntroScreenResources()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->loadResources()V

    .line 542
    :cond_0
    return-void
.end method

.method private loadBattleIntroScreenSoundResources()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->loadSoundPoolResources()V

    .line 578
    :cond_0
    return-void
.end method

.method private loadBattleResultScreenResources()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->loadResources()V

    .line 530
    :cond_0
    return-void
.end method

.method private loadBattleResultScreenSoundResources()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->loadSoundPoolResources()V

    .line 566
    :cond_0
    return-void
.end method

.method private loadGearSelectionScreenResources()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->loadResources()V

    .line 536
    :cond_0
    return-void
.end method

.method private loadGearSelectionScreenSoundResources()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->loadSoundPoolResources()V

    .line 572
    :cond_0
    return-void
.end method

.method private loadPowerUpScreenResources()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->loadResources()V

    .line 548
    :cond_0
    return-void
.end method

.method private loadPowerUpScreenSoundResources()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->loadSoundPoolResources()V

    .line 584
    :cond_0
    return-void
.end method

.method private loadSoundResources()V
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$5;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->execute(Ljava/lang/Runnable;)V

    .line 604
    return-void
.end method

.method private loadUnlockScreenResources()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->loadResources()V

    .line 554
    :cond_0
    return-void
.end method

.method private loadUnlockScreenSoundResources()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->loadSoundPoolResources()V

    .line 590
    :cond_0
    return-void
.end method

.method private releaseBitmapMemory()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->releaseBitmapResources()V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->releaseBitmapResources()V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    if-eqz v0, :cond_2

    .line 797
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->releaseBitmapResources()V

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->releaseBitmapResources()V

    .line 802
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    if-eqz v0, :cond_4

    .line 803
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->releaseBitmapResources()V

    .line 805
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    if-eqz v0, :cond_5

    .line 806
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->releaseBitmapResources()V

    .line 809
    :cond_5
    return-void
.end method

.method private showPostPlay()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->showProgress(Z)V

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->show()V

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->onResourcesLoaded()V

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->onResourcesLoaded()V

    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->onResourcesLoaded()V

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->onResourcesLoaded()V

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->onResourcesLoaded()V

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->onResourcesLoaded()V

    .line 684
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->transitionToKongPostPlay()V

    .line 685
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->startPostPlayAnimation()V

    .line 686
    return-void
.end method


# virtual methods
.method areResourcesSuccessfullyLoaded()Z
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isCachingInProgress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->failureCount:I

    if-lez v0, :cond_1

    .line 1231
    :cond_0
    const/4 v0, 0x0

    .line 1233
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method cacheResource(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 324
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Player activity is null, cannot cache resources"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceResponseCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceResponseCounter:I

    .line 330
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Invalid request to cache resource for an empty or null url."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 345
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$2;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method cancelCurrentAnimation()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 985
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 987
    :cond_0
    return-void
.end method

.method checkFailuresAndRetry()V
    .locals 4

    .prologue
    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isCachingInProgress:Z

    .line 1190
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->failureCount:I

    if-lez v0, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Caching resources failed. Number of resources failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->failureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showDebugToast(Ljava/lang/String;)V

    .line 1196
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->retryCounter:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cachingResourcesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->retryCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->retryCounter:I

    .line 1201
    :cond_0
    return-void
.end method

.method cleanup()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 784
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->releaseResources()V

    .line 785
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->releaseBitmapMemory()V

    .line 787
    return-void
.end method

.method fetchImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->fetchImageFromCache(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method fetchImageFromCache(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 436
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 438
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v2, "Empty or null request url to load image from cache"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-object v1

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v2, "Request url not cached locally. Ignore loading resource."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    .line 450
    if-nez v0, :cond_2

    .line 451
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v2, "Request url cached locally, but metadata information is empty or null."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    .line 459
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 463
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteOffset()J

    move-result-wide v4

    long-to-int v4, v4

    .line 464
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteSize()J

    move-result-wide v6

    long-to-int v0, v6

    .line 465
    invoke-static {v3}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3, v4, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 478
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading image from cache for url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :catch_1
    move-exception v0

    .line 470
    const-string/jumbo v2, "KongInteractivePostPlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exiting kong post play because of OutOfMemoryError - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->exitToStandardPostPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 473
    :catch_2
    move-exception v0

    .line 474
    const-string/jumbo v3, "KongInteractivePostPlayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading image from cache for url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Exception - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    goto :goto_0
.end method

.method getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method getBattleIntroContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getBattleIntroScreen()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    return-object v0
.end method

.method getBattleLoseTrackId()I
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    if-nez v0, :cond_0

    .line 1070
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Gear selection screen is null. No track id available for battle lost video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v0, -0x1

    .line 1073
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleLoseTrackId()I

    move-result v0

    goto :goto_0
.end method

.method getBattleLoseVideoId()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleLostVideoId()I

    move-result v0

    return v0
.end method

.method getBattleResultAvatar()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method getBattleWinTrackId()I
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    if-nez v0, :cond_0

    .line 1062
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Gear selection screen is null. No track id available for battle won video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v0, -0x1

    .line 1065
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleWinTrackId()I

    move-result v0

    goto :goto_0
.end method

.method getBattleWinVideoId()I
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleWinVideoId()I

    move-result v0

    return v0
.end method

.method getGear1Group()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gear1Group:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getGear2Group()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gear2Group:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method getNextEpisodeContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->nextEpisodeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getNextEpisodeVideoId()I
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getNextEpisodeVideoId()I

    move-result v0

    return v0
.end method

.method getNextEpisodeView()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getNextEpisodeView()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    return-object v0
.end method

.method getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method getPostPlayState()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    return-object v0
.end method

.method getPowerUpContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;
    .locals 1

    .prologue
    .line 1246
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1250
    :cond_0
    const/4 v0, 0x0

    .line 1252
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    goto :goto_0
.end method

.method getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUnlockingGearContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockingGearContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1000
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->inKongPostPlay:Z

    .line 1001
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cancelCurrentAnimation()V

    .line 1002
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1003
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1004
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1005
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->nextEpisodeContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1006
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1007
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockingGearContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1008
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1009
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gear1Group:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1010
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gear2Group:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1011
    return-void
.end method

.method inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    .line 871
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 872
    const v1, 0x7f0300c7

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    .line 873
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 875
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const v1, 0x7f1002a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockingGearContainer:Landroid/view/ViewGroup;

    .line 876
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const v1, 0x7f1002b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpContainer:Landroid/view/ViewGroup;

    .line 877
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const v1, 0x7f1002b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gear1Group:Landroid/view/ViewGroup;

    .line 878
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const v1, 0x7f1002b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gear2Group:Landroid/view/ViewGroup;

    .line 879
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const v1, 0x7f1002ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroContainer:Landroid/view/ViewGroup;

    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const v1, 0x7f1002a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->nextEpisodeContainer:Landroid/view/ViewGroup;

    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const v1, 0x7f1002b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultAvatar:Landroid/widget/ImageView;

    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->initViews(Landroid/view/View;)V

    .line 884
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockingGearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->initViews(Landroid/view/View;)V

    .line 885
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->initViews(Landroid/view/View;)V

    .line 886
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->initViews(Landroid/view/View;)V

    .line 887
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->initViews(Landroid/view/View;)V

    .line 888
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->initViews(Landroid/view/View;)V

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 892
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    return-object v0
.end method

.method initKongSoundVOManager()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    .line 845
    :cond_0
    return-void
.end method

.method initMediaPlayer()V
    .locals 7

    .prologue
    .line 812
    new-instance v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScoreVolume:F

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v6, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$7;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$7;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 836
    return-void
.end method

.method initMediaPlayerForBgAudio()V
    .locals 6

    .prologue
    .line 848
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScoreUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Not starting media player for background sound"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-nez v0, :cond_1

    .line 854
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initMediaPlayer()V

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScoreUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    .line 859
    if-nez v4, :cond_2

    .line 860
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Media player audio is cached locally, but metadata information is null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    .line 865
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteSize()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;JJ)V

    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->initializeMediaPlayer()V

    goto :goto_0
.end method

.method isActivityValid()Z
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    goto :goto_0
.end method

.method public isEndOfPlayPostPlay()Z
    .locals 1

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isEndOfPlayPostPlay:Z

    return v0
.end method

.method public isHighPerfDevice()Z
    .locals 1

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isHighPerfDevice:Z

    return v0
.end method

.method isInGearSelection()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isInGearSelection:Z

    return v0
.end method

.method isInKongPostPlay()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isInKongPostPlay:Z

    return v0
.end method

.method public isPostPlayPaused()Z
    .locals 1

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayPaused:Z

    return v0
.end method

.method loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    .line 413
    return-void
.end method

.method loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    .prologue
    .line 380
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 382
    if-nez p1, :cond_1

    .line 383
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request to load url into a null ImageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->inKongPostPlay:Z

    if-nez v0, :cond_2

    .line 387
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Not in kong post play. Ignoring request to load bitmap."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->fetchImageFromCache(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$3;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method loadPostPlayResources()V
    .locals 4

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Activity isn\'t in a valid state - no need to load post play resources"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->exitToStandardPostPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initKongSoundVOManager()V

    .line 494
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initMediaPlayerForBgAudio()V

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->createSoundPool()V

    .line 500
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadBackgroundScreenResources()V

    .line 501
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadUnlockScreenResources()V

    .line 502
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadPowerUpScreenResources()V

    .line 503
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadBattleIntroScreenResources()V

    .line 504
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadGearSelectionScreenResources()V

    .line 505
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadBattleResultScreenResources()V

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->verifySoundPoolLoadedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 498
    :cond_1
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "SoundPoolManager is null, cannot create soundPool instance."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public moveToUIState()V
    .locals 2

    .prologue
    .line 1282
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$11;->$SwitchMap$com$netflix$mediaclient$ui$iko$kong$postplay$KongInteractivePostPlayManager$UI_STATE:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1302
    :goto_0
    return-void

    .line 1284
    :pswitch_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showPostPlay()V

    goto :goto_0

    .line 1287
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showUnlockedGear()V

    goto :goto_0

    .line 1290
    :pswitch_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resumeBattleIntro()V

    goto :goto_0

    .line 1293
    :pswitch_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resumeGearSelection()V

    goto :goto_0

    .line 1296
    :pswitch_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showBattleResult()V

    goto :goto_0

    .line 1299
    :pswitch_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->showPowerUp()V

    goto :goto_0

    .line 1282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cleanup()V

    .line 227
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->autoPause()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->pausePlayback()V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    .line 179
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayPaused:Z

    .line 180
    return-void
.end method

.method onResourcesLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 662
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isActivityValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    .line 666
    :cond_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isInKongPostPlay:Z

    .line 667
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->moveToUIState()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->autoResume()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->resumePlayback()Z

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    .line 195
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayPaused:Z

    .line 196
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initKongSoundVOManager()V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->createSoundPool()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initMediaPlayer()V

    .line 208
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->inKongPostPlay:Z

    if-eqz v0, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadSoundResources()V

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->verifySoundPoolLoadedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->verifySoundPoolLoadedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->releaseResources()V

    .line 222
    return-void
.end method

.method populatePostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 4

    .prologue
    .line 613
    if-nez p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getPreCacheableResourcesList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->preCacheableResources:Ljava/util/List;

    .line 625
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResourceUrlToLocalCachedFileMetadataMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    .line 626
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getInitialState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initialState:Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->initialState:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    .line 628
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getPostPlayType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayType:Ljava/lang/String;

    .line 629
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->trackId:I

    .line 630
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->shouldHideAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->hideAnimations:Z

    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    .line 637
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    .line 638
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackgroundSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScoreUrl:Ljava/lang/String;

    .line 641
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScoreVolume:F

    .line 644
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->detailsForPlaybackCallback:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleWinVideoId()I

    move-result v0

    .line 647
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleLostVideoId()I

    move-result v1

    .line 648
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getNextEpisodeVideoId()I

    move-result v2

    .line 650
    if-lez v0, :cond_3

    .line 651
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->requestDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 653
    :cond_3
    if-lez v1, :cond_4

    .line 654
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->requestDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 656
    :cond_4
    if-lez v2, :cond_0

    .line 657
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->requestDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto/16 :goto_0
.end method

.method releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 770
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    .line 772
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->release()V

    .line 777
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    .line 780
    :cond_1
    return-void
.end method

.method public removeHandlerCallbacksAndMessages()V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1243
    :cond_0
    return-void
.end method

.method requestDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, v0, :cond_1

    .line 746
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->detailsForPlaybackCallback:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;

    invoke-interface {v0, p1, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->detailsForPlaybackCallback:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;

    invoke-interface {v0, p1, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 750
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid video type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 757
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, p1, v1, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, p1, v1, p3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 763
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid video type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeBattleIntro()V
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->playBattleSound()V

    .line 1321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->startTimer()V

    .line 1323
    :cond_0
    return-void
.end method

.method public resumeGearSelection()V
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->playPrepareBattleSound()V

    .line 1310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->setCountdownTimerText()V

    .line 1312
    :cond_0
    return-void
.end method

.method public setCurrentAnimation(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->currentAnimation:Landroid/animation/Animator;

    .line 1257
    return-void
.end method

.method setTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->setTitleText(Ljava/lang/String;)V

    .line 1058
    :cond_0
    return-void
.end method

.method public setUserInteraction()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setUserInteraction()V

    .line 1271
    :cond_0
    return-void
.end method

.method shouldHideAnimation()Z
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->hideAnimations:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isLowPerfDevice:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    if-nez v0, :cond_1

    .line 1023
    :cond_0
    const/4 v0, 0x0

    .line 1021
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    .line 1023
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->getForceToggleAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method show()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1015
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1016
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1018
    return-void
.end method

.method showBattleIntro()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    if-nez v0, :cond_0

    .line 922
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Battle intro screen is null. Cannot show screen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    return-void

    .line 925
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->PICK_BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isInGearSelection:Z

    .line 930
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->start()V

    goto :goto_0
.end method

.method showBattleResult()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    if-nez v0, :cond_0

    .line 948
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Battle result screen is null. Cannot show screen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_0
    return-void

    .line 951
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->BATTLE_RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 955
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleResultScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->start()V

    goto :goto_0
.end method

.method showDebugToast(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1336
    return-void
.end method

.method showGearSelection()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    if-nez v0, :cond_0

    .line 935
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Gear selection screen is null. Cannot show screen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_0
    return-void

    .line 938
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isInGearSelection:Z

    .line 939
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->GEAR_SELECTION:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 943
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->start()V

    goto :goto_0
.end method

.method showPowerUp()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    if-nez v0, :cond_0

    .line 897
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Power up screen is null. Cannot show screen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :goto_0
    return-void

    .line 900
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->POWER_UP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->powerUpScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->start()V

    goto :goto_0
.end method

.method showUnlockedGear()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    if-nez v0, :cond_0

    .line 910
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Unlock screen is null. Cannot show screen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_0
    return-void

    .line 913
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->UNLOCKING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->unlockScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->start()V

    goto :goto_0
.end method

.method startPlayback(IILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 693
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 694
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Player Fragment is null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    return-void

    .line 698
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const-string/jumbo v0, "iko_request_id"

    invoke-direct {v1, v0, p2, v2, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 700
    const/4 v0, 0x0

    .line 702
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleWinVideoId()I

    move-result v2

    .line 703
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->gearSelectionScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getBattleLostVideoId()I

    move-result v3

    .line 704
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getNextEpisodeVideoId()I

    move-result v4

    .line 706
    if-ne p1, v2, :cond_2

    .line 707
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleWinVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 714
    :cond_1
    :goto_1
    if-nez v0, :cond_4

    .line 715
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$6;

    invoke-direct {v2, p0, v1, p4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$6;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;Lcom/netflix/mediaclient/ui/common/PlayContextImp;Z)V

    invoke-virtual {p0, v0, p3, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->requestDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$BattleVideoDetailsForPlaybackCallback;)V

    .line 732
    const-string/jumbo v0, "IKO-Kong: Video details in null for next battle/episode video."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 733
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlay:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/player/PostPlay;->reportNextPlayFailed(Z)V

    goto :goto_0

    .line 708
    :cond_2
    if-ne p1, v3, :cond_3

    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->battleLoseVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    goto :goto_1

    .line 710
    :cond_3
    if-ne p1, v4, :cond_1

    .line 711
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->nextEpisodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    goto :goto_1

    .line 738
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)V

    .line 739
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->releaseResources()V

    goto :goto_0
.end method

.method public startPostPlay(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isEndOfPlayPostPlay:Z

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->hide()V

    .line 234
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->inKongPostPlay:Z

    .line 235
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->LOADING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->uiState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->bgScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->showProgress(Z)V

    .line 242
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->failureCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->retryCounter:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->startPreCachingResources()V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->kongPostplayContainer:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->verifyAndLoadResources()V

    .line 253
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->exitToStandardPostPlay:Ljava/lang/Runnable;

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->exitToStandardPostPlay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method

.method startPostPlayAnimation()V
    .locals 4

    .prologue
    .line 966
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$8;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    return-void
.end method

.method public startPreCachingResources()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cachingResourcesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method

.method transitionToKongPostPlay()V
    .locals 2

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    .line 992
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 993
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showNavigationBar()V

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_0
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "PlayerFragment is null. Should not happen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method verifyAndLoadResources()V
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$10;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1222
    return-void
.end method

.method public waitUntilEndOfPlay()Z
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
