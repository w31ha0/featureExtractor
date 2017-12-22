.class Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;
.super Ljava/lang/Object;
.source "MdxStackNetflix.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)J

    move-result-wide v0

    .line 156
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->val$message:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->val$url:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$400(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;Ljava/lang/String;J)V

    .line 157
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;->val$uuid:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$500(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/Long;Ljava/lang/String;)V

    .line 158
    return-void
.end method
