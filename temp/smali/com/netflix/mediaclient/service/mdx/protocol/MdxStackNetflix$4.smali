.class Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;
.super Ljava/lang/Object;
.source "MdxStackNetflix.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

.field final synthetic val$connected:Z

.field final synthetic val$ipa:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$connected:Z

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$ipa:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$ssid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$name:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$connected:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$ipa:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;->val$ssid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
