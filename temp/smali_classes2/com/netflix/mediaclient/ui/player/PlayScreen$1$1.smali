.class Lcom/netflix/mediaclient/ui/player/PlayScreen$1$1;
.super Ljava/lang/Object;
.source "PlayScreen.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/player/PlayScreen$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreen$1;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/player/PlayScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/player/PlayScreen$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->access$002(Lcom/netflix/mediaclient/ui/player/PlayScreen;Z)Z

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/player/PlayScreen$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1$1;->this$1:Lcom/netflix/mediaclient/ui/player/PlayScreen$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mTopPanel:Lcom/netflix/mediaclient/ui/player/TopPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setGradientVisibility(Z)V

    .line 285
    :cond_0
    return-void
.end method
