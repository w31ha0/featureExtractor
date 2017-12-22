.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$13;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$13;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$13;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 869
    return-void
.end method
