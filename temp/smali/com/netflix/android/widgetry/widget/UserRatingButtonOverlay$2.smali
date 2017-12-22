.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;
.super Ljava/lang/Object;
.source "UserRatingButtonOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$400(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$500(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$700(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$600(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onRate(Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V

    .line 162
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$800(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2$1;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2$1;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;)V

    invoke-static {v0, v1, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$700(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1100(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onRate(Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V

    .line 170
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1200(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2$2;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2$2;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;)V

    invoke-static {v0, v1, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;->access$900(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$ThumbsAnimations;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$PastilleDrawable;Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;)V

    goto :goto_0
.end method
