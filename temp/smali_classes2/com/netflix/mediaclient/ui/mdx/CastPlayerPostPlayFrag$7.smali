.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$7;
.super Ljava/lang/Object;
.source "CastPlayerPostPlayFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->refreshTimerText()V

    .line 345
    return-void
.end method
