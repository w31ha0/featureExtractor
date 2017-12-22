.class Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader$1;
.super Ljava/lang/Object;
.source "CdnUrlDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader$1;->this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader$1;->this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->access$000(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    .line 62
    return-void
.end method
