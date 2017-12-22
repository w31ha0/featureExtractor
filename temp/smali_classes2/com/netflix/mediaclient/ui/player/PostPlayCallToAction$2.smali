.class Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$2;
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
    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$2;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$2;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->mdxDisplayPageAction()V

    .line 111
    return-void
.end method
