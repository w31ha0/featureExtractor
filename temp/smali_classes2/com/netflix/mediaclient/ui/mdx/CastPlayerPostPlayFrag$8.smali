.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;
.super Landroid/content/BroadcastReceiver;
.source "CastPlayerPostPlayFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    if-eqz p2, :cond_0

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    goto :goto_0

    .line 372
    :sswitch_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_END"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_NEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 381
    :pswitch_1
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    .line 384
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Ljava/lang/String;)V

    .line 383
    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 386
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CAST_PLAYER_POST_PLAY_ACTION_TITLE_NEXT id null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    goto/16 :goto_0

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fb2878e -> :sswitch_1
        0x85a8d75 -> :sswitch_2
        0x1633eb5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
