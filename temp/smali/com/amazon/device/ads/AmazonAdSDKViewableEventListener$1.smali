.class synthetic Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->values()[Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener$1;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    :try_start_0
    sget-object v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener$1;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->VIEWABLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
