.class Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$2;
.super Ljava/lang/Object;
.source "ThemeEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$2;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$2;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->clearPrefs(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$2;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "ThemeActivity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->restartApplication(Landroid/app/Activity;Ljava/lang/String;)V

    .line 53
    return-void
.end method
