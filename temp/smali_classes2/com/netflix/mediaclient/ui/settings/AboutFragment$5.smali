.class Lcom/netflix/mediaclient/ui/settings/AboutFragment$5;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/AboutFragment;

.field final synthetic val$aboutActivity:Lcom/netflix/mediaclient/ui/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/AboutFragment;Lcom/netflix/mediaclient/ui/settings/AboutActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment$5;->val$aboutActivity:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->access$000(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->customerService:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportUiModalViewChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment$5;->val$aboutActivity:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->access$100(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showDialog(Lcom/netflix/mediaclient/ui/settings/AboutActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 149
    const/4 v0, 0x0

    return v0
.end method
