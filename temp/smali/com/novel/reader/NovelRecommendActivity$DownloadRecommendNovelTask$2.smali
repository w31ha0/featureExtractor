.class Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;
.super Ljava/lang/Object;
.source "NovelRecommendActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;


# direct methods
.method constructor <init>(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 116
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2, p3}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$300(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;I)V

    .line 118
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    iget-object v2, v2, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    const-class v3, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "NovelId"

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v3, "NovelName"

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "NovelAuthor"

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "NovelDescription"

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "NovelUpdate"

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "NovelPicUrl"

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "NovelArticleNum"

    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-static {v2}, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->access$400(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$2;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    iget-object v2, v2, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-virtual {v2, v1}, Lcom/novel/reader/NovelRecommendActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
