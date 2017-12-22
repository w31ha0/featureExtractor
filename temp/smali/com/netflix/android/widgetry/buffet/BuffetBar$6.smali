.class Lcom/netflix/android/widgetry/buffet/BuffetBar$6;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;Z)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iput-boolean p2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-static {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->access$000(Lcom/netflix/android/widgetry/buffet/BuffetBar;)Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setOnLayoutChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;)V

    .line 589
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->val$animate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->animateViewIn()V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewShown()V

    goto :goto_0
.end method
