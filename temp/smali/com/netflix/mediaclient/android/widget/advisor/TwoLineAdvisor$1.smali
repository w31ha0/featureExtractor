.class Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor$1;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "TwoLineAdvisor.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->access$000(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->access$100(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->access$201(Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;)V

    .line 148
    return-void
.end method
