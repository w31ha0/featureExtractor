.class Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;
.super Landroid/os/Handler;
.source "MdxStackNetflix.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

.field final synthetic val$mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/IMSLClient;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;->val$mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$000(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;

    if-eqz v2, :cond_0

    .line 102
    const-string/jumbo v2, "MdxControllerNative"

    const-string/jumbo v3, "%s launch timeout."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 103
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;->val$mslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v2

    invoke-interface {v0, v5, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;->notifyLaunchResult(ZLcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;)V

    goto :goto_0

    .line 105
    :cond_0
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "%s no longer has DIAL target."

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 108
    :cond_1
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "MDX_EVENT_LAUNCH_TIMEOUT does not have UUID, bug!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
