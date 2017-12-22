.class public Lorg/chromium/base/EarlyTraceEvent;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final STATE_DISABLED:I = 0x0
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_ENABLED:I = 0x1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_FINISHED:I = 0x3
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_FINISHING:I = 0x2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private static final TRACE_CONFIG_FILENAME:Ljava/lang/String; = "/data/local/chrome-trace-config.json"

.field static sCompletedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field static sPendingEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field static volatile sState:I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static begin(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-eq v0, v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    invoke-direct {v0, p0}, Lorg/chromium/base/EarlyTraceEvent$Event;-><init>(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    sget v2, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-eq v2, v3, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 138
    :cond_2
    :try_start_1
    sget-object v2, Lorg/chromium/base/EarlyTraceEvent;->sPendingEvents:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    .line 139
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Multiple pending trace events can\'t have the same name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static disable()V
    .locals 3

    .prologue
    .line 122
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    monitor-exit v1

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x2

    sput v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    .line 125
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->maybeFinishLocked()V

    .line 126
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static dumpEvents(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    .line 169
    invoke-static {}, Lorg/chromium/base/TimeUtils;->nativeGetTimeTicksNowUs()J

    move-result-wide v0

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 171
    sub-long/2addr v0, v2

    div-long v8, v0, v4

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    .line 173
    iget-object v1, v0, Lorg/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v2, v0, Lorg/chromium/base/EarlyTraceEvent$Event;->mBeginTimeMs:J

    add-long/2addr v2, v8

    iget-wide v4, v0, Lorg/chromium/base/EarlyTraceEvent$Event;->mEndTimeMs:J

    add-long/2addr v4, v8

    iget v6, v0, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    invoke-static/range {v1 .. v6}, Lorg/chromium/base/EarlyTraceEvent;->nativeRecordEarlyEvent(Ljava/lang/String;JJI)V

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method static enable()V
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sPendingEvents:Ljava/util/Map;

    .line 110
    const/4 v0, 0x1

    sput v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    .line 111
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static end(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 148
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    .line 149
    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-eq v0, v2, :cond_1

    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-eq v0, v3, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 152
    :cond_1
    :try_start_1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sPendingEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    .line 153
    if-nez v0, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/base/EarlyTraceEvent$Event;->end()V

    .line 155
    sget-object v2, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->maybeFinishLocked()V

    .line 157
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static maybeEnable()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 88
    :try_start_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string/jumbo v3, "trace-startup"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 99
    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 101
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enable()V

    .line 102
    :cond_0
    return-void

    .line 93
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/local/chrome-trace-config.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 94
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static maybeFinishLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sPendingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x3

    sput v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    .line 163
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/base/EarlyTraceEvent;->dumpEvents(Ljava/util/List;)V

    .line 164
    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    .line 165
    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sPendingEvents:Ljava/util/Map;

    goto :goto_0
.end method

.method private static native nativeRecordEarlyEvent(Ljava/lang/String;JJI)V
.end method
