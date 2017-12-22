.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;
.super Ljava/lang/Object;
.source "ContactUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->performAction(Landroid/view/View;)V

    .line 118
    return-void
.end method
