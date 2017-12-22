.class Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$1;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

.field final synthetic val$percentageDownloaded:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;I)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    iput p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$1;->val$percentageDownloaded:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestFetched(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$1;->val$percentageDownloaded:I

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$000(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;I)V

    .line 110
    return-void
.end method
