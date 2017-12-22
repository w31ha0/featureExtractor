.class public Lcom/netflix/mediaclient/ui/mdx/events/NetworkConnectivityHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "NetworkConnectivityHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_NETWORK_CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "MDX_NETWORK_CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string/jumbo v0, "networkConnected"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 24
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->onNetworkConnectivityChange(Z)V

    .line 25
    return-void
.end method
