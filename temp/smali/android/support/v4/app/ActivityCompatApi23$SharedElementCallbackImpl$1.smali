.class Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->this$0:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 132
    return-void
.end method
