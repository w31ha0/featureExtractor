.class Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$1;
.super Ljava/lang/Object;
.source "PostPlayCallToAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playAction(Z)V

    .line 102
    return-void
.end method
