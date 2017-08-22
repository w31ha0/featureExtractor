.class Lcom/novel/reader/MyDownloadArticleActivity$4;
.super Ljava/lang/Object;
.source "MyDownloadArticleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 179
    iput-object p1, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    const-class v2, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, "activity_intent2":Landroid/content/Intent;
    const-string v1, "NovelName"

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/MyDownloadArticleActivity;->access$100(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "NovelAuthor"

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/MyDownloadArticleActivity;->access$200(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "NovelDescription"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "NovelUpdate"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "NovelPicUrl"

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/MyDownloadArticleActivity;->access$300(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "NovelArticleNum"

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/MyDownloadArticleActivity;->access$300(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "NovelId"

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/MyDownloadArticleActivity;->access$000(Lcom/novel/reader/MyDownloadArticleActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity$4;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-virtual {v1, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
