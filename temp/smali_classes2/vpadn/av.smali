.class public Lvpadn/av;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static c:Lvpadn/av;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lvpadn/av;

    invoke-direct {v0}, Lvpadn/av;-><init>()V

    sput-object v0, Lvpadn/av;->c:Lvpadn/av;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvpadn/av;->a:J

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvpadn/av;->b:J

    .line 21
    return-void
.end method

.method public static a()Lvpadn/av;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lvpadn/av;->c:Lvpadn/av;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()J
    .locals 6

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    iget-wide v2, p0, Lvpadn/av;->a:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 30
    iput-wide v0, p0, Lvpadn/av;->a:J

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvpadn/av;->b:J

    .line 33
    :cond_0
    iget-wide v0, p0, Lvpadn/av;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()J
    .locals 4

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lvpadn/av;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lvpadn/av;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
