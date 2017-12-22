.class public Lcom/netflix/mediaclient/ui/mdx/events/UpdateVideoMetadataAvailableHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "UpdateVideoMetadataAvailableHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADATA_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Video metadata update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->updateVideoMetadata()V

    .line 37
    return-void
.end method
