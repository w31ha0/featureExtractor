.class Lcom/netflix/android/widgetry/buffet/BuffetBar$10;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iput p2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$10;->val$event:I

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewHidden(I)V

    .line 667
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 670
    return-void
.end method
