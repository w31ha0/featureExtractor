.class public final Lcom/netflix/mediaclient/ui/mdx/events/ErrorHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "ErrorHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 30
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string/jumbo v0, "errorCode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    const-string/jumbo v1, "errorDesc"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->error(ILjava/lang/String;)V

    .line 34
    return-void
.end method
