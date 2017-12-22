.class public Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "SearchQueryDetailsActivity.java"


# static fields
.field private static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field private static final EXTRA_ORIGINAL_SEARCH_TERM:Ljava/lang/String; = "extra_original_query"

.field private static final EXTRA_REFERNCE_ID:Ljava/lang/String; = "extra_reference_id"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field public static final NUM_SIMS_TO_FETCH:I = 0x28

.field private static final TAG:Ljava/lang/String; = "SearchQueryDetailsActivity"


# instance fields
.field private adapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

.field private content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

.field private gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

.field private id:Ljava/lang/String;

.field private isLoading:Z

.field private final leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private loadingWrapper:Landroid/view/View;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private nonModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private originalSearchTerm:Ljava/lang/String;

.field private referenceId:Ljava/lang/String;

.field private requestId:J

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;

.field private type:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->isLoading:Z

    .line 265
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$5;-><init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)Lcom/netflix/mediaclient/android/widget/StaticGridView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->fetchData()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->reloadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->requestId:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->showErrorView()V

    return-void
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->referenceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->adapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->showContentView()V

    return-void
.end method

.method private fetchData()V
    .locals 7

    .prologue
    const/16 v6, 0x28

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    const-string/jumbo v0, "SearchQueryDetailsActivity"

    const-string/jumbo v1, "Manager is null/notReady - can\'t load data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->isLoading:Z

    .line 213
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->requestId:J

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->type:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->PERSON:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    if-ne v0, v1, :cond_2

    .line 216
    const-string/jumbo v0, "SearchQueryDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetching data for person, Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->id:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->requestId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;J)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->originalSearchTerm:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->type:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->SEARCH_SUGGESTION:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    if-ne v0, v1, :cond_3

    .line 221
    const-string/jumbo v0, "SearchQueryDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetching data for suggestion, Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->id:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->requestId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;J)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->originalSearchTerm:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z

    goto :goto_0

    .line 226
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 183
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->titleView:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f10036f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    .line 186
    const v0, 0x7f10035c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->loadingWrapper:Landroid/view/View;

    .line 187
    const v0, 0x7f10035d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    .line 188
    return-void
.end method

.method private getTitleForType(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->PERSON:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    if-ne p1, v0, :cond_0

    .line 235
    :goto_0
    return-object p2

    .line 234
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->SEARCH_SUGGESTION:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    if-ne p1, v0, :cond_1

    .line 235
    const v0, 0x7f0901b1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reloadData()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->showLoadingView()V

    .line 242
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->fetchData()V

    .line 243
    return-void
.end method

.method private setupGridView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->createGridLayoutAnimator(Landroid/content/Context;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setFocusable(Z)V

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;-><init>(Landroid/app/Activity;Landroid/widget/GridView;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->adapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->adapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->setupScrollViewLogging()V

    .line 132
    return-void
.end method

.method private setupGridViewObserver()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    return-void
.end method

.method private setupLoading()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->loadingWrapper:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 123
    return-void
.end method

.method private setupMetaData()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 106
    const-string/jumbo v0, "extra_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->type:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    .line 108
    const-string/jumbo v0, "extra_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->id:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "extra_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->title:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "extra_original_query"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->originalSearchTerm:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "extra_reference_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->referenceId:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "view"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->nonModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 119
    :cond_0
    return-void
.end method

.method private setupScrollViewLogging()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$3;-><init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->setOnScrollStopListener(Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;)V

    .line 169
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v1, v0, v3, v0, v3}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->setPadding(IIII)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->type:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->title:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->getTitleForType(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->titleView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 180
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_type"

    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_id"

    .line 76
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_reference_id"

    .line 77
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "view"

    .line 78
    invoke-virtual {p6}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_original_query"

    .line 79
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_title"

    .line 80
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private showContentView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 248
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 253
    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 258
    return-void
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$4;-><init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    return-object v0
.end method

.method fireImpressionEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 329
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 320
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->content:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisiblePositions(Lcom/netflix/mediaclient/android/widget/StaticGridView;Landroid/widget/ScrollView;)Landroid/util/Pair;

    move-result-object v7

    .line 325
    if-eqz v7, :cond_0

    .line 326
    const-wide/16 v0, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->titleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->referenceId:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 327
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->nonModalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 326
    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchImpression(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;[Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_2
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->searchResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->isLoading:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->setupMetaData()V

    .line 93
    const v0, 0x7f0300ec

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->setContentView(I)V

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->findViews()V

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->setupLoading()V

    .line 98
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->setupViews()V

    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->setupGridView()V

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->setupGridViewObserver()V

    .line 102
    return-void
.end method
