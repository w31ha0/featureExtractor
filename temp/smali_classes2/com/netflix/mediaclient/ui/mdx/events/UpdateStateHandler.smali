.class public final Lcom/netflix/mediaclient/ui/mdx/events/UpdateStateHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "UpdateStateHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Remote state is changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v0, "currentState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "time"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 36
    const-string/jumbo v2, "volume"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 37
    invoke-interface {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->updateState(Ljava/lang/String;II)V

    .line 38
    return-void
.end method
