.class Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;
.super Ljava/lang/Object;
.source "GridViewDownloadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/GridViewDownloadAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/GridViewDownloadAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    iput p2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->access$000(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "NovelId"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->access$100(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v3, "NovelName"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->access$100(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "NovelAuthor"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->access$100(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "NovelPicUrl"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->access$100(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "NovelArticleNum"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->access$100(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->access$000(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
