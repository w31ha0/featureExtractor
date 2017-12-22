.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "PreAppAgentDataHandler.java"


# instance fields
.field private mCount:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic val$urlFetchCount:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;ILcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->val$urlFetchCount:I

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    .line 195
    iget v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->val$urlFetchCount:I

    iput v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->mCount:I

    return-void
.end method


# virtual methods
.method public onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 199
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "onResourceFetched mCount: %d, reqUrl: %s, localUrl: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->mCount:I

    if-gtz v0, :cond_0

    .line 203
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "fetching of images done. store newData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1100(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 206
    :cond_0
    return-void
.end method
