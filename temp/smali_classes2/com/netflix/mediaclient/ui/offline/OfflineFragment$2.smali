.class Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;
.super Ljava/lang/Object;
.source "OfflineFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(IZ)V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$200(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getPlayableId(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$200(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->isSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$200(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->toggleChecked(ILjava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    if-eqz v0, :cond_0

    .line 206
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$5;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$VideoType:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$200(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    if-eqz p2, :cond_2

    .line 209
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v1, v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$300(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Ljava/lang/String;I)V

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "movie playIcon not visible, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$400(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$400(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;I)Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloadsForTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    :pswitch_2
    if-eqz p2, :cond_3

    .line 224
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v1, v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$300(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Ljava/lang/String;I)V

    goto :goto_0

    .line 226
    :cond_3
    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "episode playIcon not visible, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
