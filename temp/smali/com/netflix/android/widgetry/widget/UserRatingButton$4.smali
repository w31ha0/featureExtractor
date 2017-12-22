.class Lcom/netflix/android/widgetry/widget/UserRatingButton$4;
.super Ljava/lang/Object;
.source "UserRatingButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->access$200(Lcom/netflix/android/widgetry/widget/UserRatingButton;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->access$200(Lcom/netflix/android/widgetry/widget/UserRatingButton;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->access$200(Lcom/netflix/android/widgetry/widget/UserRatingButton;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->onDragTouchEvent(Landroid/view/MotionEvent;)V

    .line 336
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
