.class Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PostPlay.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 1

    .prologue
    .line 671
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    .line 672
    const-string/jumbo v0, "nf_postplay"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 674
    return-void
.end method

.method private getPlayableForPostPlayItem(Lcom/netflix/model/leafs/PostPlayItem;)Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 818
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    .line 819
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 821
    :goto_0
    if-eqz v0, :cond_0

    .line 825
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 820
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 825
    goto :goto_1
.end method


# virtual methods
.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 678
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 688
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    monitor-enter v1

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostPlayForPlaybackCallback:Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;

    if-eq v0, p0, :cond_2

    .line 694
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Not current callback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    monitor-exit v1

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_4

    .line 700
    :cond_3
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Error loading post play data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    .line 702
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "[DEBUG] loading post play data failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 709
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayExperienceData()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 710
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getInteractivePostplay()Lcom/netflix/model/leafs/InteractivePostplay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$002(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/model/leafs/InteractivePostplay;)Lcom/netflix/model/leafs/InteractivePostplay;

    .line 712
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    if-eqz v0, :cond_c

    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v0

    if-lez v0, :cond_8

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    .line 719
    if-eqz v0, :cond_7

    .line 720
    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlay(Z)V

    .line 721
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "nextEpisodeSeamless"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$102(Lcom/netflix/mediaclient/ui/player/PostPlay;Z)Z

    .line 722
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$100(Lcom/netflix/mediaclient/ui/player/PostPlay;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 724
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v4, "Entering post play next episode seamless experience"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeamlessCountdownSeconds()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/netflix/model/leafs/PostPlayExperience;->setAutoplaySeconds(I)V

    .line 726
    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/PostPlayItem;->setNextEpisodeSeamless(Z)V

    .line 727
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    .line 728
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getSeamlessStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setSeamlessStart(I)V

    .line 735
    :goto_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->getPlayableForPostPlayItem(Lcom/netflix/model/leafs/PostPlayItem;)Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 737
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v4, "prepare for initial index %d"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v6, v6, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 738
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->PostPlay:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-interface {v1, v0, v4, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;->playerPrepare(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    move v0, v2

    :goto_3
    move v4, v3

    move v5, v3

    move v1, v0

    .line 748
    :goto_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    .line 749
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    .line 750
    if-eqz v0, :cond_13

    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nf_postplay: Processing post play response for item video ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 752
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v6, v6, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v6}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/netflix/model/leafs/PostPlayItem;->setExperienceType(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v1

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    .line 754
    invoke-virtual {v1, v4}, Lcom/netflix/model/leafs/PostPlayAction;->setItemIndex(I)V

    .line 755
    iget-object v8, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v8, v8, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v8}, Lcom/netflix/model/leafs/PostPlayExperience;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/netflix/model/leafs/PostPlayAction;->setRequestId(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/netflix/model/leafs/PostPlayAction;->setAncestorTitle(Ljava/lang/String;)V

    .line 757
    if-nez v6, :cond_12

    .line 758
    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v1

    .line 759
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 760
    :goto_6
    if-eqz v1, :cond_12

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v8}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 761
    const-string/jumbo v6, "nf_postplay"

    const-string/jumbo v8, "prepare for index=%d"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v6, v8, v9}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 762
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v6, v6, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    move-result-object v6

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->PostPlay:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v9, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v9}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v9

    invoke-interface {v6, v1, v8, v9}, Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;->playerPrepare(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    move v1, v2

    :goto_7
    move v6, v1

    .line 766
    goto :goto_5

    :cond_5
    move v0, v3

    .line 712
    goto/16 :goto_1

    .line 731
    :cond_6
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v4, "Entering post play next episode experience"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    .line 733
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "nextEpisode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setNextEpisodeAutoPlay(Z)V

    goto/16 :goto_2

    .line 742
    :cond_7
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Could not find autoplay item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v3

    goto/16 :goto_3

    .line 759
    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 768
    :cond_a
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->hasValidPlayAction(Lcom/netflix/model/leafs/PostPlayItem;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 769
    add-int/lit8 v5, v5, 0x1

    move v1, v5

    move v5, v6

    .line 748
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v11, v1

    move v1, v5

    move v5, v11

    goto/16 :goto_4

    .line 775
    :cond_b
    if-nez v5, :cond_c

    .line 776
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "No playable items in post play response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    .line 781
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/model/leafs/InteractivePostplay;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 782
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/model/leafs/InteractivePostplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/InteractivePostplay;->getData()Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 813
    :cond_d
    :goto_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->updateOnPostPlayVideosFetched()V

    goto/16 :goto_0

    .line 788
    :cond_e
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v1

    .line 789
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v1, v5, v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayFactory;->getManager(Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;)Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    move-result-object v5

    iput-object v5, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    .line 790
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-nez v4, :cond_f

    .line 791
    const-string/jumbo v0, "nf_postplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Interactive post play manager is null. Unknown interactive post play type from endpoint - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 793
    :cond_f
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->startPreCachingResources()V

    .line 794
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-boolean v2, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    .line 795
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v1, :cond_d

    .line 797
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    .line 798
    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getInterrupterCount()I

    move-result v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v1

    if-lt v0, v1, :cond_10

    move v3, v2

    .line 801
    :cond_10
    if-eqz v3, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 802
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$300(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Cancelling interrupter for interactive content until 8 post plays"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_11
    move v1, v5

    move v5, v6

    goto/16 :goto_8

    :cond_12
    move v1, v6

    goto/16 :goto_7

    :cond_13
    move v11, v5

    move v5, v1

    move v1, v11

    goto/16 :goto_8
.end method
