.class Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;
.super Ljava/lang/Object;
.source "MdxStackCast.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;Z)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->disable()V

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->resetAllDeviceStateAndClear()V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->access$000(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    .line 108
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;->val$connected:Z

    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "setMdxNetworkInterface, connected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->enable()V

    .line 112
    :cond_0
    return-void
.end method
