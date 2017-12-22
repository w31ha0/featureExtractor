.class Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$2;
.super Ljava/lang/Object;
.source "LogblobLoggingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

.field final synthetic val$deliveryRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$2;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$2;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->access$200(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    .line 178
    return-void
.end method
