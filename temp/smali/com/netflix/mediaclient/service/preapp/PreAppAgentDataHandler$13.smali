.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$fileToDelete:Ljava/lang/String;

.field final synthetic val$localFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;->val$fileToDelete:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;->val$localFilename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 685
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1000()Lcom/netflix/mediaclient/service/ServiceAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;->val$fileToDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->deleteLocalResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "localFilename: %s, filename: %s delete failed"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;->val$localFilename:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;->val$fileToDelete:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_0
    return-void

    .line 688
    :cond_0
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "deleted local file: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;->val$localFilename:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
