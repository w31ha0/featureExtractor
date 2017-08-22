.class public Lcom/novel/reader/NovelRecommendActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "NovelRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;
    }
.end annotation


# instance fields
.field private categoryId:I

.field private categoryName:Ljava/lang/String;

.field private gridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/NovelRecommendActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelRecommendActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/novel/reader/NovelRecommendActivity;->categoryId:I

    return v0
.end method

.method static synthetic access$200(Lcom/novel/reader/NovelRecommendActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelRecommendActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/novel/reader/NovelRecommendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelRecommendActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method private getBundleExtras()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/novel/reader/NovelRecommendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v1, "RecommendCategoryId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/NovelRecommendActivity;->categoryId:I

    .line 61
    const-string v1, "RecommendCategoryName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/novel/reader/NovelRecommendActivity;->categoryName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/novel/reader/NovelRecommendActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 54
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "NovelRecommend Activity"

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
    .line 36
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lcom/novel/reader/NovelRecommendActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/novel/reader/NovelRecommendActivity;->getBundleExtras()V

    .line 41
    invoke-virtual {p0}, Lcom/novel/reader/NovelRecommendActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, "actionbar":Landroid/support/v7/app/ActionBar;
    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/novel/reader/NovelRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/novel/reader/NovelRecommendActivity;->gridView:Landroid/widget/GridView;

    .line 47
    new-instance v1, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;-><init>(Lcom/novel/reader/NovelRecommendActivity;Lcom/novel/reader/NovelRecommendActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    invoke-direct {p0}, Lcom/novel/reader/NovelRecommendActivity;->trackScreen()V

    .line 50
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 68
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/NovelRecommendActivity;->finish()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
