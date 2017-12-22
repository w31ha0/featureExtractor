.class final Lorg/linphone/mediastream/video/capture/AndroidVideoApi9JniWrapper$1;
.super Ljava/lang/Object;
.source "AndroidVideoApi9JniWrapper.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic val$nativePtr:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lorg/linphone/mediastream/video/capture/AndroidVideoApi9JniWrapper$1;->val$nativePtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 74
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 76
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 77
    div-int/lit8 v1, v0, 0x14

    add-int/2addr v0, v1

    .line 78
    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-boolean v0, Lorg/linphone/mediastream/video/capture/AndroidVideoApi5JniWrapper;->isRecording:Z

    if-eqz v0, :cond_0

    .line 80
    iget-wide v0, p0, Lorg/linphone/mediastream/video/capture/AndroidVideoApi9JniWrapper$1;->val$nativePtr:J

    invoke-static {v0, v1, p1}, Lorg/linphone/mediastream/video/capture/AndroidVideoApi5JniWrapper;->putImage(J[B)V

    .line 81
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method
