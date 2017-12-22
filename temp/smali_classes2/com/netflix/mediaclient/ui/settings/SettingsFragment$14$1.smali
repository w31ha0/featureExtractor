.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 930
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 931
    return-void
.end method
