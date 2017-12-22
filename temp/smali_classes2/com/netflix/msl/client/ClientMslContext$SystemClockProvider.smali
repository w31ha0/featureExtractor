.class public Lcom/netflix/msl/client/ClientMslContext$SystemClockProvider;
.super Ljava/lang/Object;
.source "ClientMslContext.java"

# interfaces
.implements Lcom/netflix/msl/client/ClientMslContext$ClockProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
