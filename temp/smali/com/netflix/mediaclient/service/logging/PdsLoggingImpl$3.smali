.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$3;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

.field final synthetic val$deliveryRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$3;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$3;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$3;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$3;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$500(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    .line 182
    return-void
.end method
