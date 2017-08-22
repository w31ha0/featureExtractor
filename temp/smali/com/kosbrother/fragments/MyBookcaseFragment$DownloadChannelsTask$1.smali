.class Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;
.super Ljava/lang/Object;
.source "MyBookcaseFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
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
    .line 106
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-virtual {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "NovelId"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v3, "NovelName"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "NovelAuthor"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "NovelDescription"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "NovelUpdate"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "NovelPicUrl"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "NovelArticleNum"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookcaseFragment;->access$100(Lcom/kosbrother/fragments/MyBookcaseFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask$1;->this$1:Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookcaseFragment$DownloadChannelsTask;->this$0:Lcom/kosbrother/fragments/MyBookcaseFragment;

    invoke-virtual {v2, v1}, Lcom/kosbrother/fragments/MyBookcaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
