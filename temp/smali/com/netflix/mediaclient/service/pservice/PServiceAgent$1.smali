.class Lcom/netflix/mediaclient/service/pservice/PServiceAgent$1;
.super Ljava/lang/Object;
.source "PServiceAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    const-string/jumbo v0, "nf_preapp_serviceagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->doInit()V

    .line 54
    return-void
.end method
