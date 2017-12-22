.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;
.super Ljava/lang/Object;
.source "MovieDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 98
    return-void
.end method
