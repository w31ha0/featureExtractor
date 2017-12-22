.class final Lcom/netflix/mediaclient/util/net/BackOff$1;
.super Ljava/lang/Object;
.source "BackOff.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/net/BackOff;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public nextBackOffInMs()J
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
