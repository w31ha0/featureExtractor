.class Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$1;
.super Ljava/lang/Object;
.source "OfflineStorageMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$1;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$1;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$000(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)V

    .line 55
    return-void
.end method
