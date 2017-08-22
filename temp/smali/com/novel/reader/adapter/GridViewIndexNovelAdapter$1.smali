.class Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;
.super Ljava/lang/Object;
.source "GridViewIndexNovelAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    iput p2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$000(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "NovelId"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v3, "NovelName"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "NovelAuthor"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "NovelDescription"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "NovelUpdate"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "NovelPicUrl"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "NovelArticleNum"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$100(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;->access$000(Lcom/novel/reader/adapter/GridViewIndexNovelAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
