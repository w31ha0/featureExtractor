.class Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;
.super Ljava/lang/Object;
.source "SessionMdxTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

.field final synthetic val$select:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Z)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->val$select:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->val$select:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$002(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Z)Z

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasCapability()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCapabilities;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCapabilities;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCurrentState;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCurrentState;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->start()V

    .line 160
    return-void
.end method
