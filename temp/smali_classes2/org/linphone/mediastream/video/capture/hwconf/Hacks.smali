.class public final Lorg/linphone/mediastream/video/capture/hwconf/Hacks;
.super Ljava/lang/Object;
.source "Hacks.java"


# static fields
.field private static mBuiltInEchoCancellerModels:[Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;

    const/4 v1, 0x0

    new-instance v2, Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;

    const-string/jumbo v3, "samsung"

    const-string/jumbo v4, "GT-I9100"

    invoke-direct {v2, v3, v4}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;

    const-string/jumbo v3, "samsung"

    const-string/jumbo v4, "GT-I9300"

    invoke-direct {v2, v3, v4}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->mBuiltInEchoCancellerModels:[Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasBuiltInEchoCanceller()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    sget-object v3, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->mBuiltInEchoCancellerModels:[Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 122
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iget-object v7, v5, Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;->manufacturer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, v5, Lorg/linphone/mediastream/video/capture/hwconf/Hacks$BuiltInEchoCancellerModel;->model:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    new-array v2, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has a built-in echo canceller"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 128
    :goto_1
    return v0

    .line 121
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t have a built-in echo canceller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    move v0, v1

    .line 128
    goto :goto_1
.end method

.method public static hasCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/linphone/mediastream/Version;->sdkAboveOrEqual(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :try_start_0
    const-class v3, Landroid/hardware/Camera;

    const-string/jumbo v4, "getNumberOfCameras"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    if-lez v0, :cond_0

    move v0, v1

    .line 117
    :goto_1
    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Error getting number of cameras"

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v2

    .line 112
    goto :goto_1

    .line 115
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Hack: considering there IS a camera.\nIf it is not the case, report DEVICE and MODEL to linphone-users@nongnu.org"

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    move v0, v1

    .line 117
    goto :goto_1
.end method

.method public static final hasTwoCamerasRear0Front1()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isLGP970()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isSPHD700()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isADR6400()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isADR6400()Z
    .locals 2

    .prologue
    .line 73
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "ADR6400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ADR6400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGT9000()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "GT-I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isGTP1000()Z
    .locals 2

    .prologue
    .line 81
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "GT-P1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isGalaxyS()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGT9000()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isSC02B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isSGHI896()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isSPHD700()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGalaxySOrTab()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxyS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxyTab()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGalaxySOrTabWithFrontCamera()Z
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTabWithoutFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGalaxySOrTabWithoutFrontCamera()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isSC02B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isSGHI896()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGalaxyTab()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGTP1000()Z

    move-result v0

    return v0
.end method

.method private static final isLGP970()Z
    .locals 2

    .prologue
    .line 84
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "LG-P970"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSC02B()Z
    .locals 2

    .prologue
    .line 80
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "SC-02B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSGHI896()Z
    .locals 2

    .prologue
    .line 78
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "SGH-I896"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final isSPHD700()Z
    .locals 2

    .prologue
    .line 77
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "SPH-D700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needGalaxySAudioHack()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isSC02B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needPausingCallForSpeakers()Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->needGalaxySAudioHack()Z

    move-result v0

    return v0
.end method

.method public static needSoftvolume()Z
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/linphone/mediastream/Version;->sdkStrictlyBelow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final sleep(I)V
    .locals 2

    .prologue
    .line 88
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method
