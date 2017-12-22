.class Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;
.super Landroid/media/VolumeProvider;
.source "MediaSessionController.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;III)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 300
    if-eq p1, v4, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 301
    :cond_0
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "onAdjustVolume: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$400(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    .line 303
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v1, v0, v4}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateCurrentVolume(IZ)V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "onAdjustVolume strange direction %d, skipping"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onSetVolumeTo(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 312
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "onSetVolumeTo:%d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    mul-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1, v5}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateCurrentVolume(IZ)V

    .line 314
    return-void
.end method
