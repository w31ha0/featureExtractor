.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$5;
.super Ljava/lang/Object;
.source "EpisodesFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setSpinnerSelection()V

    .line 965
    return-void
.end method
