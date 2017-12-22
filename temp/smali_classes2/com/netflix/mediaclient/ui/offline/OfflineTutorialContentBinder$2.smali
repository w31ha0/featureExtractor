.class Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$2;
.super Ljava/lang/Object;
.source "OfflineTutorialContentBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;

.field final synthetic val$dialog:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$2;->val$dialog:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder$2;->val$dialog:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->dismiss()V

    .line 71
    return-void
.end method
