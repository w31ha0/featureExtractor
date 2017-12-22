.class Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;
.super Ljava/lang/Object;
.source "IntegratedClientLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;

.field final synthetic val$deliveryRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;->this$1:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;->this$1:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$500(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    .line 1044
    return-void
.end method
