.class public Lgraphview/GraphViewSeries$GraphViewSeriesStyle;
.super Ljava/lang/Object;
.source "GraphViewSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgraphview/GraphViewSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphViewSeriesStyle"
.end annotation


# instance fields
.field public color:I

.field public thickness:I

.field private valueDependentColor:Lgraphview/ValueDependentColor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, -0xff8834

    iput v0, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "thickness"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, -0xff8834

    iput v0, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    .line 43
    iput p1, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    .line 44
    iput p2, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    .line 45
    return-void
.end method


# virtual methods
.method public getValueDependentColor()Lgraphview/ValueDependentColor;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->valueDependentColor:Lgraphview/ValueDependentColor;

    return-object v0
.end method

.method public setValueDependentColor(Lgraphview/ValueDependentColor;)V
    .locals 0
    .param p1, "valueDependentColor"    # Lgraphview/ValueDependentColor;

    .prologue
    .line 57
    iput-object p1, p0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->valueDependentColor:Lgraphview/ValueDependentColor;

    .line 58
    return-void
.end method
