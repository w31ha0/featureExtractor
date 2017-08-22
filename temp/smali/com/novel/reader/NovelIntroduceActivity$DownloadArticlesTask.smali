.class Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;
.super Landroid/os/AsyncTask;
.source "NovelIntroduceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/NovelIntroduceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadArticlesTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/NovelIntroduceActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/NovelIntroduceActivity;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/NovelIntroduceActivity;Lcom/novel/reader/NovelIntroduceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;
    .param p2, "x1"    # Lcom/novel/reader/NovelIntroduceActivity$1;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$1300(Lcom/novel/reader/NovelIntroduceActivity;)I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/api/NovelAPI;->getNovelArticles(IZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$1202(Lcom/novel/reader/NovelIntroduceActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$1400(Lcom/novel/reader/NovelIntroduceActivity;)V

    .line 456
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$1500(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    return-void
.end method
