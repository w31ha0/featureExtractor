.class Lcom/novel/reader/adapter/ListArticleAdapter$1;
.super Ljava/lang/Object;
.source "ListArticleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/ListArticleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/ListArticleAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/ListArticleAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

    iput p2, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/ListArticleAdapter;->access$000(Lcom/novel/reader/adapter/ListArticleAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/novel/reader/ArticleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ArticleId"

    iget-object v2, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/ListArticleAdapter;->access$100(Lcom/novel/reader/adapter/ListArticleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v2, "NovelName"

    iget-object v3, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

    invoke-static {v3}, Lcom/novel/reader/adapter/ListArticleAdapter;->access$200(Lcom/novel/reader/adapter/ListArticleAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "ArticleTitle"

    iget-object v2, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/ListArticleAdapter;->access$100(Lcom/novel/reader/adapter/ListArticleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "ArticleDownloadBoolean"

    iget-object v2, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/ListArticleAdapter;->access$100(Lcom/novel/reader/adapter/ListArticleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->isDownload()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/novel/reader/adapter/ListArticleAdapter$1;->this$0:Lcom/novel/reader/adapter/ListArticleAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/ListArticleAdapter;->access$000(Lcom/novel/reader/adapter/ListArticleAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
