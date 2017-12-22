.class Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$2;
.super Ljava/lang/Object;
.source "PdsEventReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$2;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$2;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->access$100(Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$2;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->access$000(Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 77
    return-void
.end method
