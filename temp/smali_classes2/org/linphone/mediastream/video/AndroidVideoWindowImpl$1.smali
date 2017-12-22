.class Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;
.super Ljava/lang/Object;
.source "AndroidVideoWindowImpl.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;


# direct methods
.method constructor <init>(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "Video display surface is being changed."

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-static {v0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$000(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$102(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$202(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;Landroid/view/Surface;)Landroid/view/Surface;

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-static {v0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$300(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-static {v0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$300(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    move-result-object v0

    iget-object v1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    iget-object v2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-static {v2}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$400(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;->onVideoRenderingSurfaceReady(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;Landroid/view/SurfaceView;)V

    .line 101
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "Video display surface changed"

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->w([Ljava/lang/Object;)V

    .line 102
    return-void

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Video display surface created"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->w([Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-static {v0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$000(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$202(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;Landroid/view/Surface;)Landroid/view/Surface;

    .line 112
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$102(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-static {v0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$300(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-static {v0}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;->access$300(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;

    move-result-object v0

    iget-object v1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$1;->this$0:Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;

    invoke-interface {v0, v1}, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$VideoWindowListener;->onVideoRenderingSurfaceDestroyed(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)V

    .line 117
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Video display surface destroyed"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 118
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
