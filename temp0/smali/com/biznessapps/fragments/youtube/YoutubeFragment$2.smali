.class Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .line 92
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/FanWallComment;

    .line 93
    .local v1, "item":Lcom/biznessapps/model/FanWallComment;
    if-eqz v1, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "FAN_WALL_COMMENT_PARENT_ID"

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "tabId":Ljava/lang/String;
    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v3, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TAB_LABEL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v3, "YOUTUBE_MODE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "FanWallViewController"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-virtual {v3, v0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->startActivity(Landroid/content/Intent;)V

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "tabId":Ljava/lang/String;
    :cond_0
    return-void
.end method
