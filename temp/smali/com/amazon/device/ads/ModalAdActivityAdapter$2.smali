.class synthetic Lcom/amazon/device/ads/ModalAdActivityAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$ads$ForceOrientation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/amazon/device/ads/ForceOrientation;->values()[Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/ModalAdActivityAdapter$2;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    :try_start_0
    sget-object v0, Lcom/amazon/device/ads/ModalAdActivityAdapter$2;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    sget-object v1, Lcom/amazon/device/ads/ForceOrientation;->PORTRAIT:Lcom/amazon/device/ads/ForceOrientation;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ForceOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/device/ads/ModalAdActivityAdapter$2;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    sget-object v1, Lcom/amazon/device/ads/ForceOrientation;->LANDSCAPE:Lcom/amazon/device/ads/ForceOrientation;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ForceOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/amazon/device/ads/ModalAdActivityAdapter$2;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    sget-object v1, Lcom/amazon/device/ads/ForceOrientation;->NONE:Lcom/amazon/device/ads/ForceOrientation;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ForceOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
