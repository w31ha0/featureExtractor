.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2$1;
.super Ljava/lang/Object;
.source "UserRatingButtonOverlay.java"

# interfaces
.implements Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;


# instance fields
.field final synthetic this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnded()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2$1;->this$1:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;

    iget-object v0, v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$000(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V

    .line 166
    return-void
.end method
