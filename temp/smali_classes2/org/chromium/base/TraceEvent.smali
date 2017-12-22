.class public Lorg/chromium/base/TraceEvent;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field private static volatile sATraceEnabled:Z

.field private static volatile sEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lorg/chromium/base/TraceEvent;->nativeBeginToplevel()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lorg/chromium/base/TraceEvent;->nativeEndToplevel()V

    return-void
.end method

.method public static begin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public static begin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 282
    invoke-static {p0}, Lorg/chromium/base/EarlyTraceEvent;->begin(Ljava/lang/String;)V

    .line 283
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/base/TraceEvent;->nativeBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method public static enabled()Z
    .locals 1

    .prologue
    .line 230
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    return v0
.end method

.method public static end(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    invoke-static {p0}, Lorg/chromium/base/EarlyTraceEvent;->end(Ljava/lang/String;)V

    .line 301
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/base/TraceEvent;->nativeEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method

.method public static finishAsync(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 265
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/TraceEvent;->nativeFinishAsync(Ljava/lang/String;J)V

    .line 266
    :cond_0
    return-void
.end method

.method public static instant(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/base/TraceEvent;->nativeInstant(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public static instant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/base/TraceEvent;->nativeInstant(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method public static maybeEnableEarlyTracing()V
    .locals 0

    .prologue
    .line 202
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->maybeEnable()V

    .line 203
    return-void
.end method

.method private static native nativeBegin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeBeginToplevel()V
.end method

.method private static native nativeEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeEndToplevel()V
.end method

.method private static native nativeFinishAsync(Ljava/lang/String;J)V
.end method

.method private static native nativeInstant(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeRegisterEnabledObserver()V
.end method

.method private static native nativeStartATrace()V
.end method

.method private static native nativeStartAsync(Ljava/lang/String;J)V
.end method

.method private static native nativeStopATrace()V
.end method

.method public static registerNativeEnabledObserver()V
    .locals 0

    .prologue
    .line 175
    invoke-static {}, Lorg/chromium/base/TraceEvent;->nativeRegisterEnabledObserver()V

    .line 176
    return-void
.end method

.method public static setATraceEnabled(Z)V
    .locals 1

    .prologue
    .line 211
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sATraceEnabled:Z

    if-ne v0, p0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    sput-boolean p0, Lorg/chromium/base/TraceEvent;->sATraceEnabled:Z

    .line 213
    if-eqz p0, :cond_1

    .line 216
    invoke-static {}, Lorg/chromium/base/TraceEvent;->nativeStartATrace()V

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {}, Lorg/chromium/base/TraceEvent;->nativeStopATrace()V

    goto :goto_0
.end method

.method public static setEnabled(Z)V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 183
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->disable()V

    .line 186
    :cond_0
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    if-eq v0, p0, :cond_1

    .line 187
    sput-boolean p0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    .line 190
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sATraceEnabled:Z

    if-eqz v0, :cond_2

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/chromium/base/TraceEvent$LooperMonitorHolder;->access$500()Lorg/chromium/base/TraceEvent$BasicLooperMonitor;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static startAsync(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/TraceEvent;->nativeStartAsync(Ljava/lang/String;J)V

    .line 257
    :cond_0
    return-void
.end method
