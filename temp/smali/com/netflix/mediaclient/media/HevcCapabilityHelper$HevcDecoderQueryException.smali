.class public Lcom/netflix/mediaclient/media/HevcCapabilityHelper$HevcDecoderQueryException;
.super Ljava/io/IOException;
.source "HevcCapabilityHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
