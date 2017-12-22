.class Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$3;
.super Ljava/lang/Object;
.source "ThemeEditFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$3;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$3;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->setLightTheme(Z)V

    .line 62
    return-void
.end method
