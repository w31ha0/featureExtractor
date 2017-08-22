.class Lcom/novel/reader/ArticleActivity$4;
.super Landroid/os/AsyncTask;
.source "ArticleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/ArticleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field theNovel:Lcom/novel/reader/entity/Novel;

.field final synthetic this$0:Lcom/novel/reader/ArticleActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private trackCollectNovel()V
    .locals 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-virtual {v1}, Lcom/novel/reader/ArticleActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 435
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Collect"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$4;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 436
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$900(Lcom/novel/reader/ArticleActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->getNovel(ILandroid/content/Context;)Lcom/novel/reader/entity/Novel;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity$4;->theNovel:Lcom/novel/reader/entity/Novel;

    .line 420
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$4;->theNovel:Lcom/novel/reader/entity/Novel;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->collecNovel(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)Z

    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-virtual {v1}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$4;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-virtual {v0}, Lcom/novel/reader/ArticleActivity;->invalidateOptionsMenu()V

    .line 430
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity$4;->trackCollectNovel()V

    .line 431
    return-void
.end method
