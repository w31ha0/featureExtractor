.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;


# instance fields
.field private mDisconnected:Z

.field private final mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2810
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2811
    iget-object v0, p1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/support/v7/media/RemoteControlClientCompat;->obtain(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v7/media/RemoteControlClientCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    .line 2812
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/RemoteControlClientCompat;->setVolumeCallback(Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;)V

    .line 2813
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    .line 2814
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .prologue
    .line 2821
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mDisconnected:Z

    .line 2822
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RemoteControlClientCompat;->setVolumeCallback(Landroid/support/v7/media/RemoteControlClientCompat$VolumeCallback;)V

    .line 2823
    return-void
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2817
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    invoke-virtual {v0}, Landroid/support/v7/media/RemoteControlClientCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onVolumeSetRequest(I)V
    .locals 1

    .prologue
    .line 2831
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mDisconnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 2832
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 2834
    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(I)V
    .locals 1

    .prologue
    .line 2838
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mDisconnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 2839
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 2841
    :cond_0
    return-void
.end method

.method public updatePlaybackInfo()V
    .locals 2

    .prologue
    .line 2826
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RemoteControlClientCompat;->setPlaybackInfo(Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;)V

    .line 2827
    return-void
.end method
