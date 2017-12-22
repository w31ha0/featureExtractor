.class Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;
.super Ljava/lang/Object;
.source "SkipCreditsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

.field final synthetic val$creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

.field final synthetic val$onClickCallback:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;Lcom/netflix/model/leafs/blades/CreditMarks;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->this$0:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->val$onClickCallback:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->val$creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->this$0:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->access$000(Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->val$onClickCallback:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->this$0:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->val$creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/blades/CreditMarks;->endRecap()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;->onSkipCreditsClicked(Landroid/view/View;I)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;->this$0:Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->hide(Z)V

    .line 130
    return-void
.end method
