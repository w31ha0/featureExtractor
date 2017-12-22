.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1$1;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    .locals 2

    .prologue
    .line 137
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$300(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string/jumbo v0, "nf_logs_pds"

    const-string/jumbo v1, "No saved payloads found."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
