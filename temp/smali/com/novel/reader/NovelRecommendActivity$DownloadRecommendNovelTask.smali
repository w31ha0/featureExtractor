.class Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;
.super Landroid/os/AsyncTask;
.source "NovelRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/NovelRecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRecommendNovelTask"
.end annotation


# instance fields
.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelListener:Landroid/content/DialogInterface$OnCancelListener;

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

.field private progressdialogInit:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/novel/reader/NovelRecommendActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/NovelRecommendActivity;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    new-instance v0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$1;

    invoke-direct {v0, p0}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$1;-><init>(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)V

    iput-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/NovelRecommendActivity;Lcom/novel/reader/NovelRecommendActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/NovelRecommendActivity;
    .param p2, "x1"    # Lcom/novel/reader/NovelRecommendActivity$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;-><init>(Lcom/novel/reader/NovelRecommendActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;I)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->trackRecommendNovelClick(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->novels:Ljava/util/ArrayList;

    return-object v0
.end method

.method private trackRecommendNovelClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-virtual {v1}, Lcom/novel/reader/NovelRecommendActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 135
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Recommend"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity;->access$500(Lcom/novel/reader/NovelRecommendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->novels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 136
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Novel"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->novels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "NovelIntro"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelRecommendActivity;->access$100(Lcom/novel/reader/NovelRecommendActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/novel/reader/api/NovelAPI;->getRecommendCategoryNovels(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->novels:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-static {v0}, Lcom/novel/reader/api/NovelAPI;->getAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->apps:Ljava/util/ArrayList;

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    :cond_0
    new-instance v0, Lcom/novel/reader/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->novels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->apps:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/novel/reader/adapter/GridViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 111
    .local v0, "myGridViewAdapter":Lcom/novel/reader/adapter/GridViewAdapter;
    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelRecommendActivity;->access$200(Lcom/novel/reader/NovelRecommendActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelRecommendActivity;->access$200(Lcom/novel/reader/NovelRecommendActivity;)Landroid/widget/GridView;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;

    invoke-direct {v2, p0}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;-><init>(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    const-string v1, "Load"

    const-string v2, "Loading\u2026"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    .line 90
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Load"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Loading\u2026"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 93
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 95
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 96
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 97
    return-void
.end method
