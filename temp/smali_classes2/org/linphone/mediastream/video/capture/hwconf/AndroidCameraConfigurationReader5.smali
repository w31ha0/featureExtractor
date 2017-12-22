.class Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfigurationReader5;
.super Ljava/lang/Object;
.source "AndroidCameraConfigurationReader5.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static probeCameras()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 43
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTab()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Hack Galaxy S : has one or more cameras"

    aput-object v3, v1, v5

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTabWithFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Hack Galaxy S : HAS a front camera with id=2"

    aput-object v3, v1, v5

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 47
    new-instance v1, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Hack Galaxy S : HAS a rear camera with id=1"

    aput-object v3, v1, v5

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 52
    new-instance v1, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    invoke-direct {v1, v4, v5, v6, v2}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    .line 64
    return-object v0

    .line 49
    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Hack Galaxy S : NO front camera"

    aput-object v3, v1, v5

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_2
    new-instance v1, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    invoke-direct {v1, v5, v5, v6, v2}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->hasTwoCamerasRear0Front1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Hack SPHD700 has 2 cameras a rear with id=0 and a front with id=1"

    aput-object v3, v1, v5

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 58
    new-instance v1, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    invoke-direct {v1, v4, v4, v6, v2}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
