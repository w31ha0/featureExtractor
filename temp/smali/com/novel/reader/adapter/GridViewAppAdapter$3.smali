.class Lcom/novel/reader/adapter/GridViewAppAdapter$3;
.super Ljava/lang/Object;
.source "GridViewAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/GridViewAppAdapter;->getNovelGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/Novel;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

.field final synthetic val$novel:Lcom/novel/reader/entity/Novel;


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/GridViewAppAdapter;Lcom/novel/reader/entity/Novel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/GridViewAppAdapter;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

    iput-object p2, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewAppAdapter;->access$000(Lcom/novel/reader/adapter/GridViewAppAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "NovelId"

    iget-object v3, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v2, "NovelName"

    iget-object v3, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "NovelAuthor"

    iget-object v3, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "NovelDescription"

    iget-object v3, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "NovelUpdate"

    iget-object v3, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "NovelPicUrl"

    iget-object v3, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "NovelArticleNum"

    iget-object v3, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 180
    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$3;->this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

    invoke-static {v2}, Lcom/novel/reader/adapter/GridViewAppAdapter;->access$000(Lcom/novel/reader/adapter/GridViewAppAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 182
    return-void
.end method
