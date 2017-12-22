.class Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$5;
.super Ljava/lang/Object;
.source "InfoEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$5;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 238
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "fetching preAppData via runnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->access$000()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->access$000()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->fetchPreAppData(II)V

    .line 242
    :cond_0
    return-void
.end method
