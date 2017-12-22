.class public Lcom/netflix/mediaclient/util/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeNRDP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mono()J
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->getNativeTimeMono()J

    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public static now()J
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->getNativeTimeNow()J

    move-result-wide v0

    .line 37
    return-wide v0
.end method
