.class public Ldatabase/MyWeight;
.super Ljava/lang/Object;
.source "MyWeight.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:J

.field private time:J

.field private weight:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "time"    # J
    .param p5, "weight"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Ldatabase/MyWeight;->id:J

    .line 17
    iput-wide p3, p0, Ldatabase/MyWeight;->time:J

    .line 18
    iput-wide p5, p0, Ldatabase/MyWeight;->weight:J

    .line 20
    return-void
.end method


# virtual methods
.method public getID()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Ldatabase/MyWeight;->id:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Ldatabase/MyWeight;->time:J

    return-wide v0
.end method

.method public getWeight()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Ldatabase/MyWeight;->weight:J

    return-wide v0
.end method
