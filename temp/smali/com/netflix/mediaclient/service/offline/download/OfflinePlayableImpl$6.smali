.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$6;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$6;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$6;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$700(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    .line 634
    return-void
.end method
