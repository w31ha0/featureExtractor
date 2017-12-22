.class Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;
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
    .line 192
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$900(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$1000(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$1100(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;ZLjava/lang/String;)V

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$900(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
