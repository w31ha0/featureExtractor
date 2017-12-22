.class Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;
.super Ljava/lang/Object;
.source "BroadcastReceiverHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

.field final synthetic val$intentAction:Ljava/lang/String;

.field final synthetic val$playbackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->val$intentAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->val$playbackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->val$intentAction:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_1
    return-void

    .line 68
    :sswitch_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$5;->$SwitchMap$com$netflix$mediaclient$servicemgr$IPlayer$PlaybackType:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->val$playbackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 72
    :pswitch_1
    const-string/jumbo v0, "nf_offlineBroadcast"

    const-string/jumbo v1, "onStreamingPlayStartReceived"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->access$100(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;->onStreamingPlayStartReceived()V

    goto :goto_1

    .line 76
    :pswitch_2
    const-string/jumbo v0, "nf_offlineBroadcast"

    const-string/jumbo v1, "onOfflinePlayStartReceived"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$5;->$SwitchMap$com$netflix$mediaclient$servicemgr$IPlayer$PlaybackType:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->val$playbackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 83
    :pswitch_4
    const-string/jumbo v0, "nf_offlineBroadcast"

    const-string/jumbo v1, "onStreamingPlayStopReceived"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->access$100(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;->onStreamingPlayStopReceived()V

    goto :goto_1

    .line 87
    :pswitch_5
    const-string/jumbo v0, "nf_offlineBroadcast"

    const-string/jumbo v1, "onOfflinePlayStopReceived"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x30b6e3cf -> :sswitch_1
        0x19da35f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 70
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 81
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
