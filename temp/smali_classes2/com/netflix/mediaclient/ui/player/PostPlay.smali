.class public abstract Lcom/netflix/mediaclient/ui/player/PostPlay;
.super Ljava/lang/Object;
.source "PostPlay.java"


# static fields
.field protected static final DEFAULT_INTERRUPTER_COUNT:I = 0x3

.field private static final DEFAULT_INTERRUPTER_TIMEOUT_IN_MS:I = 0x36ee80

.field private static final INTERRUPTER_VALUE_IN_MS:I = 0x1d4c0

.field protected static final TAG:Ljava/lang/String; = "nf_postplay"


# instance fields
.field private KIDS_ORIGINALS_POST_PLAY:Ljava/lang/String;

.field private ORIGINALS_POST_PLAY:Ljava/lang/String;

.field protected autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

.field protected interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

.field public isInteractivePostPlay:Z

.field protected mBackgroundContainer:Landroid/widget/LinearLayout;

.field private mCurrentPlayableId:Ljava/lang/String;

.field private mCurrentPlayableType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private mCurrentPostPlayRequestContext:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

.field protected mFetchPostPlayForPlaybackCallback:Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;

.field protected mInPostPlay:Z

.field private mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

.field protected mInterrputerTimeoutOffset:I

.field protected mInterrupter:Landroid/view/View;

.field protected mInterrupterContinue:Landroid/view/View;

.field protected mInterrupterPlayFromStart:Landroid/view/View;

.field protected mInterrupterStop:Landroid/view/View;

.field protected mItemsContainer:Landroid/widget/LinearLayout;

.field protected final mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field protected mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mPostPlay:Landroid/view/View;

.field protected mPostPlayDataExist:Z

.field protected mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

.field protected mPostPlayDismissed:Z

.field protected mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

.field protected mPostPlayIgnoreTap:Landroid/view/View;

.field private mSeamless:Z

.field protected mTitle:Landroid/widget/TextView;

.field private final onInterrupterDismiss:Ljava/lang/Runnable;

.field private final onInterrupterStart:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const v0, 0x36ee80

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrputerTimeoutOffset:I

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    .line 155
    const-string/jumbo v0, "originalsPostPlay"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->ORIGINALS_POST_PLAY:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "kidsOriginalsPostPlay"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->KIDS_ORIGINALS_POST_PLAY:Ljava/lang/String;

    .line 897
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$7;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    .line 932
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$8;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    .line 173
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->findViewsCommon()V

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->findViews()V

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setClickListeners()V

    .line 180
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 181
    return-void
.end method

.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 190
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    .line 193
    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getAutoPlayMaxCount()I

    move-result v0

    .line 201
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v1

    .line 203
    const/4 v2, -0x1

    if-gt v0, v2, :cond_2

    .line 207
    const/4 v0, 0x3

    .line 214
    :cond_2
    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->noUserInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "This is 3rd consecutive auto play with no user interaction, start interrupter timeout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/model/leafs/InteractivePostplay;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/model/leafs/InteractivePostplay;)Lcom/netflix/model/leafs/InteractivePostplay;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PostPlay;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/player/PostPlay;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    return-object v0
.end method

.method private ensureVideoActions()V
    .locals 4

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPlayableId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPlayableType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPostPlayRequestContext:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    if-eqz v0, :cond_2

    .line 1086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    .line 1088
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    .line 1089
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1090
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1093
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPlayableId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPlayableType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPostPlayRequestContext:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideosIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 1097
    :cond_2
    return-void
.end method

.method private fetchPostPlayVideosIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 2

    .prologue
    .line 356
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded starts"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPlayableId:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPlayableType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 359
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mCurrentPostPlayRequestContext:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    if-eq v0, v1, :cond_0

    .line 362
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: ready to fetch post_play, attempt to fetch it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 365
    :cond_0
    return-void
.end method

.method public static getPostPlayType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 982
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    .line 984
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v2

    .line 985
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v4

    .line 987
    if-eqz v2, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v2, v3, :cond_1

    :cond_0
    move v3, v1

    .line 997
    :goto_0
    if-eqz p1, :cond_a

    .line 998
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isNextPlayableEpisode()Z

    move-result v2

    .line 999
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    move v1, v2

    .line 1002
    :goto_2
    if-eqz v4, :cond_4

    .line 1003
    if-eqz v3, :cond_3

    .line 1004
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "SignupForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 1035
    :goto_3
    return-object v0

    :cond_1
    move v3, v0

    .line 990
    goto :goto_0

    :cond_2
    move v0, v1

    .line 999
    goto :goto_1

    .line 1007
    :cond_3
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "SignupForPhone post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1012
    :cond_4
    if-eqz v3, :cond_7

    .line 1013
    if-eqz v0, :cond_5

    .line 1014
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "RecommendationForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1017
    :cond_5
    if-eqz v1, :cond_6

    .line 1018
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "EpisodesForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1021
    :cond_6
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "RecommendationForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1026
    :cond_7
    if-eqz v0, :cond_8

    .line 1027
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Phone recommendation (no) post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1030
    :cond_8
    if-eqz v1, :cond_9

    .line 1031
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Phone episodes post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1034
    :cond_9
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "There will be no next episode, use phone recommendation (no) post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method private getStartOfCredits()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 287
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeamlessEnd()I

    move-result v0

    .line 286
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 288
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEndtime()I

    move-result v0

    goto :goto_0
.end method

.method private inPostPlay(JJ)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 624
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v2, :cond_1

    .line 625
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "inPostPlay() - called with null PlayerFragment!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_0
    return v1

    .line 629
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v4

    .line 634
    if-eqz v4, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getStartOfCredits()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 639
    const-string/jumbo v5, "nf_postplay"

    const-string/jumbo v6, "Duration %d, startOfCredits: %d, currentPosition: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/Asset;->isSupplementalVideo()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v5

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getStartOfCredits()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 644
    :cond_2
    const-string/jumbo v2, "nf_postplay"

    const-string/jumbo v3, "adjusting startOfCredits - isSupplemental: %b"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/Asset;->isSupplementalVideo()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 645
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 647
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 881
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onDestroy()V

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 888
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User exits playback and post_play if it was in progress, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v4, 0x1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 891
    return-void
.end method

.method protected doTransitionFromPostPlay()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method protected abstract doTransitionToPostPlay()V
.end method

.method public endOfPlay()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 1046
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "endOfPlay() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->startInteractivePostPlay(Z)V

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->clear()V

    goto :goto_0
.end method

.method public declared-synchronized fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 3

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Fetch post_play videos..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nf_postplay: Requesting post play response for video ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 329
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostPlayForPlaybackCallback:Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Unable to fetch post_play videos!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract findViews()V
.end method

.method protected findViewsCommon()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002a3

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002a2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002da

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mItemsContainer:Landroid/widget/LinearLayout;

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002a4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002d8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002a1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    .line 280
    return-void
.end method

.method public getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method protected abstract getLengthOfAutoPlayCountdow()I
.end method

.method protected abstract getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
.end method

.method protected hasValidPlayAction(Lcom/netflix/model/leafs/PostPlayItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 830
    if-nez p1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 833
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    .line 834
    if-eqz v1, :cond_0

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nf_postplay: Checking post play play action video ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 837
    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 661
    :cond_0
    return-void
.end method

.method protected isAutoPlayEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 577
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v1, :cond_1

    .line 578
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "isAutoPlayEnabled() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 583
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Activity not found! Auto post_play is NOT enabled. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    .line 587
    if-nez v1, :cond_3

    .line 588
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Asset not found! Auto post_play is NOT enabled. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAutoPlayEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 593
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Autoplay is disabled for this title"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 598
    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    .line 602
    if-eqz v1, :cond_0

    .line 606
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isAutoPlayEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 607
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Autoplay is enabled for this profile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    :cond_5
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Autoplay is disabled for this profile"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isAutoPlayUsed()Z
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayEnabled()Z

    move-result v0

    return v0
.end method

.method public isInPostPlay()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    return v0
.end method

.method protected isPostPlayAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isPostPlayEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "PostPlay is not enabled."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    return v0

    .line 559
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    if-eqz v1, :cond_1

    .line 560
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "PostPlay was dismissed by an user, do not start it again."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isPostPlayEnabled()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Logging post play impression"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 307
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Unable to log post play impression!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method moveFromInterruptedToPlaying()V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 950
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "moveFromInterruptedToPlaying() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    return-void

    .line 954
    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interrupter mode, continue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 957
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    goto :goto_0
.end method

.method moveFromInterruptedToPlayingFromStart()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 962
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 963
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "moveFromInterruptedToPlayingFromStart() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 968
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interrupter mode, play from start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    goto :goto_0
.end method

.method public notifyPlayerReady()V
    .locals 3

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 1138
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 1137
    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideosIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 1140
    return-void

    .line 1138
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onPause()V

    .line 1066
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onResume()V

    .line 1077
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->ensureVideoActions()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onStart()V

    .line 1115
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onStop()V

    .line 1106
    :cond_0
    return-void
.end method

.method protected onTick(I)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public postPlayDismissed()V
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    .line 847
    return-void
.end method

.method public reportNextPlayFailed(Z)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User starts next play and it failed, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move v4, p1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 491
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1121
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 1122
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    .line 1124
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    .line 1125
    return-void
.end method

.method public setBackgroundImageVisible(Z)V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 872
    if-eqz p1, :cond_1

    .line 873
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setClickListeners()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$2;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$3;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$4;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_2
    return-void

    .line 258
    :cond_3
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "setClickListeners() - mInterrupterStop handler was not set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setupAutoPlay(Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 4

    .prologue
    .line 401
    new-instance v0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    .line 405
    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/PostPlay$5;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay$5;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnFinish(Ljava/lang/Runnable;)V

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$6;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnTick(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method protected shouldLogPostPlayImpression(Lcom/netflix/model/leafs/PostPlayExperience;)Z
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 445
    if-eqz p1, :cond_1

    .line 446
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->ORIGINALS_POST_PLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->KIDS_ORIGINALS_POST_PLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    const/4 v0, 0x1

    .line 451
    :cond_1
    return v0
.end method

.method protected shouldReportPostplay()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public startInteractivePostPlay(Z)V
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->startPostPlay(Z)V

    .line 667
    :cond_0
    return-void
.end method

.method transitionFromPostPlay()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 463
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Transition from post play execute!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    .line 465
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->postPlayDismissed()V

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User dismissed post_play, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v4, 0x1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->doTransitionFromPostPlay()V

    .line 477
    return-void
.end method

.method public transitionToPostPlay()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 371
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Transition to post play execute!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 379
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->startInteractivePostPlay(Z)V

    .line 398
    :cond_2
    :goto_0
    return-void

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_6

    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldLogPostPlayImpression(Lcom/netflix/model/leafs/PostPlayExperience;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayUsed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getLengthOfAutoPlayCountdow()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportStartPostPlay(Landroid/content/Context;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    .line 392
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getImpressionData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->doTransitionToPostPlay()V

    goto :goto_0

    .line 396
    :cond_6
    const-string/jumbo v0, "SPY-10544 - Error transitioning to post play. No post play experience defined."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract updateOnPostPlayVideosFetched()V
.end method

.method public updatePlaybackPosition(JJ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 513
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v2, :cond_1

    .line 514
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "updatePlaybackPosition() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isPostPlayAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->inPostPlay(JJ)Z

    move-result v2

    .line 523
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 524
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Already in post play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 525
    goto :goto_0

    .line 526
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v3, v4, :cond_3

    .line 527
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "In Interrupter mode, do nothing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    :cond_3
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 530
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Transition from post play to normal"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    goto :goto_0

    .line 533
    :cond_4
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 534
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Transition to post play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    move v0, v1

    .line 536
    goto :goto_0

    .line 538
    :cond_5
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Not in in post play"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasPostPlayDismissed()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    return v0
.end method
