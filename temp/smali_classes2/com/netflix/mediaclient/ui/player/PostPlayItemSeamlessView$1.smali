.class Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView$1;
.super Ljava/lang/Object;
.source "PostPlayItemSeamlessView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->access$102(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;Z)Z

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlayItemSeamlessView;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onTap(Z)V

    .line 73
    :cond_0
    return-void
.end method
