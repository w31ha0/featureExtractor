.class Landroid/support/transition/TransitionManagerPort$MultiListener$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "TransitionManagerPort.java"


# instance fields
.field final synthetic this$0:Landroid/support/transition/TransitionManagerPort$MultiListener;

.field final synthetic val$runningTransitions:Landroid/support/v4/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionManagerPort$MultiListener;Landroid/support/v4/util/ArrayMap;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->this$0:Landroid/support/transition/TransitionManagerPort$MultiListener;

    iput-object p2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->this$0:Landroid/support/transition/TransitionManagerPort$MultiListener;

    iget-object v1, v1, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 435
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 436
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method
