.class Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$2;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestFetched(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$100(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V

    .line 137
    return-void
.end method
