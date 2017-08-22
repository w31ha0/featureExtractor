.class Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;
.super Landroid/os/AsyncTask;
.source "NovelContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/NovelContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadArticlesTask"
.end annotation


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/novel/reader/NovelContentsActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/NovelContentsActivity;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/NovelContentsActivity;Lcom/novel/reader/NovelContentsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/NovelContentsActivity;
    .param p2, "x1"    # Lcom/novel/reader/NovelContentsActivity$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;-><init>(Lcom/novel/reader/NovelContentsActivity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->getArticlePosition()I

    move-result v0

    return v0
.end method

.method private getArticlePosition()I
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelContentsActivity;->access$100(Lcom/novel/reader/NovelContentsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelContentsActivity;->access$100(Lcom/novel/reader/NovelContentsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v2}, Lcom/novel/reader/NovelContentsActivity;->access$300(Lcom/novel/reader/NovelContentsActivity;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 140
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 135
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelContentsActivity;->access$200(Lcom/novel/reader/NovelContentsActivity;)I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/api/NovelAPI;->getNovelArticles(IZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/NovelContentsActivity;->access$102(Lcom/novel/reader/NovelContentsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelContentsActivity;->access$100(Lcom/novel/reader/NovelContentsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/novel/reader/NovelContentsActivity;->access$102(Lcom/novel/reader/NovelContentsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 99
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelContentsActivity;->access$400(Lcom/novel/reader/NovelContentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/novel/reader/adapter/ContentAdapter;

    iget-object v2, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    iget-object v3, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v3}, Lcom/novel/reader/NovelContentsActivity;->access$100(Lcom/novel/reader/NovelContentsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v4}, Lcom/novel/reader/NovelContentsActivity;->access$300(Lcom/novel/reader/NovelContentsActivity;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/novel/reader/adapter/ContentAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelContentsActivity;->access$400(Lcom/novel/reader/NovelContentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$1;-><init>(Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelContentsActivity;->access$400(Lcom/novel/reader/NovelContentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$2;

    invoke-direct {v1, p0}, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$2;-><init>(Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelContentsActivity;->access$600(Lcom/novel/reader/NovelContentsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 132
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 89
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-virtual {v2}, Lcom/novel/reader/NovelContentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 90
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    return-void
.end method
