.class public final Lorg/chromium/base/metrics/StatisticsRecorderAndroid;
.super Ljava/lang/Object;
.source "StatisticsRecorderAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeToJson()Ljava/lang/String;
.end method

.method public static toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lorg/chromium/base/metrics/StatisticsRecorderAndroid;->nativeToJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
