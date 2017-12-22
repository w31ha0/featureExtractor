.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$8;
.super Ljava/lang/Object;
.source "MdxAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$8;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$8;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$8;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$8;->val$uuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$202(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 1430
    return-void
.end method
