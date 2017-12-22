.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

.field final synthetic val$deliveryRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Ljava/lang/String;[BJ)V
    .locals 6

    .prologue
    .line 329
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 330
    :cond_0
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "We failed to retrieve payload. Trying to delete it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$500(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 333
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;-><init>()V

    .line 335
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 336
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->initFromString(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->val$deliveryRequestId:Ljava/lang/String;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-direct {v4, v5, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    invoke-static {v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$600(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to send events. Try to delete it."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$500(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    goto :goto_0
.end method
