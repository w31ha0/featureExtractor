.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

.field final synthetic val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->clearDiskData(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->val$onDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$700(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$800(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    .line 180
    const-string/jumbo v1, "nf_preappagentdatahandler"

    const-string/jumbo v2, "old not needed data on disk cleared - merged data is"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$900(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 183
    return-void
.end method
