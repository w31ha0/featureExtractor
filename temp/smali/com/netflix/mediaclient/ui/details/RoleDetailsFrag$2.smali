.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$2;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 164
    return-void
.end method
