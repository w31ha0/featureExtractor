.class public final Lcom/netflix/mediaclient/ui/mdx/events/DialogShowHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "DialogShowHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGSHOW"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 33
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Show dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v0, "stringBlob"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string/jumbo v2, "mdxui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to display dialog, failed to process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
