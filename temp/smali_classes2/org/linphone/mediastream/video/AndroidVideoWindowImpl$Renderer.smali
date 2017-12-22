.class Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;
.super Ljava/lang/Object;
.source "AndroidVideoWindowImpl.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field height:I

.field initPending:Z

.field ptr:J

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    .line 209
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .prologue
    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 231
    monitor-exit p0

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    if-eqz v0, :cond_1

    .line 233
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    iget v2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->width:I

    iget v3, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->height:I

    invoke-static {v0, v1, v2, v3}, Lorg/linphone/mediastream/video/display/OpenGLESDisplay;->init(JII)V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    .line 236
    :cond_1
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    invoke-static {v0, v1}, Lorg/linphone/mediastream/video/display/OpenGLESDisplay;->render(J)V

    .line 237
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .prologue
    .line 242
    iput p2, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->width:I

    .line 243
    iput p3, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->height:I

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    .line 245
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public setOpenGLESDisplay(J)V
    .locals 5

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->initPending:Z

    .line 221
    :cond_0
    iput-wide p1, p0, Lorg/linphone/mediastream/video/AndroidVideoWindowImpl$Renderer;->ptr:J

    .line 222
    monitor-exit p0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
