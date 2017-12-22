.class Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$4;
.super Ljava/lang/Object;
.source "AvatarsGridActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$4;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$4;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$4;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$800(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->setupGridViewColumns()V

    .line 271
    return-void
.end method
