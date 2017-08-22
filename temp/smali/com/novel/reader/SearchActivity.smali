.class public Lcom/novel/reader/SearchActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/SearchActivity$LoadDataTask;,
        Lcom/novel/reader/SearchActivity$SearchAdapter;
    }
.end annotation


# instance fields
.field private ab:Landroid/support/v7/app/ActionBar;

.field private aboutUsDialog:Landroid/app/AlertDialog$Builder;

.field private bannerAdView:Landroid/widget/RelativeLayout;

.field private checkLoad:Ljava/lang/Boolean;

.field private item:Landroid/view/MenuItem;

.field private keyword:Ljava/lang/String;

.field private loadmoreLayout:Landroid/widget/LinearLayout;

.field private mBundle:Landroid/os/Bundle;

.field private moreNovels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field

.field private myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

.field private myGridViewAdapter:Lcom/novel/reader/SearchActivity$SearchAdapter;

.field private myPage:I

.field private noDataLayout:Landroid/widget/LinearLayout;

.field private novels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field

.field private progressLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/SearchActivity;->novels:Ljava/util/ArrayList;

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/SearchActivity;->checkLoad:Ljava/lang/Boolean;

    .line 64
    iput v1, p0, Lcom/novel/reader/SearchActivity;->myPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->novels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/novel/reader/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/novel/reader/SearchActivity;->novels:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->moreNovels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/novel/reader/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/novel/reader/SearchActivity;->keyword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/novel/reader/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/SearchActivity;->setLoadMoreNovels()V

    return-void
.end method

.method static synthetic access$1200(Lcom/novel/reader/SearchActivity;)Lcom/novel/reader/SearchActivity$SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->myGridViewAdapter:Lcom/novel/reader/SearchActivity$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/novel/reader/SearchActivity;Lcom/novel/reader/SearchActivity$SearchAdapter;)Lcom/novel/reader/SearchActivity$SearchAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;
    .param p1, "x1"    # Lcom/novel/reader/SearchActivity$SearchAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/novel/reader/SearchActivity;->myGridViewAdapter:Lcom/novel/reader/SearchActivity$SearchAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/novel/reader/SearchActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->item:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/novel/reader/SearchActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->checkLoad:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novel/reader/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/novel/reader/SearchActivity;->myPage:I

    return v0
.end method

.method static synthetic access$302(Lcom/novel/reader/SearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/novel/reader/SearchActivity;->myPage:I

    return p1
.end method

.method static synthetic access$400(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->loadmoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/novel/reader/SearchActivity;)Lcom/taiwan/imageload/LoadMoreGridView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/novel/reader/SearchActivity;)Landroid/support/v7/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->ab:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->progressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->noDataLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/novel/reader/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/SearchActivity;->fetchData()V

    return-void
.end method

.method private fetchData()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->keyword:Ljava/lang/String;

    iget v1, p0, Lcom/novel/reader/SearchActivity;->myPage:I

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->searchNovels(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/SearchActivity;->moreNovels:Ljava/util/ArrayList;

    .line 157
    return-void
.end method

.method private setAboutUsDialog()V
    .locals 3

    .prologue
    .line 421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/SearchActivity$6;

    invoke-direct {v2, p0}, Lcom/novel/reader/SearchActivity$6;-><init>(Lcom/novel/reader/SearchActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/SearchActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    .line 429
    return-void
.end method

.method private setLoadMoreNovels()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->moreNovels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->myGridViewAdapter:Lcom/novel/reader/SearchActivity$SearchAdapter;

    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->moreNovels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/novel/reader/SearchActivity$SearchAdapter;->addDatas(Ljava/util/ArrayList;)V

    .line 411
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->myGridViewAdapter:Lcom/novel/reader/SearchActivity$SearchAdapter;

    invoke-virtual {v0}, Lcom/novel/reader/SearchActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    invoke-virtual {v0}, Lcom/taiwan/imageload/LoadMoreGridView;->onLoadMoreComplete()V

    .line 417
    return-void

    .line 413
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/SearchActivity;->checkLoad:Ljava/lang/Boolean;

    .line 414
    const-string v0, "no more data"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 144
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "Search Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f030050

    invoke-virtual {p0, v1}, Lcom/novel/reader/SearchActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->ab:Landroid/support/v7/app/ActionBar;

    .line 72
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->mBundle:Landroid/os/Bundle;

    .line 73
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "SearchKeyword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->keyword:Ljava/lang/String;

    .line 74
    const v1, 0x7f0e0121

    invoke-virtual {p0, v1}, Lcom/novel/reader/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taiwan/imageload/LoadMoreGridView;

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    .line 75
    const v1, 0x7f0e00d3

    invoke-virtual {p0, v1}, Lcom/novel/reader/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->progressLayout:Landroid/widget/LinearLayout;

    .line 76
    const v1, 0x7f0e0122

    invoke-virtual {p0, v1}, Lcom/novel/reader/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->loadmoreLayout:Landroid/widget/LinearLayout;

    .line 77
    const v1, 0x7f0e0124

    invoke-virtual {p0, v1}, Lcom/novel/reader/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->noDataLayout:Landroid/widget/LinearLayout;

    .line 79
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/novel/db/SQLiteNovel;->deleteQueryHistory(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/novel/db/SQLiteNovel;->insertQueryHistory(Ljava/lang/String;)J

    .line 83
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    new-instance v2, Lcom/novel/reader/SearchActivity$1;

    invoke-direct {v2, p0}, Lcom/novel/reader/SearchActivity$1;-><init>(Lcom/novel/reader/SearchActivity;)V

    invoke-virtual {v1, v2}, Lcom/taiwan/imageload/LoadMoreGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->myGrid:Lcom/taiwan/imageload/LoadMoreGridView;

    new-instance v2, Lcom/novel/reader/SearchActivity$2;

    invoke-direct {v2, p0}, Lcom/novel/reader/SearchActivity$2;-><init>(Lcom/novel/reader/SearchActivity;)V

    invoke-virtual {v1, v2}, Lcom/taiwan/imageload/LoadMoreGridView;->setOnLoadMoreListener(Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;)V

    .line 123
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->ab:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->ab:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070072

    invoke-virtual {p0, v3}, Lcom/novel/reader/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/SearchActivity;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0}, Lcom/novel/reader/SearchActivity;->setAboutUsDialog()V

    .line 128
    const v1, 0x7f0e009d

    invoke-virtual {p0, v1}, Lcom/novel/reader/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    .line 129
    const-string v1, "YearSubscription"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/novel/reader/SearchActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/novel/reader/SearchActivity;->setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;

    move-result-object v1

    iput-object v1, p0, Lcom/novel/reader/SearchActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/novel/reader/SearchActivity;->trackScreen()V

    .line 134
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f0e0159

    const/4 v5, 0x1

    .line 227
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 228
    const-string v3, "YearSubscription"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 229
    const v3, 0x7f0e0158

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 231
    :cond_0
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/novel/reader/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 232
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SearchView;

    .line 233
    .local v2, "searchView":Landroid/support/v7/widget/SearchView;
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 234
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 236
    .local v1, "searchMenuItem":Landroid/view/MenuItem;
    new-instance v3, Lcom/novel/reader/SearchActivity$3;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/novel/reader/SearchActivity$3;-><init>(Lcom/novel/reader/SearchActivity;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 250
    new-instance v3, Lcom/novel/reader/SearchActivity$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/novel/reader/SearchActivity$4;-><init>(Lcom/novel/reader/SearchActivity;Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V

    .line 277
    new-instance v3, Lcom/novel/reader/SearchActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/novel/reader/SearchActivity$5;-><init>(Lcom/novel/reader/SearchActivity;Landroid/view/Menu;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 307
    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x1

    .line 313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 314
    .local v4, "itemId":I
    sparse-switch v4, :sswitch_data_0

    .line 344
    :goto_0
    return v10

    .line 316
    :sswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->finish()V

    goto :goto_0

    .line 320
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/novel/reader/SettingActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/novel/reader/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 324
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v5, "plain/text"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v5, "android.intent.extra.EMAIL"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700cc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v5, "android.intent.extra.TEXT"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v5, "Send mail..."

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/novel/reader/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 332
    .end local v1    # "emailIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v5, p0, Lcom/novel/reader/SearchActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 335
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/novel/reader/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/novel/reader/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v3, "intent1":Landroid/content/Intent;
    const-class v5, Lcom/novel/reader/DonateActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v3}, Lcom/novel/reader/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e0154 -> :sswitch_1
        0x7f0e0155 -> :sswitch_2
        0x7f0e0156 -> :sswitch_3
        0x7f0e0157 -> :sswitch_4
        0x7f0e0158 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onResume()V

    .line 151
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/novel/reader/SearchActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/novel/reader/SearchActivity$LoadDataTask;

    invoke-direct {v0, p0}, Lcom/novel/reader/SearchActivity$LoadDataTask;-><init>(Lcom/novel/reader/SearchActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/novel/reader/SearchActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onStart()V

    .line 140
    return-void
.end method
