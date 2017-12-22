.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "PreAppAgentDataHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$fetchCallbacksList:Ljava/util/Set;

.field final synthetic val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$fetchCallbacksList:Ljava/util/Set;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "nonMemberVideos fetched videos:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$300(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$fetchCallbacksList:Ljava/util/Set;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$fetchCallbacksList:Ljava/util/Set;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$100(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/util/Set;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 125
    return-void
.end method
