.class Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder$1;
.super Ljava/lang/Object;
.source "MdxTargetSelectionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder$1;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->notifyDataSetChanged()V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder$1;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 89
    return-void
.end method
