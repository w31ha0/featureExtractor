.class Lcom/netflix/android/widgetry/buffet/BuffetBar$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "BuffetBar.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewShown()V

    .line 618
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-static {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->access$000(Lcom/netflix/android/widgetry/buffet/BuffetBar;)Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->animateChildrenIn(II)V

    .line 613
    return-void
.end method
