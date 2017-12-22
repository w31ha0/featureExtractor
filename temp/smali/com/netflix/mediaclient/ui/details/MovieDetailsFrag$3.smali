.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;
.super Lcom/netflix/mediaclient/util/TransitionListenerAdapter;
.source "MovieDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    const v1, 0x7f0f0100

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;I)V

    .line 185
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    const v1, 0x7f0f0111

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;I)V

    .line 180
    return-void
.end method
