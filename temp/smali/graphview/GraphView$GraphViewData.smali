.class public Lgraphview/GraphView$GraphViewData;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Lgraphview/GraphViewDataInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgraphview/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphViewData"
.end annotation


# instance fields
.field public final valueX:D

.field public final valueY:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "valueX"    # D
    .param p3, "valueY"    # D

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-wide p1, p0, Lgraphview/GraphView$GraphViewData;->valueX:D

    .line 230
    iput-wide p3, p0, Lgraphview/GraphView$GraphViewData;->valueY:D

    .line 231
    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lgraphview/GraphView$GraphViewData;->valueX:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lgraphview/GraphView$GraphViewData;->valueY:D

    return-wide v0
.end method
