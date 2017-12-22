.class public final Lcom/netflix/mediaclient/ui/mdx/events/UpdateCapabilityHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "UpdateCapabilityHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 30
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Update capability"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string/jumbo v0, "stringBlob"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v1, "mdxui"

    const-string/jumbo v2, "Failed to extract capability data "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
