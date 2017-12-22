.class public Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;
.super Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;
.source "LolomoRecyclerViewFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;


# static fields
.field protected static final EXTRA_GENRE_ID:Ljava/lang/String; = "genre_id"

.field protected static final EXTRA_GENRE_PARCEL:Ljava/lang/String; = "genre_parcel"

.field protected static final EXTRA_IS_GENRE_LIST:Ljava/lang/String; = "is_genre_list"

.field private static final TAG:Ljava/lang/String; = "LoLoMoFrag"


# instance fields
.field protected final leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

.field protected mContent:Landroid/widget/FrameLayout;

.field private mDisplayingGenreList:Z

.field private mFirstLaunch:Z

.field protected mGenreId:Ljava/lang/String;

.field private mInitPerformed:Z

.field protected mLoadingAndErrorWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

.field protected mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;-><init>()V

    .line 287
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;-><init>()V

    .line 73
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string/jumbo v0, "genre_id"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v3, "is_genre_list"

    const-string/jumbo v0, "lolomo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string/jumbo v0, "genre_parcel"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    :cond_0
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleInitIfReady()V
    .locals 3

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mInitPerformed:Z

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Activity is null - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 269
    if-nez v0, :cond_2

    .line 270
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Manager not available - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    if-nez v0, :cond_3

    .line 275
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Views are not initialized - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->onManagerReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;)V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mInitPerformed:Z

    goto :goto_0
.end method

.method private handleUserMessage(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;
    .locals 4

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_0

    .line 195
    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;-><init>(Landroid/content/Context;)V

    .line 196
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->show(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/ui/lolomo2/WithHeader;Landroid/view/ViewGroup;)V

    move-object v0, v1

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshUserMessage()V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isStale()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "User message is stale or consumed, refreshing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->refreshCurrentUserMessageArea()V

    .line 214
    :cond_1
    return-void
.end method

.method private setupErrorWrapper(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLoadingAndErrorWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 115
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f030091

    return v0
.end method

.method public isLoadingData()Z
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    if-nez v0, :cond_0

    .line 302
    const-string/jumbo v0, "NflxLoading"

    const-string/jumbo v1, "No mAdapter yet - not loading data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->isLoadingData()Z

    move-result v0

    .line 306
    const-string/jumbo v1, "NflxLoading"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "genre_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mGenreId:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_genre_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mDisplayingGenreList:Z

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v2, "Creating frag view"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getLayoutId()I

    move-result v0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mContent:Landroid/widget/FrameLayout;

    .line 100
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mFirstLaunch:Z

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->setupMainView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mContent:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->setupErrorWrapper(Landroid/view/View;)V

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->handleInitIfReady()V

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mContent:Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public onDataLoaded()V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Hiding loading and error views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLoadingAndErrorWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showViewIfHidden(Landroid/view/View;Z)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->getLolomoRecyclerViewAdapter()Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->getLolomoRecyclerViewAdapter()Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomoSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->handleUserMessage(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    .line 184
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->onDestroy(Landroid/content/Context;)V

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onDestroyView()V

    .line 164
    return-void
.end method

.method public onLolomoPrefetchComplete(Z)V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->LOLOMO_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v2, "isFromCache"

    .line 313
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 312
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 315
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mFirstLaunch:Z

    if-nez v0, :cond_1

    .line 316
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onLolomoPrefetchComplete: is not from cache or is not first launch to refresh CW"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->hasJobScheduler(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->refreshCw(Z)V

    goto :goto_0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 247
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Manager status code not okay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->handleInitIfReady()V

    .line 255
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->refreshUserMessage()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onPause()V

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->onPause(Landroid/content/Context;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->onResume(Landroid/content/Context;)V

    .line 144
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->showLoadingView()V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->dismiss(Z)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->refreshData(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 297
    return-void
.end method

.method protected setupMainView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 118
    const v0, 0x7f10022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 126
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->setFlingSpeedScale(F)V

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mDisplayingGenreList:Z

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mGenreId:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->getTrackingOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 136
    return-void

    .line 132
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    goto :goto_0
.end method

.method public showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 217
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Showing error view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 219
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeNoNetworkOverlay()V

    .line 222
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLoadingAndErrorWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 237
    return-void
.end method

.method public showLoadingView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 240
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Showing loading view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLoadingAndErrorWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 243
    return-void
.end method
