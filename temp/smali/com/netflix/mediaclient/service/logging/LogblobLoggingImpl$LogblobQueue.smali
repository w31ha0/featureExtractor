.class Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;
.super Lcom/netflix/mediaclient/util/EventQueue;
.source "LogblobLoggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/util/EventQueue",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/Logblob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 378
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    .line 379
    const-string/jumbo v2, "nf_logblob_queue"

    const/16 v3, 0x1e

    const-wide/32 v4, 0xea60

    move-object v1, p0

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/util/EventQueue;-><init>(Ljava/lang/String;IJZZ)V

    .line 380
    return-void
.end method


# virtual methods
.method protected doFlush(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobQueue;->this$0:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->access$600(Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;Ljava/util/List;Z)V

    .line 385
    return-void
.end method
