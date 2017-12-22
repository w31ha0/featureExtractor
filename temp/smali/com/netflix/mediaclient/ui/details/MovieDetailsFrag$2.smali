.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;
.super Ljava/lang/Object;
.source "MovieDetailsFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupDetailsPageParallaxScrollListener()V

    .line 166
    return-void
.end method
