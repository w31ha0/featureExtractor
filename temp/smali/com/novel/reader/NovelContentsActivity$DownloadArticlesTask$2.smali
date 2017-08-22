.class Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$2;
.super Ljava/lang/Object;
.source "NovelContentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;


# direct methods
.method constructor <init>(Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$2;->this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string v2, "SelectArticleId"

    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$2;->this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    iget-object v1, v1, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelContentsActivity;->access$100(Lcom/novel/reader/NovelContentsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v1, "SelectArticlePosition"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$2;->this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    iget-object v1, v1, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/novel/reader/NovelContentsActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$2;->this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    iget-object v1, v1, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-virtual {v1}, Lcom/novel/reader/NovelContentsActivity;->finish()V

    .line 123
    return-void
.end method
