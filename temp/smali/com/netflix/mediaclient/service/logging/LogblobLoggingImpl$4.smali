.class Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;
.super Ljava/lang/Object;
.source "LogblobLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

.field final synthetic val$deliveryRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Ljava/lang/String;[BJ)V
    .locals 5

    .prologue
    .line 201
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 202
    :cond_0
    const-string/jumbo v0, "nf_logblob"

    const-string/jumbo v1, "We failed to retrieve payload. Trying to delete it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->access$300(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    new-instance v2, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->access$400(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string/jumbo v1, "nf_logblob"

    const-string/jumbo v2, "Failed to send logblobs."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
