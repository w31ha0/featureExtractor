.class Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;
.super Ljava/lang/Object;
.source "BaseVoipEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 435
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Back to landing page!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 439
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method
