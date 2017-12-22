.class Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;
.super Ljava/lang/Object;
.source "PostToHandlerCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

.field final synthetic val$actors:Ljava/util/List;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic val$stills:Ljava/util/List;

.field final synthetic val$swatches:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$actors:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$swatches:Ljava/util/List;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$stills:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 277
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->this$0:Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->access$000(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$actors:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$swatches:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;->val$stills:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    .line 279
    return-void
.end method
