.class public Lcom/novel/reader/DownloadActivity;
.super Lcom/novel/reader/NovelReaderBaseActivity;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/DownloadActivity$ArticleLoader;,
        Lcom/novel/reader/DownloadActivity$DownloadToDBTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novel/reader/NovelReaderBaseActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/novel/reader/entity/Article;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID_SELECT_ALL:I = 0x0

.field private static final ID_SELECT_NONE:I = 0x1

.field public static downLoadCountText:Landroid/widget/TextView;


# instance fields
.field LOADER_ID:I

.field private articleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation
.end field

.field private downLoadButton:Landroid/widget/Button;

.field private downloadCount:I

.field private mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

.field private mBundle:Landroid/os/Bundle;

.field private final mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final myData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;"
        }
    .end annotation
.end field

.field private novelId:I

.field private novelLayoutProgress:Landroid/widget/LinearLayout;

.field private novelListView:Landroid/widget/ExpandableListView;

.field private novelName:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private remindDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/novel/reader/NovelReaderBaseActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->myData:Ljava/util/TreeMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 62
    const/16 v0, 0x61

    iput v0, p0, Lcom/novel/reader/DownloadActivity;->LOADER_ID:I

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/DownloadActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/DownloadActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setRemindDialog()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/DownloadActivity$2;

    invoke-direct {v2, p0}, Lcom/novel/reader/DownloadActivity$2;-><init>(Lcom/novel/reader/DownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->remindDialog:Landroid/app/AlertDialog$Builder;

    .line 134
    return-void
.end method

.method private setViews()V
    .locals 2

    .prologue
    .line 108
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/novel/reader/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f0e00e7

    invoke-virtual {p0, v0}, Lcom/novel/reader/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->novelListView:Landroid/widget/ExpandableListView;

    .line 110
    const v0, 0x7f0e00e9

    invoke-virtual {p0, v0}, Lcom/novel/reader/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->downLoadButton:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0e00e8

    invoke-virtual {p0, v0}, Lcom/novel/reader/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/novel/reader/DownloadActivity;->downLoadCountText:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->downLoadButton:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/DownloadActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/DownloadActivity$1;-><init>(Lcom/novel/reader/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/novel/reader/DownloadActivity;->setRemindDialog()V

    .line 122
    return-void
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 96
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "Download Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/novel/reader/NovelReaderBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v2, 0x7f030049

    invoke-virtual {p0, v2}, Lcom/novel/reader/DownloadActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/DownloadActivity;->mBundle:Landroid/os/Bundle;

    .line 71
    iget-object v2, p0, Lcom/novel/reader/DownloadActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "NovelName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/DownloadActivity;->novelName:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/novel/reader/DownloadActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "NovelId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/novel/reader/DownloadActivity;->novelId:I

    .line 74
    iget-object v2, p0, Lcom/novel/reader/DownloadActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    invoke-direct {p0}, Lcom/novel/reader/DownloadActivity;->setViews()V

    .line 79
    const-string v2, "OpenDownloadPage"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/novel/reader/DownloadActivity;->remindDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    const-string v2, "OpenDownloadPage"

    invoke-static {v2, v5, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    .line 84
    :cond_0
    const-string v2, ""

    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/DownloadActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 85
    iget-object v2, p0, Lcom/novel/reader/DownloadActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    .line 88
    .local v1, "lm":Landroid/support/v4/app/LoaderManager;
    iget v2, p0, Lcom/novel/reader/DownloadActivity;->LOADER_ID:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 90
    invoke-direct {p0}, Lcom/novel/reader/DownloadActivity;->trackScreen()V

    .line 92
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/novel/reader/DownloadActivity$ArticleLoader;

    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/novel/reader/DownloadActivity;->novelId:I

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/DownloadActivity$ArticleLoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    return v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/novel/reader/DownloadActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;>;"
    .local p2, "getArticles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    iput-object p2, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    .line 229
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 231
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/kosbrother/tool/Group;

    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kosbrother/tool/Group;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_1
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 247
    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/Group;

    invoke-virtual {v0}, Lcom/kosbrother/tool/Group;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 248
    .local v8, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/kosbrother/tool/Group;

    new-instance v0, Lcom/kosbrother/tool/ChildArticle;

    .line 250
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/novel/reader/entity/Article;

    invoke-virtual {v4}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/novel/reader/entity/Article;

    .line 251
    invoke-virtual {v5}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Article;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Article;->isDownload()Z

    move-result v6

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Article;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Article;->getNum()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/kosbrother/tool/ChildArticle;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 249
    invoke-virtual {v11, v0}, Lcom/kosbrother/tool/Group;->addChildrenItem(Lcom/kosbrother/tool/ChildArticle;)V

    .line 248
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 246
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 256
    .end local v8    # "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    .end local v10    # "j":I
    :cond_3
    new-instance v0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    sget-object v2, Lcom/novel/reader/DownloadActivity;->downLoadCountText:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/novel/reader/DownloadActivity;->mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    .line 257
    iget-object v0, p0, Lcom/novel/reader/DownloadActivity;->novelListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/novel/reader/DownloadActivity;->mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 260
    .end local v9    # "i":I
    :cond_4
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v4, 0x7f0700fb

    const v8, 0x7f0700f8

    const v7, 0x7f0700f7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 149
    .local v1, "itemId":I
    sparse-switch v1, :sswitch_data_0

    .line 190
    :goto_0
    return v6

    .line 151
    :sswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->finish()V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 157
    iput v5, p0, Lcom/novel/reader/DownloadActivity;->downloadCount:I

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v6}, Lcom/kosbrother/tool/Group;->setChecked(Z)V

    .line 160
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 161
    iget v3, p0, Lcom/novel/reader/DownloadActivity;->downloadCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/novel/reader/DownloadActivity;->downloadCount:I

    .line 162
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/kosbrother/tool/ChildArticle;->setChecked(Z)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v2    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-virtual {v3}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->notifyDataSetChanged()V

    .line 166
    sget-object v3, Lcom/novel/reader/DownloadActivity;->downLoadCountText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/novel/reader/DownloadActivity;->downloadCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 173
    :sswitch_2
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 175
    iput v5, p0, Lcom/novel/reader/DownloadActivity;->downloadCount:I

    .line 176
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 177
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v5}, Lcom/kosbrother/tool/Group;->setChecked(Z)V

    .line 178
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/kosbrother/tool/ChildArticle;->setChecked(Z)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 176
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 182
    .end local v2    # "j":I
    :cond_4
    iget-object v3, p0, Lcom/novel/reader/DownloadActivity;->mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-virtual {v3}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->notifyDataSetChanged()V

    .line 183
    sget-object v3, Lcom/novel/reader/DownloadActivity;->downLoadCountText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/novel/reader/DownloadActivity;->downloadCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 184
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/novel/reader/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/novel/reader/NovelReaderBaseActivity;->onResume()V

    .line 103
    return-void
.end method
