.class Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;
.super Ljava/lang/Object;
.source "GridViewIndexBookmarkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    iput p2, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$000(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/novel/reader/ArticleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "NovelName"

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "ArticleTitle"

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "ArticleId"

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Bookmark;->getArticleId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v2, "ReadingRate"

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Bookmark;->getReadRate()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v2, "NovelPic"

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "NovelId"

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Bookmark;->getNovelId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;->access$000(Lcom/novel/reader/adapter/GridViewIndexBookmarkAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
