.class Lcom/netflix/mediaclient/ui/survey/SurveyFragment$1;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->access$000(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;)Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->access$000(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;)Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/survey/SurveyListener;->onSkipped()V

    .line 84
    :cond_0
    return-void
.end method
