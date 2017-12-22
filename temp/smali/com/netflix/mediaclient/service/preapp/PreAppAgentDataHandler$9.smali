.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;

.field final synthetic val$remoteUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;->val$remoteUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;->val$callback:Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 280
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1000()Lcom/netflix/mediaclient/service/ServiceAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;->val$remoteUrl:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v3, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;->val$callback:Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 281
    return-void
.end method
