.class Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;
.super Ljava/lang/Object;
.source "PostToHandlerCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

.field final synthetic val$ratingInfo:Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;->val$ratingInfo:Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->access$000(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;->val$ratingInfo:Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 312
    return-void
.end method
