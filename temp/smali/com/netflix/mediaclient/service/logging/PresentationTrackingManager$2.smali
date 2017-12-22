.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Check if we have not delivered events from last time our app was runnung..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2$1;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;)V

    .line 255
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$300(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/util/data/DataRepository;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->loadAll(Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;)V

    .line 256
    return-void
.end method
