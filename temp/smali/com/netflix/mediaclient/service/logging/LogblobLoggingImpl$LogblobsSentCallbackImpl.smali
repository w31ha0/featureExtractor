.class Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;
.super Ljava/lang/Object;
.source "LogblobLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;


# instance fields
.field private deliveryId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    .line 360
    return-void
.end method


# virtual methods
.method public onLogblobsSent(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 364
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "Logblobs are succcesfully sent to backend"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->access$300(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "Logblobs are NOT succcesfully sent to backend, do NOT remove them"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->access$500(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
