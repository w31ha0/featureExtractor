.class Lcom/netflix/mediaclient/service/pservice/PService$1;
.super Ljava/lang/Object;
.source "PService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;


# instance fields
.field private final agentsToInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PServiceAgent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PService;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PService$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pservice/PService$1$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PService$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 115
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$100(Lcom/netflix/mediaclient/service/pservice/PService;)V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->stopSelf()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$200(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    .line 132
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PService;->access$300(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->init(Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "PService successfully inited all PServiceAgents "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$100(Lcom/netflix/mediaclient/service/pservice/PService;)V

    goto :goto_0
.end method
