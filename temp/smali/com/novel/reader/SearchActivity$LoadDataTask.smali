.class Lcom/novel/reader/SearchActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/SearchActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private trackSearch()V
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-virtual {v1}, Lcom/novel/reader/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 399
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v1}, Lcom/novel/reader/SearchActivity;->access$000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Index"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "SearchNull"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/novel/reader/SearchActivity$LoadDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v0}, Lcom/novel/reader/SearchActivity;->access$900(Lcom/novel/reader/SearchActivity;)V

    .line 360
    const-string v0, "progress end"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/novel/reader/SearchActivity$LoadDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 371
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$1000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$1000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$1000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$1000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$700(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$400(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$300(Lcom/novel/reader/SearchActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 380
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$1100(Lcom/novel/reader/SearchActivity;)V

    .line 387
    :goto_1
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$1300(Lcom/novel/reader/SearchActivity;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$1300(Lcom/novel/reader/SearchActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 389
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$1300(Lcom/novel/reader/SearchActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 390
    .local v1, "search":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 393
    invoke-direct {p0}, Lcom/novel/reader/SearchActivity$LoadDataTask;->trackSearch()V

    .line 395
    .end local v1    # "search":Landroid/widget/EditText;
    :cond_1
    return-void

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$500(Lcom/novel/reader/SearchActivity;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taiwan/imageload/LoadMoreGridView;->setVisibility(I)V

    .line 383
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    new-instance v3, Lcom/novel/reader/SearchActivity$SearchAdapter;

    iget-object v4, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    iget-object v5, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    iget-object v6, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v6}, Lcom/novel/reader/SearchActivity;->access$000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/novel/reader/SearchActivity$SearchAdapter;-><init>(Lcom/novel/reader/SearchActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/novel/reader/SearchActivity;->access$1202(Lcom/novel/reader/SearchActivity;Lcom/novel/reader/SearchActivity$SearchAdapter;)Lcom/novel/reader/SearchActivity$SearchAdapter;

    .line 384
    iget-object v2, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$500(Lcom/novel/reader/SearchActivity;)Lcom/taiwan/imageload/LoadMoreGridView;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$1200(Lcom/novel/reader/SearchActivity;)Lcom/novel/reader/SearchActivity$SearchAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v0}, Lcom/novel/reader/SearchActivity;->access$400(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$LoadDataTask;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v0}, Lcom/novel/reader/SearchActivity;->access$800(Lcom/novel/reader/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 355
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 366
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/novel/reader/SearchActivity$LoadDataTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
