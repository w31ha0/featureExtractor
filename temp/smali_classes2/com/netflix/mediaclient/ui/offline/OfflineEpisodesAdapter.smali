.class public Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;
.super Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;
.source "OfflineEpisodesAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineEpisodesAdapter"


# instance fields
.field private episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

.field private final selectedProfileId:Ljava/lang/String;

.field private final showPlayableId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;)V

    .line 45
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->showPlayableId:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->selectedProfileId:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->refreshEpisodesAndUIData()V

    .line 48
    return-void
.end method

.method private refreshEpisodesAndUIData()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->showPlayableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->selectedProfileId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getShowUIData(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    move-result-object v1

    .line 154
    if-nez v1, :cond_0

    .line 155
    const-string/jumbo v0, "OfflineEpisodesAdapter"

    const-string/jumbo v1, "All the episodes were removed - closing the activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 166
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->setToolbarTitle(Ljava/lang/String;I)V

    .line 164
    :goto_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x1000000

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->setToolbarTitle(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method public containsPlayableId(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    array-length v0, v0

    goto :goto_0
.end method

.method public getPlayableId(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v1, v0, p1

    .line 134
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    .prologue
    .line 59
    move-object/from16 v9, p1

    check-cast v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    .line 60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v12, v2, p2

    .line 62
    invoke-static {v12}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mInvalidObjectNotified:Z

    if-nez v2, :cond_0

    .line 67
    const-string/jumbo v2, "Invalid realm object being displayed in %s, position is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "OfflineEpisodesAdapter"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mInvalidObjectNotified:Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    move v11, v2

    .line 77
    :goto_1
    const/4 v2, 0x0

    .line 79
    if-eqz v11, :cond_7

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v3

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v3

    .line 81
    if-eqz v3, :cond_a

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09014f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v7

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v7

    invoke-static {v7}, Lcom/netflix/mediaclient/util/TimeUtils;->convertSecondsToMinutes(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object v4, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v6, 0x7f090155

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getTotalEstimatedSpace()J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/netflix/mediaclient/util/StringUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v2

    const/16 v4, 0x64

    if-ge v2, v4, :cond_2

    .line 86
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    .line 88
    :cond_2
    invoke-static {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->isFullyDownloadedAndWatchable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v2

    move v10, v2

    .line 93
    :goto_2
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->title:Landroid/widget/TextView;

    const-string/jumbo v3, "%d. %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v6

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 96
    const/4 v2, 0x0

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->getBookmark(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v2

    .line 101
    :cond_3
    iget-object v4, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    :goto_3
    invoke-static {v4, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 102
    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    .line 103
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 104
    iget-object v3, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v4

    iget v2, v2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/ui/lomo/CwView;->calculateProgress(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v2

    iget-object v3, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v12, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getRealmHorzDispUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v6, "boxart"

    sget-object v7, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 108
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemHeader:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileAvatar:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 111
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemContent:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->applyColorScheme(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V

    .line 121
    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v9, v1, v2, v11}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->setupRowForSelection(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Z)V

    .line 124
    if-eqz v11, :cond_8

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_5
    if-eqz v11, :cond_9

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v9, v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->updateDownloadStatusString(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 126
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->playIcon:Landroid/view/View;

    invoke-static {v2, v10}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 129
    iget-object v2, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setLongClickable(Z)V

    goto/16 :goto_0

    .line 75
    :cond_5
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_1

    .line 101
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 114
    :cond_7
    iget-object v3, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemHeader:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v3, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileAvatar:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 117
    iget-object v3, v9, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemContent:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move v10, v2

    goto :goto_4

    .line 124
    :cond_8
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    move v10, v2

    goto/16 :goto_2
.end method

.method public updatePlayableList()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->refreshEpisodesAndUIData()V

    .line 149
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->updatePlayableList()V

    .line 150
    return-void
.end method
