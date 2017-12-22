.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;
.super Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;
.source "PreAppAgentDataHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 2

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "data on disk is null, first time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1000()Lcom/netflix/mediaclient/service/ServiceAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7$1;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method
