.class public Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;
.super Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;
.source "LoLoMoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoLoMoFrag"


# instance fields
.field private adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

.field protected content:Landroid/widget/FrameLayout;

.field protected focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

.field private isFirstLaunch:Z

.field private isGenreList:Z

.field protected final leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected listId:Ljava/lang/String;

.field protected listView:Landroid/widget/ListView;

.field private final recycleListener:Landroid/widget/AbsListView$RecyclerListener;

.field private final stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

.field private wasInitPerformed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 283
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->recycleListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;-><init>()V

    .line 73
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string/jumbo v0, "list_id"

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
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNumberRowsToFetch(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 351
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getNumberRowsToFetch(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private handleInitIfReady()V
    .locals 3

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->wasInitPerformed:Z

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 234
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Activity is null - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 239
    if-nez v0, :cond_2

    .line 240
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Manager not available - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    if-nez v1, :cond_3

    .line 245
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Views are not initialized - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    if-eqz v1, :cond_4

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 252
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->createAdapter()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    .line 253
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    if-eqz v1, :cond_5

    .line 254
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 257
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->wasInitPerformed:Z

    goto :goto_0
.end method

.method private setupErrorWrapper(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 127
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isGenreList:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->createLolomoAdapter(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;ZLjava/lang/String;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f030093

    return v0
.end method

.method getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getStateMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    return-object v0
.end method

.method public getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    return-object v0
.end method

.method public hideLoadingAndErrorViews()V
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Hiding loading and error views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showViewIfHidden(Landroid/view/View;Z)V

    .line 183
    return-void
.end method

.method public isLoadingData()Z
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-nez v0, :cond_0

    .line 309
    const-string/jumbo v0, "NflxLoading"

    const-string/jumbo v1, "No adapter yet - not loading data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->isLoadingData()Z

    move-result v0

    .line 313
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
    .line 86
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "list_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listId:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_genre_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isGenreList:Z

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecyclerProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecyclerProvider;->getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    .line 93
    if-eqz p1, :cond_0

    .line 95
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Clearing all frag state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 106
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v2, "Creating frag view"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getLayoutId()I

    move-result v0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    .line 108
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isFirstLaunch:Z

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setupMainView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setupFocushandler()V

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setupErrorWrapper(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->handleInitIfReady()V

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onDestroyView()V

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onDestroyView()V

    .line 171
    return-void
.end method

.method public onLolomoPrefetchComplete(Z)V
    .locals 4

    .prologue
    .line 326
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->LOLOMO_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v2, "isFromCache"

    .line 327
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 329
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isFirstLaunch:Z

    if-nez v0, :cond_1

    .line 330
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onLolomoPrefetchComplete: is not from cache or is not first launch to refresh CW"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->hasJobScheduler(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

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
    .line 218
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Manager status code not okay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->handleInitIfReady()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onPause()V

    .line 159
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onResume()V

    .line 151
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->showLoadingView()V

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->refreshData()V

    .line 177
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 304
    :cond_0
    return-void
.end method

.method protected setupFocushandler()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    .line 123
    return-void
.end method

.method protected setupMainView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 131
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->recycleListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->configureListViewForKids(Landroid/widget/ListView;)V

    .line 139
    :cond_0
    return-void
.end method

.method public showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 190
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Showing error view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeNoNetworkOverlay()V

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 208
    return-void
.end method

.method public showLoadingView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 211
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Showing loading view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 214
    return-void
.end method
