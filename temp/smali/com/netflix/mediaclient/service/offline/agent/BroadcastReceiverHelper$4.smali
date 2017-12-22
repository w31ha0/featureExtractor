.class Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;
.super Ljava/lang/Object;
.source "BroadcastReceiverHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

.field final synthetic val$intentAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;->val$intentAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;->val$intentAction:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_1
    return-void

    .line 116
    :sswitch_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->access$100(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;->onUserAccountActive()V

    goto :goto_1

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->access$100(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;->onUserAccountInActive()V

    goto :goto_1

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->access$100(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;->onAccountDataFetched()V

    goto :goto_1

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        -0x440f891c -> :sswitch_0
        0x25cdb25 -> :sswitch_1
        0x2c99b904 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
