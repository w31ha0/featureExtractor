.class Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$1;
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
    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->saveTheme(Landroid/content/Context;Lcom/netflix/mediaclient/ui/user_theme/Theme;)V

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "ThemeActivity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->restartApplication(Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    return-void
.end method
