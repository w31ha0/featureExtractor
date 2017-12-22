.class Lcom/vailsys/whistleengine/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# static fields
.field private static final sampleRates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vailsys/whistleengine/AudioUtils;->sampleRates:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xbb80
        0x7d00
        0x5dc0
        0x3e80
        0x1f40
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSampleRate()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 10
    sget-object v3, Lcom/vailsys/whistleengine/AudioUtils;->sampleRates:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 12
    invoke-static {v0}, Lcom/vailsys/whistleengine/AudioUtils;->isSampleRateSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 16
    :goto_1
    return v0

    .line 10
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 16
    goto :goto_1
.end method

.method public static isSampleRateSupported(I)Z
    .locals 2

    .prologue
    .line 21
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 25
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
