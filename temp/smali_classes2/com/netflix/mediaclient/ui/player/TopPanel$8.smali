.class Lcom/netflix/mediaclient/ui/player/TopPanel$8;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$8;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$8;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$500(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->episodeSelectorListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 349
    const/4 v0, 0x1

    return v0
.end method
