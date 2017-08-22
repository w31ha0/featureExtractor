.class Lcom/novel/reader/MyDownloadArticleActivity$2;
.super Ljava/lang/Object;
.source "MyDownloadArticleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MyDownloadArticleActivity;->setViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MyDownloadArticleActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/MyDownloadArticleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MyDownloadArticleActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 159
    new-instance v0, Lcom/novel/reader/entity/Novel;

    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/MyDownloadArticleActivity;->access$000(Lcom/novel/reader/MyDownloadArticleActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/MyDownloadArticleActivity;->access$100(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v3}, Lcom/novel/reader/MyDownloadArticleActivity;->access$200(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v5}, Lcom/novel/reader/MyDownloadArticleActivity;->access$300(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v7}, Lcom/novel/reader/MyDownloadArticleActivity;->access$400(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v11, 0x1

    move v9, v6

    move v10, v6

    invoke-direct/range {v0 .. v11}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 160
    .local v0, "myNovel":Lcom/novel/reader/entity/Novel;
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->removeNovelFromDownload(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)V

    .line 161
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity$2;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-virtual {v1}, Lcom/novel/reader/MyDownloadArticleActivity;->finish()V

    .line 162
    return-void
.end method
