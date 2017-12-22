.class Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteControlClientManager.java"


# instance fields
.field private final postPlayMediaButtonHandler:Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;

.field private final standardMediaButtonHandler:Lcom/netflix/mediaclient/service/mdx/StandardMediaButtonHandler;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 241
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/StandardMediaButtonHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/StandardMediaButtonHandler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->standardMediaButtonHandler:Lcom/netflix/mediaclient/service/mdx/StandardMediaButtonHandler;

    .line 242
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->postPlayMediaButtonHandler:Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.service.mdx.MediaButtonIntentHandlerProxy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "Received broadcast event but not for Media Button proxy action!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 252
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->access$000(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->access$100(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->access$100(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 264
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 265
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 266
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->postPlayMediaButtonHandler:Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->access$200(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;->handleButtonDown(Landroid/content/Context;Landroid/view/KeyEvent;IILjava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;->standardMediaButtonHandler:Lcom/netflix/mediaclient/service/mdx/StandardMediaButtonHandler;

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/service/mdx/StandardMediaButtonHandler;->handleButtonDown(Landroid/content/Context;Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method
