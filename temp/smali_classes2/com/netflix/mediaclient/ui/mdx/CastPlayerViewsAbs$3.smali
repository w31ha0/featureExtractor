.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$3;
.super Ljava/lang/Object;
.source "CastPlayerViewsAbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const-string/jumbo v1, "pause pressed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onPauseClicked()V

    .line 801
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 802
    return-void
.end method
