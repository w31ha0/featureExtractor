.class public final Lcom/netflix/mediaclient/ui/mdx/events/UpdateTargetListHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "UpdateTargetListHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Target list changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->targetListChanged()V

    .line 35
    return-void
.end method
