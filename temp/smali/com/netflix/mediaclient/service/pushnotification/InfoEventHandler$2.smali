.class Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;
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
    .line 201
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "Refreshing IQ via runnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->access$000()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->access$000()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIq()V

    .line 208
    :cond_0
    return-void
.end method
