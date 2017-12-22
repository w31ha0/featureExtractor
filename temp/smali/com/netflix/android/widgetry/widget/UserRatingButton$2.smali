.class Lcom/netflix/android/widgetry/widget/UserRatingButton$2;
.super Ljava/lang/Object;
.source "UserRatingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

.field final synthetic val$animationMultiplier:I

.field final synthetic val$host:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;Landroid/support/design/widget/CoordinatorLayout;I)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;->val$host:Landroid/support/design/widget/CoordinatorLayout;

    iput p3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;->val$animationMultiplier:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;->val$host:Landroid/support/design/widget/CoordinatorLayout;

    iget v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;->val$animationMultiplier:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->access$100(Lcom/netflix/android/widgetry/widget/UserRatingButton;Landroid/support/design/widget/CoordinatorLayout;IZ)V

    .line 319
    return-void
.end method
