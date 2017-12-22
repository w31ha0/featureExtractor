.class public Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;
.super Ljava/lang/Object;
.source "NetflixTransactionIdGenerator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeNRDP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generate64Id()J
    .locals 6

    .prologue
    .line 15
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->now()J

    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 17
    new-instance v1, Lcom/netflix/mediaclient/util/PositiveRandom;

    invoke-direct {v1}, Lcom/netflix/mediaclient/util/PositiveRandom;-><init>()V

    .line 18
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/PositiveRandom;->nextPositive()I

    move-result v1

    .line 19
    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 22
    return-wide v0
.end method

.method public static generateDxId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generate64Id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateOxId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generate64Id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateXid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generate64Id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
