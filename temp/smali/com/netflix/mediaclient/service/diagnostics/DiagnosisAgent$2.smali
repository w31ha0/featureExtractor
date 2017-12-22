.class Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "DiagnosisAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

.field final synthetic val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 198
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setErrorGroup(I)V

    .line 200
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setErrorCode(I)V

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setSuccess(Z)V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->COMPLETED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setStatus(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$100(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$2;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$100(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$200(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V

    .line 208
    :cond_0
    return-void
.end method
