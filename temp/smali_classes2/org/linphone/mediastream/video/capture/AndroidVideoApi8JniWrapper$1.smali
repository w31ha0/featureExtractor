.class final Lorg/linphone/mediastream/video/capture/AndroidVideoApi8JniWrapper$1;
.super Ljava/lang/Object;
.source "AndroidVideoApi8JniWrapper.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic val$nativePtr:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lorg/linphone/mediastream/video/capture/AndroidVideoApi8JniWrapper$1;->val$nativePtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 47
    sget-boolean v0, Lorg/linphone/mediastream/video/capture/AndroidVideoApi5JniWrapper;->isRecording:Z

    if-eqz v0, :cond_0

    .line 49
    iget-wide v0, p0, Lorg/linphone/mediastream/video/capture/AndroidVideoApi8JniWrapper$1;->val$nativePtr:J

    invoke-static {v0, v1, p1}, Lorg/linphone/mediastream/video/capture/AndroidVideoApi5JniWrapper;->putImage(J[B)V

    .line 50
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 52
    :cond_0
    return-void
.end method
