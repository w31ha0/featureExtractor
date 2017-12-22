.class public abstract Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseLoLoMoAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseLoLoMoAdapter"

.field private static final VIEW_TYPE_LOADING:I = -0x1


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected final frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

.field private hasMoreData:Z

.field private isLoading:Z

.field private loMoStartIndex:I

.field private final lolomoId:Ljava/lang/String;

.field private lomoRequestId:J

.field private lomoRequestPending:Z

.field private final lomos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFirstVisibleBottom:I

.field private mFirstVisibleHeight:I

.field private mFirstVisibleItem:I

.field private mFirstVisibleTop:I

.field private mListScrollStarted:Z

.field private mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

.field private mTotalScrollDistance:I

.field private mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private final pagerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private final viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    .line 70
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    .line 73
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 97
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    .line 98
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lolomoId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;)J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    return p1
.end method

.method private areRequestsPending()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    return v0
.end method

.method private createRowContent(Landroid/widget/LinearLayout;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 286
    new-instance v3, Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v3, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isGenreList()Z

    move-result v6

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/viewpagerindicator/CirclePageIndicator;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Landroid/view/View;Z)V

    .line 288
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setFocusable(Z)V

    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    invoke-virtual {v3, v8}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 293
    const v1, -0xafafb0

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setRadius(F)V

    .line 295
    invoke-virtual {v3, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeColor(I)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeWidth(F)V

    .line 298
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getOnPageChangeListener()Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;)V

    .line 299
    invoke-virtual {v3, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    .line 300
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 302
    invoke-virtual {v3, v7, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->measure(II)V

    .line 303
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    invoke-virtual {v3}, Lcom/viewpagerindicator/CirclePageIndicator;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 305
    invoke-virtual {p1, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-object v0
.end method

.method private createViewsAndHolder(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
    .locals 6

    .prologue
    .line 245
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "creating views and holder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const v0, 0x7f100232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 247
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 249
    const v0, 0x7f100233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 251
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0050

    .line 250
    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 256
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createRowContent(Landroid/widget/LinearLayout;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

    move-result-object v4

    .line 258
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    .line 259
    const v0, 0x7f100231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 263
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createHolder(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    move-result-object v0

    return-object v0

    .line 251
    :cond_1
    const v1, 0x7f0f00bd

    goto :goto_0
.end method

.method private fetchMoreData()V
    .locals 8

    .prologue
    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    .line 486
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    .line 488
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNumberRowsToFetch(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 494
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-nez v1, :cond_0

    .line 495
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "Manager is null - can\'t refresh data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 500
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lolomoId:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    new-instance v4, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    invoke-direct {v4, p0, v6, v7, v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoCallbacks;-><init>(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;JI)V

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->makeFetchRequest(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    goto :goto_0
.end method

.method private getLoadingView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 225
    .line 226
    if-nez p1, :cond_0

    .line 227
    new-instance p1, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/android/fragment/LoadingView;-><init>(Landroid/content/Context;)V

    .line 228
    const/16 v0, 0x13

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 233
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :cond_0
    return-object p1
.end method

.method private getUserMessage()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_0

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUserMessage()Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/lolomo2/WithHeader;

    if-eqz v1, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getUserMessage()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v2

    .line 453
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;-><init>(Landroid/content/Context;)V

    .line 455
    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/WithHeader;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->show(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/ui/lolomo2/WithHeader;Landroid/view/ViewGroup;)V

    move-object v0, v1

    .line 459
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideLoadingAndErrorViews()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->hideLoadingAndErrorViews()V

    .line 505
    return-void
.end method

.method private isAnyPagerLoading()Z
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    .line 579
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastRow(I)Z
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRowAfterBillboardOrCwRow(ILcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 415
    if-eq p1, v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    .line 419
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private refreshUserMessage()V
    .locals 2

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getUserMessage()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isStale()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "User message is stale or consumed, refreshing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->refreshCurrentUserMessageArea()V

    .line 471
    :cond_1
    return-void
.end method

.method private showErrorView()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->showErrorView()V

    .line 509
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method protected createDummyView()Landroid/view/View;
    .locals 2

    .prologue
    .line 613
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 614
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    return-object v0
.end method

.method protected createHolder(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)V

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lolomoId:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 130
    const/4 v0, -0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method protected getShelfVisibility(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 410
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isRowAfterBillboardOrCwRow(ILcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "activity is destroyed - can\'t getView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createDummyView()Landroid/view/View;

    move-result-object p2

    .line 221
    :cond_0
    :goto_0
    return-object p2

    .line 199
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 200
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getLoadingView(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 203
    :cond_2
    if-nez p2, :cond_3

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getViewLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 205
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->createViewsAndHolder(Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    :cond_3
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    .line 209
    if-nez v1, :cond_4

    .line 210
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to show data for null lomo! Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLastRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->fetchMoreData()V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    invoke-virtual {p0, v0, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto :goto_1
.end method

.method protected getViewLayoutId()I
    .locals 1

    .prologue
    .line 241
    const v0, 0x7f030095

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x2

    return v0
.end method

.method protected initLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->dismiss(Z)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    .line 364
    :cond_0
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestId:J

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomoRequestPending:Z

    .line 367
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hasMoreData:Z

    .line 368
    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    .line 370
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->notifyDataSetChanged()V

    .line 371
    return-void
.end method

.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 267
    const v0, 0x7f100234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getLomoFragImageOffsetStart(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingStart(Landroid/view/View;I)V

    .line 275
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 278
    :cond_0
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isGenreList()Z
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isAnyPagerLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeFetchRequest(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 326
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 330
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->hideLoadingAndErrorViews()V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->areRequestsPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->showErrorView()V

    goto :goto_0
.end method

.method protected onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 610
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    .line 118
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->destroy()V

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public final onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 314
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->refreshData()V

    .line 315
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->refreshUserMessage()V

    .line 316
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 321
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    .line 111
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->onPause()V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->pagerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    .line 104
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->onResume()V

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .prologue
    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mListScrollStarted:Z

    if-nez v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 655
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 657
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleItem:I

    if-le p2, v0, :cond_2

    .line 658
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleTop:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleHeight:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleTop:I

    .line 659
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleTop:I

    sub-int v0, v1, v0

    .line 666
    :goto_1
    if-nez p2, :cond_4

    .line 667
    iput v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mTotalScrollDistance:I

    .line 671
    :goto_2
    iput v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleTop:I

    .line 672
    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleBottom:I

    .line 673
    iput v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleHeight:I

    .line 674
    iput p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleItem:I

    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 677
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    .line 678
    instance-of v2, v1, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag_Ab7814;

    if-eqz v2, :cond_0

    .line 679
    check-cast v1, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag_Ab7814;

    .line 680
    const/4 v2, 0x1

    if-lt p2, v2, :cond_5

    .line 681
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag_Ab7814;->hideBillBoard()V

    .line 682
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setActionBarSolidBg_Ab7814()V

    goto :goto_0

    .line 660
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleItem:I

    if-ge p2, v0, :cond_3

    .line 661
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleBottom:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleHeight:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleBottom:I

    .line 662
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleBottom:I

    sub-int v0, v2, v0

    goto :goto_1

    .line 664
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleBottom:I

    sub-int v0, v2, v0

    goto :goto_1

    .line 669
    :cond_4
    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mTotalScrollDistance:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mTotalScrollDistance:I

    goto :goto_2

    .line 684
    :cond_5
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mTotalScrollDistance:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag_Ab7814;->scrollBillBoard(F)V

    .line 685
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-eqz v2, :cond_6

    .line 686
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    iget v3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mTotalScrollDistance:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setTranslationY(F)V

    .line 688
    :cond_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag_Ab7814;->showBillBoard()V

    .line 689
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setActionBarTransparent_Ab7814()V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 627
    :pswitch_0
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mListScrollStarted:Z

    goto :goto_0

    .line 631
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 632
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleItem:I

    .line 633
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleTop:I

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleBottom:I

    .line 636
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mFirstVisibleHeight:I

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mListScrollStarted:Z

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshData()V
    .locals 2

    .prologue
    .line 340
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "Refreshing data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoading:Z

    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->initLoadingState()V

    .line 343
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->fetchMoreData()V

    .line 344
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 593
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    goto :goto_0
.end method

.method protected updateLoMoData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->handleUserMessage()Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->lomos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 440
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->loMoStartIndex:I

    .line 441
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->notifyDataSetChanged()V

    .line 442
    return-void
.end method

.method protected updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f0901a5

    .line 382
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x14

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 385
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 386
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v2, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->shelf:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->shelf:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->getShelfVisibility(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->rowContent:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    .line 393
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 397
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->defaultTitleColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 401
    :cond_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->isLastRow(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 407
    :goto_1
    return-void

    .line 382
    :cond_2
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :cond_3
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method
