.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl$1;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;

.field final synthetic val$deliveryRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl$1;->this$1:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl$1;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl$1;->this$1:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl$1;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$400(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    .line 397
    return-void
.end method
