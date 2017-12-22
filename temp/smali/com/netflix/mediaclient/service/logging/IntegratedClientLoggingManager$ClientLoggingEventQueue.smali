.class Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;
.super Lcom/netflix/mediaclient/util/EventQueue;
.source "IntegratedClientLoggingManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/util/EventQueue",
        "<",
        "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 680
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    .line 681
    const-string/jumbo v2, "nf_icl_queue"

    const/16 v3, 0x1e

    const-wide/32 v4, 0xea60

    move-object v1, p0

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/util/EventQueue;-><init>(Ljava/lang/String;IJZZ)V

    .line 682
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
            "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$300(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/util/List;)V

    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$400(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/util/List;Z)V

    .line 688
    return-void
.end method
