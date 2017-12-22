.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "PreAppAgentDataHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$callbacks:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

.field final synthetic val$fetchCallbacksList:Ljava/util/Set;

.field final synthetic val$iqCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

.field final synthetic val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic val$nonMemberListCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

.field final synthetic val$standardListsCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

.field final synthetic val$standardListsCallback2:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

.field final synthetic val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$fetchCallbacksList:Ljava/util/Set;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$callbacks:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$iqCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$standardListsCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iput-object p8, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$standardListsCallback2:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iput-object p9, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$nonMemberListCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 131
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "LoMos fetched "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$400(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$fetchCallbacksList:Ljava/util/Set;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->LOMO_INFO:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$callbacks:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$iqCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$standardListsCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$standardListsCallback2:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$nonMemberListCallback:Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$500(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, " updateType: %s - skip fetching data for widget because lomo fetch failed - avoid triggering multiple lolomos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
