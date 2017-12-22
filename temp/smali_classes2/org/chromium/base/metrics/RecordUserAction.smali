.class public Lorg/chromium/base/metrics/RecordUserAction;
.super Ljava/lang/Object;
.source "RecordUserAction.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->nativeRecordUserAction(Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeRecordUserAction(Ljava/lang/String;)V
.end method

.method public static record(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->nativeRecordUserAction(Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Lorg/chromium/base/metrics/RecordUserAction$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/metrics/RecordUserAction$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
