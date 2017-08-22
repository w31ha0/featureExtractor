.class Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;
.super Landroid/os/AsyncTask;
.source "ArticleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/ArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPreviousArticleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/ArticleActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/ArticleActivity;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p2, "x1"    # Lcom/novel/reader/ArticleActivity$1;

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1, v2}, Lcom/novel/reader/api/NovelAPI;->getPreviousArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Article;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/ArticleActivity;->access$1502(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Article;

    .line 668
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1500(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1500(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/ArticleActivity;->access$1402(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Article;

    .line 672
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 678
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1600(Lcom/novel/reader/ArticleActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1500(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1700(Lcom/novel/reader/ArticleActivity;)V

    .line 683
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$900(Lcom/novel/reader/ArticleActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/novel/reader/entity/Article;->setNovelId(I)V

    .line 684
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$600(Lcom/novel/reader/ArticleActivity;)Lcom/kosbrother/tool/DetectScrollView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/kosbrother/tool/DetectScrollView;->scrollTo(II)V

    .line 685
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/ArticleActivity;->access$1900(Lcom/novel/reader/ArticleActivity;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$2000(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$2100(Lcom/novel/reader/ArticleActivity;)V

    .line 691
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-virtual {v1}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 660
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 661
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$1600(Lcom/novel/reader/ArticleActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    return-void
.end method
