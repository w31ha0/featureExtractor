.class public Lgraphview/GraphViewSeries;
.super Ljava/lang/Object;
.source "GraphViewSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgraphview/GraphViewSeries$GraphViewSeriesStyle;
    }
.end annotation


# instance fields
.field final description:Ljava/lang/String;

.field private final graphViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgraphview/GraphView;",
            ">;"
        }
    .end annotation
.end field

.field final style:Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

.field values:[Lgraphview/GraphViewDataInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgraphview/GraphViewSeries$GraphViewSeriesStyle;[Lgraphview/GraphViewDataInterface;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "style"    # Lgraphview/GraphViewSeries$GraphViewSeriesStyle;
    .param p3, "values"    # [Lgraphview/GraphViewDataInterface;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgraphview/GraphViewSeries;->graphViews:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lgraphview/GraphViewSeries;->description:Ljava/lang/String;

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance p2, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    .end local p2    # "style":Lgraphview/GraphViewSeries$GraphViewSeriesStyle;
    invoke-direct {p2}, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;-><init>()V

    .line 78
    .restart local p2    # "style":Lgraphview/GraphViewSeries$GraphViewSeriesStyle;
    :cond_0
    iput-object p2, p0, Lgraphview/GraphViewSeries;->style:Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    .line 79
    iput-object p3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 80
    return-void
.end method

.method public constructor <init>([Lgraphview/GraphViewDataInterface;)V
    .locals 1
    .param p1, "values"    # [Lgraphview/GraphViewDataInterface;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgraphview/GraphViewSeries;->graphViews:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lgraphview/GraphViewSeries;->description:Ljava/lang/String;

    .line 68
    new-instance v0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    invoke-direct {v0}, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;-><init>()V

    iput-object v0, p0, Lgraphview/GraphViewSeries;->style:Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    .line 69
    iput-object p1, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 70
    return-void
.end method


# virtual methods
.method public addGraphView(Lgraphview/GraphView;)V
    .locals 1
    .param p1, "graphView"    # Lgraphview/GraphView;

    .prologue
    .line 87
    iget-object v0, p0, Lgraphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public appendData(Lgraphview/GraphViewDataInterface;Z)V
    .locals 5
    .param p1, "value"    # Lgraphview/GraphViewDataInterface;
    .param p2, "scrollToEnd"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Lgraphview/GraphViewDataInterface;

    .line 99
    .local v1, "newValues":[Lgraphview/GraphViewDataInterface;
    iget-object v3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    array-length v2, v3

    .line 100
    .local v2, "offset":I
    iget-object v3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    array-length v3, v3

    aput-object p1, v1, v3

    .line 103
    iput-object v1, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 104
    iget-object v3, p0, Lgraphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    return-void

    .line 104
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgraphview/GraphView;

    .line 105
    .local v0, "g":Lgraphview/GraphView;
    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {v0}, Lgraphview/GraphView;->scrollToEnd()V

    goto :goto_0
.end method

.method public appendData(Lgraphview/GraphViewDataInterface;ZI)V
    .locals 8
    .param p1, "value"    # Lgraphview/GraphViewDataInterface;
    .param p2, "scrollToEnd"    # Z
    .param p3, "maxDataCount"    # I

    .prologue
    .line 118
    iget-object v4, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    monitor-enter v4

    .line 119
    :try_start_0
    iget-object v3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    array-length v0, v3

    .line 121
    .local v0, "curDataCount":I
    if-ge v0, p3, :cond_1

    .line 123
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [Lgraphview/GraphViewDataInterface;

    .line 124
    .local v2, "newValues":[Lgraphview/GraphViewDataInterface;
    iget-object v3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    aput-object p1, v2, v0

    .line 134
    :goto_0
    iput-object v2, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 118
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v3, p0, Lgraphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    return-void

    .line 129
    .end local v2    # "newValues":[Lgraphview/GraphViewDataInterface;
    :cond_1
    :try_start_1
    new-array v2, p3, [Lgraphview/GraphViewDataInterface;

    .line 130
    .restart local v2    # "newValues":[Lgraphview/GraphViewDataInterface;
    iget-object v3, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    const/4 v5, 0x1

    const/4 v6, 0x0

    add-int/lit8 v7, v0, -0x1

    invoke-static {v3, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/lit8 v3, p3, -0x1

    aput-object p1, v2, v3

    goto :goto_0

    .line 118
    .end local v0    # "curDataCount":I
    .end local v2    # "newValues":[Lgraphview/GraphViewDataInterface;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 138
    .restart local v0    # "curDataCount":I
    .restart local v2    # "newValues":[Lgraphview/GraphViewDataInterface;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgraphview/GraphView;

    .line 139
    .local v1, "g":Lgraphview/GraphView;
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {v1}, Lgraphview/GraphView;->scrollToEnd()V

    goto :goto_1
.end method

.method public getStyle()Lgraphview/GraphViewSeries$GraphViewSeriesStyle;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lgraphview/GraphViewSeries;->style:Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    return-object v0
.end method

.method public removeGraphView(Lgraphview/GraphView;)V
    .locals 1
    .param p1, "graphView"    # Lgraphview/GraphView;

    .prologue
    .line 157
    iget-object v0, p0, Lgraphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public resetData([Lgraphview/GraphViewDataInterface;)V
    .locals 3
    .param p1, "values"    # [Lgraphview/GraphViewDataInterface;

    .prologue
    .line 166
    iput-object p1, p0, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 167
    iget-object v1, p0, Lgraphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    return-void

    .line 167
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgraphview/GraphView;

    .line 168
    .local v0, "g":Lgraphview/GraphView;
    invoke-virtual {v0}, Lgraphview/GraphView;->redrawAll()V

    goto :goto_0
.end method
