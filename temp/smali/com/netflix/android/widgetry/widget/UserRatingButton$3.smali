.class Lcom/netflix/android/widgetry/widget/UserRatingButton$3;
.super Ljava/lang/Object;
.source "UserRatingButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

.field final synthetic val$animationMultiplier:I

.field final synthetic val$host:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;Landroid/support/design/widget/CoordinatorLayout;I)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;->val$host:Landroid/support/design/widget/CoordinatorLayout;

    iput p3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;->val$animationMultiplier:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 325
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;->val$host:Landroid/support/design/widget/CoordinatorLayout;

    iget v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;->val$animationMultiplier:I

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->access$100(Lcom/netflix/android/widgetry/widget/UserRatingButton;Landroid/support/design/widget/CoordinatorLayout;IZ)V

    .line 326
    return v3
.end method
