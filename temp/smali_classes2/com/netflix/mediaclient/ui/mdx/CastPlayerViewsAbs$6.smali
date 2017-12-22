.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$6;
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
    .line 843
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 846
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "skip pressed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 848
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onSkipBackClicked()V

    .line 849
    return-void
.end method
