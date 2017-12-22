.class Lcom/netflix/android/widgetry/buffet/BuffetBar$8;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$8;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$8;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewShown()V

    .line 629
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 632
    return-void
.end method
