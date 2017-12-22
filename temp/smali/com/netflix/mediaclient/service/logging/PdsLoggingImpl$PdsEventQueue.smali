.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;
.super Lcom/netflix/mediaclient/util/EventQueue;
.source "PdsLoggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/util/EventQueue",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 321
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    .line 322
    const-string/jumbo v2, "nf_pds_queue"

    const/16 v3, 0xb

    const-wide/32 v4, 0x1d4c0

    move-object v1, p0

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/util/EventQueue;-><init>(Ljava/lang/String;IJZZ)V

    .line 323
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
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$900(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/util/List;Z)V

    .line 328
    return-void
.end method
