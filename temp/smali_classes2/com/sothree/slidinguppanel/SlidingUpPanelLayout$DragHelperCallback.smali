.class Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# instance fields
.field final synthetic this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;)V
    .locals 0

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1000(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    .line 1132
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1138
    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    .line 1135
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1081
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1050
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-nez v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_2

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$700(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq v0, v1, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1061
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    .line 1062
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$702(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    .line 1075
    :cond_1
    :goto_0
    return-void

    .line 1064
    :cond_2
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$700(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq v0, v1, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1067
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelAnchored(Landroid/view/View;)V

    .line 1068
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$702(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    goto :goto_0

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$700(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq v0, v1, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    .line 1072
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$702(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$800(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 1086
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 1087
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 1091
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 1092
    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1000(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    .line 1095
    :goto_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    .line 1098
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1099
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1100
    int-to-float v1, v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1106
    :goto_1
    cmpl-float v2, p3, v4

    if-gtz v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    add-float v3, v6, v1

    div-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1117
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1118
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 1119
    return-void

    .line 1092
    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 1093
    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1000(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1102
    :cond_3
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 1103
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    .line 1108
    :cond_4
    cmpl-float v2, p3, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    add-float v3, v6, v1

    div-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 1109
    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    div-float/2addr v1, v5

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    .line 1110
    int-to-float v0, v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    .line 1113
    :cond_5
    cmpl-float v1, p3, v4

    if-gtz v1, :cond_6

    cmpl-float v1, p3, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1114
    :cond_6
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    .line 1040
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    goto :goto_0
.end method
