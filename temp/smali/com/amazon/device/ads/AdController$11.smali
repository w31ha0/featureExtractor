.class synthetic Lcom/amazon/device/ads/AdController$11;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$ads$AdError$ErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1360
    invoke-static {}, Lcom/amazon/device/ads/AdError$ErrorCode;->values()[Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/AdController$11;->$SwitchMap$com$amazon$device$ads$AdError$ErrorCode:[I

    :try_start_0
    sget-object v0, Lcom/amazon/device/ads/AdController$11;->$SwitchMap$com$amazon$device$ads$AdError$ErrorCode:[I

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdError$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/device/ads/AdController$11;->$SwitchMap$com$amazon$device$ads$AdError$ErrorCode:[I

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdError$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/amazon/device/ads/AdController$11;->$SwitchMap$com$amazon$device$ads$AdError$ErrorCode:[I

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdError$ErrorCode;->ordinal()I

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
