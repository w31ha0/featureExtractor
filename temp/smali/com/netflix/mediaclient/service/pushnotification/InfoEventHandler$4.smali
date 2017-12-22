.class Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$4;
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
    .line 225
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$4;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "Refreshing socialNotifications via runnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->access$000()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->access$000()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 232
    :cond_0
    return-void
.end method
