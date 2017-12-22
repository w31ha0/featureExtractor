.class Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$1;
.super Ljava/lang/Object;
.source "CdnUrlDownloadEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

.field final synthetic val$cdnDownloadLogBlob:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$1;->this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$1;->val$cdnDownloadLogBlob:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$1;->this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->access$000(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;)Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$1;->val$cdnDownloadLogBlob:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 118
    return-void
.end method
