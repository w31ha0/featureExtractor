.class Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GalleryPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/activities/GalleryPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/biznessapps/activities/GalleryPreviewActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/activities/GalleryPreviewActivity;Lcom/biznessapps/activities/GalleryPreviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/activities/GalleryPreviewActivity;
    .param p2, "x1"    # Lcom/biznessapps/activities/GalleryPreviewActivity$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;-><init>(Lcom/biznessapps/activities/GalleryPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v3, 0x42f00000    # 120.0f

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$200(Lcom/biznessapps/activities/GalleryPreviewActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$200(Lcom/biznessapps/activities/GalleryPreviewActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$300()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$208(Lcom/biznessapps/activities/GalleryPreviewActivity;)I

    .line 100
    invoke-static {}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$300()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v2}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$200(Lcom/biznessapps/activities/GalleryPreviewActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/GalleryData$Item;

    .line 101
    .local v0, "item":Lcom/biznessapps/model/GalleryData$Item;
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v1, v0}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$400(Lcom/biznessapps/activities/GalleryPreviewActivity;Lcom/biznessapps/model/GalleryData$Item;)V

    .line 113
    .end local v0    # "item":Lcom/biznessapps/model/GalleryData$Item;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$200(Lcom/biznessapps/activities/GalleryPreviewActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$210(Lcom/biznessapps/activities/GalleryPreviewActivity;)I

    .line 109
    invoke-static {}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$300()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v2}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$200(Lcom/biznessapps/activities/GalleryPreviewActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/GalleryData$Item;

    .line 110
    .restart local v0    # "item":Lcom/biznessapps/model/GalleryData$Item;
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v1, v0}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$400(Lcom/biznessapps/activities/GalleryPreviewActivity;Lcom/biznessapps/model/GalleryData$Item;)V

    goto :goto_0
.end method
