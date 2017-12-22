.class Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;
.super Ljava/lang/Object;
.source "KidsParallax.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;

.field final synthetic val$transition:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;->val$transition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;->val$transition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->access$002(Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;Z)Z

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->access$102(Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;Z)Z

    .line 124
    return-void
.end method
