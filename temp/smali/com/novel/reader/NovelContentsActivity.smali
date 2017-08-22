.class public Lcom/novel/reader/NovelContentsActivity;
.super Lcom/novel/reader/NovelReaderBaseActivity;
.source "NovelContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;
    }
.end annotation


# instance fields
.field private articleId:I

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

.field private mBundle:Landroid/os/Bundle;

.field private novelId:I

.field private novelLayoutProgress:Landroid/widget/LinearLayout;

.field private novelListView:Landroid/widget/ListView;

.field private novelName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/novel/reader/NovelReaderBaseActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->articleList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/NovelContentsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelContentsActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->articleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/novel/reader/NovelContentsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelContentsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/novel/reader/NovelContentsActivity;->articleList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/novel/reader/NovelContentsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelContentsActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/novel/reader/NovelContentsActivity;->novelId:I

    return v0
.end method

.method static synthetic access$300(Lcom/novel/reader/NovelContentsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelContentsActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/novel/reader/NovelContentsActivity;->articleId:I

    return v0
.end method

.method static synthetic access$400(Lcom/novel/reader/NovelContentsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelContentsActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->novelListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/novel/reader/NovelContentsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelContentsActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getNovel()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/novel/reader/NovelContentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->mBundle:Landroid/os/Bundle;

    .line 65
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->novelName:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/NovelContentsActivity;->novelId:I

    .line 67
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/NovelContentsActivity;->articleId:I

    .line 69
    return-void
.end method

.method private setViews()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0e00e3

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->novelListView:Landroid/widget/ListView;

    .line 60
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/novel/reader/NovelContentsActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/novel/reader/NovelContentsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 54
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "NovelContents Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/novel/reader/NovelReaderBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030047

    invoke-virtual {p0, v1}, Lcom/novel/reader/NovelContentsActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/novel/reader/NovelContentsActivity;->getNovel()V

    .line 42
    invoke-virtual {p0}, Lcom/novel/reader/NovelContentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    invoke-direct {p0}, Lcom/novel/reader/NovelContentsActivity;->setViews()V

    .line 47
    new-instance v1, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;-><init>(Lcom/novel/reader/NovelContentsActivity;Lcom/novel/reader/NovelContentsActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    invoke-direct {p0}, Lcom/novel/reader/NovelContentsActivity;->trackScreen()V

    .line 50
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 75
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/NovelContentsActivity;->finish()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
