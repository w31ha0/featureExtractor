.class Lcom/netflix/android/widgetry/buffet/BuffetBar$4;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 526
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->dispatchDismiss(I)V

    .line 528
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2

    .prologue
    .line 532
    packed-switch p1, :pswitch_data_0

    .line 543
    :goto_0
    return-void

    .line 536
    :pswitch_0
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v1, v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    goto :goto_0

    .line 540
    :pswitch_1
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$4;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v1, v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->restoreTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
