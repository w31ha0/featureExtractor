.class Landroid/support/design/widget/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButton;

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButton$1;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$1;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Landroid/support/design/widget/FloatingActionButton;)V

    .line 429
    return-void
.end method

.method public onShown()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$1;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;->onShown(Landroid/support/design/widget/FloatingActionButton;)V

    .line 424
    return-void
.end method
