.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;
.super Lcom/netflix/mediaclient/util/EventQueue;
.source "PresentationTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/util/EventQueue",
        "<",
        "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;I)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 155
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    .line 156
    const-string/jumbo v2, "nf_pt_queue"

    const-wide/32 v4, 0x493e0

    move-object v1, p0

    move v3, p2

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/util/EventQueue;-><init>(Ljava/lang/String;IJZZ)V

    .line 157
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
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$100(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/util/List;Z)V

    .line 162
    return-void
.end method
