.class public Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;
.super Ljava/lang/Object;
.source "AndroidCameraConfiguration.java"


# static fields
.field private static camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFrontCamera()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->initCamerasCache()V

    .line 46
    sget-object v2, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 47
    iget-boolean v4, v4, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;->frontFacing:Z

    if-eqz v4, :cond_1

    .line 48
    const/4 v0, 0x1

    .line 50
    :cond_0
    return v0

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hasSeveralCameras()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->initCamerasCache()V

    .line 41
    sget-object v1, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initCamerasCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-object v0, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/linphone/mediastream/Version;->sdk()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 62
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->probeCamerasSDK5()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    move-result-object v0

    sput-object v0, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Error: cannot retrieve cameras information (busy ?)"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    new-array v0, v3, [Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    sput-object v0, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    goto :goto_0

    .line 64
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/linphone/mediastream/Version;->sdk()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 65
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->probeCamerasSDK21()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    move-result-object v0

    sput-object v0, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->probeCamerasSDK9()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    move-result-object v0

    sput-object v0, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static probeCamerasSDK21()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfigurationReader21;->probeCameras()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    move-result-object v0

    return-object v0
.end method

.method static probeCamerasSDK5()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfigurationReader5;->probeCameras()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    move-result-object v0

    return-object v0
.end method

.method static probeCamerasSDK9()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfigurationReader9;->probeCameras()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveCameras()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->initCamerasCache()V

    .line 36
    sget-object v0, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration;->camerasCache:[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    return-object v0
.end method
