.class Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$1;
.super Ljava/lang/Object;
.source "NovelContentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 108
    iput-object p1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$1;->this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$1;->this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    iget-object v0, v0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->this$0:Lcom/novel/reader/NovelContentsActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelContentsActivity;->access$400(Lcom/novel/reader/NovelContentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask$1;->this$1:Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;

    invoke-static {v1}, Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;->access$500(Lcom/novel/reader/NovelContentsActivity$DownloadArticlesTask;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 112
    return-void
.end method
