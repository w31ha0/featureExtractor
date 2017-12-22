.class Lcom/netflix/mediaclient/ui/player/TopPanel$12;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$12;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$12;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$12;->val$title:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$12;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$600(Lcom/netflix/mediaclient/ui/player/TopPanel;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$12;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->access$600(Lcom/netflix/mediaclient/ui/player/TopPanel;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$12;->val$title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
