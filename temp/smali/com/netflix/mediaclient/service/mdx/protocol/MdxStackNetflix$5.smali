.class Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$5;
.super Ljava/lang/Object;
.source "MdxStackNetflix.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$5;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$5;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$700(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$5;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$800(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 187
    return-void
.end method
