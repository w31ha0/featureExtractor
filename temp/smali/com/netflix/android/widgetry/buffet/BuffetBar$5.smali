.class Lcom/netflix/android/widgetry/buffet/BuffetBar$5;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$5;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$5;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/android/widgetry/buffet/BuffetBar$5$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$5$1;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    :cond_0
    return-void
.end method
