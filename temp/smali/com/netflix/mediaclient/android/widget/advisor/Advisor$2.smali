.class Lcom/netflix/mediaclient/android/widget/advisor/Advisor$2;
.super Ljava/lang/Object;
.source "Advisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$2;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$2;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->dismiss()V

    .line 107
    return-void
.end method
