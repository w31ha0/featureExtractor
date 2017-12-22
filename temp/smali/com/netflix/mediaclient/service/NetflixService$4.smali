.class Lcom/netflix/mediaclient/service/NetflixService$4;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;

.field final synthetic val$agentsInitCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

.field final synthetic val$agentsToInitOnError:Ljava/util/ArrayList;

.field final synthetic val$agentsToInitOnErrorCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/util/ArrayList;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->val$agentsToInitOnError:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->val$agentsToInitOnErrorCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->val$agentsInitCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 527
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->val$agentsToInitOnError:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->val$agentsToInitOnErrorCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/netflix/mediaclient/service/NetflixService;->access$1200(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService successfully inited ServiceAgent %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/msl/MSLAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$1400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->val$agentsInitCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 533
    :cond_0
    return-void
.end method
