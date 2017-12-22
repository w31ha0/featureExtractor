.class public Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;
.super Ljava/lang/Object;
.source "DelayedBifHandler.java"


# static fields
.field private static final DELAY_BEFORE_START_BIF_MS:J = 0x7530L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private startTimeInMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "nf_bw_delayed_bif"

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;->startTimeInMs:J

    .line 14
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DelayedBifHandler - startTimeInMs :%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;->startTimeInMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method


# virtual methods
.method public canStartBifDownload(I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 23
    sget-object v4, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "availableBandwidth: %d, now"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 24
    const/16 v4, 0x1f4

    if-ge p1, v4, :cond_0

    const-wide/16 v4, 0x7530

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;->startTimeInMs:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
