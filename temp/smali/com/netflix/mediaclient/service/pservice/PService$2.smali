.class Lcom/netflix/mediaclient/service/pservice/PService$2;
.super Ljava/lang/Object;
.source "PService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PService;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PService$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$200(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerFetch()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServicePartnerFetchInterface;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$200(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/netflix/mediaclient/service/pservice/PService;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    return-object v0
.end method

.method public getWidgetAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceWidgetAgentInterface;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$000(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    move-result-object v0

    return-object v0
.end method
