.class Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;
.super Ljava/lang/Object;
.source "ThemeSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;

.field final synthetic val$theme:Lcom/netflix/mediaclient/ui/user_theme/Theme;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;Lcom/netflix/mediaclient/ui/user_theme/Theme;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;->this$1:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;->val$theme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;->this$1:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;->val$theme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->saveTheme(Landroid/content/Context;Lcom/netflix/mediaclient/ui/user_theme/Theme;)V

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;->this$1:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "ThemeActivity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->restartApplication(Landroid/app/Activity;Ljava/lang/String;)V

    .line 55
    return-void
.end method
