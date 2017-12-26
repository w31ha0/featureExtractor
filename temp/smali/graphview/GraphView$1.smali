.class Lgraphview/GraphView$1;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgraphview/GraphView;->setScalable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgraphview/GraphView;


# direct methods
.method constructor <init>(Lgraphview/GraphView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lgraphview/compatible/ScaleGestureDetector;)Z
    .locals 14
    .param p1, "detector"    # Lgraphview/compatible/ScaleGestureDetector;

    .prologue
    .line 937
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v8

    iget-object v10, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v10}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double v0, v8, v10

    .line 938
    .local v0, "center":D
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v9

    invoke-virtual {p1}, Lgraphview/compatible/ScaleGestureDetector;->getScaleFactor()D

    move-result-wide v11

    div-double/2addr v9, v11

    invoke-static {v8, v9, v10}, Lgraphview/GraphView;->access$26(Lgraphview/GraphView;D)V

    .line 939
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    iget-object v9, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v9}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    sub-double v9, v0, v9

    invoke-static {v8, v9, v10}, Lgraphview/GraphView;->access$17(Lgraphview/GraphView;D)V

    .line 942
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgraphview/GraphView;->getMinX(Z)D

    move-result-wide v4

    .line 943
    .local v4, "minX":D
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v8

    cmpg-double v8, v8, v4

    if-gez v8, :cond_0

    .line 944
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8, v4, v5}, Lgraphview/GraphView;->access$17(Lgraphview/GraphView;D)V

    .line 948
    :cond_0
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgraphview/GraphView;->getMaxX(Z)D

    move-result-wide v2

    .line 949
    .local v2, "maxX":D
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 950
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8, v2, v3}, Lgraphview/GraphView;->access$26(Lgraphview/GraphView;D)V

    .line 952
    :cond_1
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v8

    iget-object v10, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v10}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v10

    add-double/2addr v8, v10

    sub-double v6, v8, v2

    .line 953
    .local v6, "overlap":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    .line 955
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v8

    sub-double/2addr v8, v6

    cmpl-double v8, v8, v4

    if-lez v8, :cond_3

    .line 956
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v9

    sub-double/2addr v9, v6

    invoke-static {v8, v9, v10}, Lgraphview/GraphView;->access$17(Lgraphview/GraphView;D)V

    .line 963
    :cond_2
    :goto_0
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-virtual {v8}, Lgraphview/GraphView;->redrawAll()V

    .line 964
    const/4 v8, 0x1

    return v8

    .line 959
    :cond_3
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v8, v4, v5}, Lgraphview/GraphView;->access$17(Lgraphview/GraphView;D)V

    .line 960
    iget-object v8, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    iget-object v9, p0, Lgraphview/GraphView$1;->this$0:Lgraphview/GraphView;

    invoke-static {v9}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v9

    sub-double v9, v2, v9

    invoke-static {v8, v9, v10}, Lgraphview/GraphView;->access$26(Lgraphview/GraphView;D)V

    goto :goto_0
.end method
