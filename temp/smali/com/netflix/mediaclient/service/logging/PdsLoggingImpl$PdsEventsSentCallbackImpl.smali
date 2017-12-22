.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;


# instance fields
.field private deliveryId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method public onPdsEventsSent(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 307
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string/jumbo v0, "nf_logs_pds"

    const-string/jumbo v1, "Pds events are successfully sent to backend"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$600(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string/jumbo v0, "nf_logs_pds"

    const-string/jumbo v1, "pds events are NOT successfully sent to backend, do NOT remove them"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$800(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
