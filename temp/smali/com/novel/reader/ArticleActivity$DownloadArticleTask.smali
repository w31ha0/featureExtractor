.class Lcom/novel/reader/ArticleActivity$DownloadArticleTask;
.super Landroid/os/AsyncTask;
.source "ArticleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/ArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadArticleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/ArticleActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/ArticleActivity;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p2, "x1"    # Lcom/novel/reader/ArticleActivity$1;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1, v2}, Lcom/novel/reader/api/NovelAPI;->getArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Article;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/ArticleActivity;->access$1502(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Article;

    .line 549
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1500(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1500(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/ArticleActivity;->access$1402(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Article;

    .line 553
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1600(Lcom/novel/reader/ArticleActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1700(Lcom/novel/reader/ArticleActivity;)V

    .line 562
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$900(Lcom/novel/reader/ArticleActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/novel/reader/entity/Article;->setNovelId(I)V

    .line 564
    new-instance v0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;-><init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 565
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 542
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 543
    return-void
.end method
