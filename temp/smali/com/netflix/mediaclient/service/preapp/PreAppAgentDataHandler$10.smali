.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSaved(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 298
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "onDataSaved"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1000()Lcom/netflix/mediaclient/service/ServiceAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10$1;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method
