.class public Lcom/netflix/mediaclient/ui/offline/OfflineFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "OfflineFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineFragment"


# instance fields
.field private mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

.field private mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field private mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mWasInitPerformed:Z

.field private selectedProfileId:Ljava/lang/String;

.field private selectedTitleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateCurrentShowIdIfFound()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->initAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->startPlayerActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateEmptyState()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    return-object v0
.end method

.method public static create()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;-><init>()V

    return-object v0
.end method

.method static getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 284
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v5, :cond_0

    .line 285
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_1
    return-object v0

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 271
    invoke-interface {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getShowUIData(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p2, :cond_1

    move-object v0, v2

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 303
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 304
    invoke-interface {p0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    .line 306
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 312
    goto :goto_0
.end method

.method private handleInitIfReady()V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mWasInitPerformed:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Activity is null - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 155
    if-nez v0, :cond_2

    .line 156
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Manager not available - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_3

    .line 161
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Views are not initialized - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Offline Feature not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 174
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->refreshAdapter()V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mWasInitPerformed:Z

    .line 177
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->setupClicks()V

    goto :goto_0
.end method

.method private initAdapter()V
    .locals 6

    .prologue
    .line 197
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V

    .line 236
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getShowUIData(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    .line 249
    :cond_0
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 250
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$3;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 262
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateEmptyState()V

    .line 263
    return-void

    .line 252
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    goto :goto_0
.end method

.method private setupClicks()V
    .locals 5

    .prologue
    const v4, 0x7f0901d8

    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;

    .line 387
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Z)V

    .line 401
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    if-eqz v2, :cond_0

    .line 402
    if-eqz v0, :cond_2

    .line 403
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    if-eqz v2, :cond_1

    .line 411
    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setButtonText(Ljava/lang/String;)V

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    :cond_1
    return-void

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    const v3, 0x7f0901d9

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    const v2, 0x7f0901e2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setButtonText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupMainView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 376
    const v0, 0x7f1001e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    .line 377
    const v0, 0x7f1001df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    .line 378
    const v0, 0x7f1001e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 379
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 382
    return-void
.end method

.method private startPlayerActivity(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v1, p1, v0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->startOfflinePlayback(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 373
    return-void
.end method

.method private updateCurrentShowIdIfFound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 321
    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    .line 324
    :cond_2
    const-string/jumbo v1, "profile_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    const-string/jumbo v1, "profile_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    .line 327
    :cond_3
    const-string/jumbo v1, "playable_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    const-string/jumbo v1, "playable_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v2

    .line 330
    if-nez v2, :cond_4

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Video details not in realm, finish the activity : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string/jumbo v1, "OfflineFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_6

    .line 340
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    .line 341
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    .line 353
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isEpisodesLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "playable_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_8

    .line 356
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Since there is some activity underneath (it should be videos one), we are just closing this instance of OfflineActivity to expose \"videos\" level"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 342
    :cond_6
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_7

    .line 343
    const-string/jumbo v3, "OfflineFragment"

    const-string/jumbo v4, "updateCurrentShowIdIfFound() found showId inside PLAYABLE_ID which should never happen - use TITLE_ID instead"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    .line 345
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    goto :goto_1

    .line 347
    :cond_7
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    goto :goto_1

    .line 360
    :cond_8
    iput-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    .line 361
    iput-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    .line 362
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Since there is no activity underneath, we are just transforming the UI of current OfflineActivity to show \"videos\" level"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateEmptyState()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 482
    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->isShowingAllProfilesButton()Z

    move-result v0

    .line 487
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemCount()I

    move-result v4

    if-eqz v0, :cond_0

    move v2, v3

    :goto_1
    if-ne v4, v2, :cond_1

    .line 488
    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 491
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 494
    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setVisibility(I)V

    .line 495
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setVisibility(I)V

    .line 502
    :goto_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    invoke-static {v1, v3, v0}, Lcom/netflix/android/widgetry/utils/UiUtils;->setPadding(Landroid/view/View;II)V

    .line 503
    return-void

    :cond_0
    move v2, v1

    .line 487
    goto :goto_1

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateView:Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mFindMoreButton:Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    move v0, v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private updatePlayableList()V
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->areDownloadsPreset()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->updatePlayableList()V

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateEmptyState()V

    .line 475
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areDownloadsPreset()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSelected()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->deleteSelected()V

    .line 121
    :cond_0
    return-void
.end method

.method public generateDeleteDlgString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->generateDeleteDlgString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f03006c

    return v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemsCheckedCount()I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItemsDiskSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getSelectedItemsDiskSpace()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEpisodesLevel()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;

    return v0
.end method

.method public isListenerDestroyed()Z
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 558
    return-void
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 465
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Creating frag view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->setupMainView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->handleInitIfReady()V

    .line 90
    return-object v0
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 529
    return-void
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 541
    return-void
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 564
    return-void
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 570
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 442
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Manager status code not okay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->handleInitIfReady()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 547
    return-void
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 4

    .prologue
    .line 507
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    .line 508
    const-string/jumbo v0, "OfflineFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOfflinePlayableProgress playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " percentageDownloaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 513
    if-gez v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    :goto_1
    if-gt v0, v2, :cond_0

    .line 517
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->containsPlayableId(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;->All:Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 516
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onOfflinePlayablesDeleted(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 552
    return-void
.end method

.method public onOfflineStorageVolumeAddedOrRemoved(Z)V
    .locals 3

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 581
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const v1, 0x7f090203

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 583
    if-eqz p1, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 437
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    .line 438
    return-void
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 576
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mWasInitPerformed:Z

    if-eqz v0, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    .line 430
    :cond_1
    return-void
.end method

.method public refreshAdapter()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 193
    :cond_0
    return-void
.end method

.method public switchToEditMode(Z)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->setSelectionMode(Z)V

    .line 97
    :cond_0
    return-void
.end method
