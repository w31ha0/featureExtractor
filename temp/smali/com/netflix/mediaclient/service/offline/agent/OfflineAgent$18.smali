.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;

.field final synthetic val$playableId:Ljava/lang/String;

.field final synthetic val$statusCode:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$playableId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$statusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$playableId:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$statusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;->onOfflinePdsData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1134
    return-void
.end method
