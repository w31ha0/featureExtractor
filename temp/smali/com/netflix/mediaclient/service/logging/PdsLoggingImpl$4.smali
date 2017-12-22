.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

.field final synthetic val$deliveryRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Ljava/lang/String;[BJ)V
    .locals 5

    .prologue
    .line 198
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 199
    :cond_0
    const-string/jumbo v0, "nf_logs_pds"

    const-string/jumbo v1, "We failed to retrieve payload. Trying to delete it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$600(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    new-instance v2, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;->val$deliveryRequestId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$700(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string/jumbo v1, "nf_logs_pds"

    const-string/jumbo v2, "Failed to send pdsEvent."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
