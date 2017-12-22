.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;
.super Ljava/lang/Object;
.source "MdxAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$102(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    .line 292
    return-void
.end method
