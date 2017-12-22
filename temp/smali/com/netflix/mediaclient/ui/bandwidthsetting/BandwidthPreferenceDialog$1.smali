.class Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;
.super Ljava/lang/Object;
.source "BandwidthPreferenceDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 145
    const-string/jumbo v0, "nf_bw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bwSwitch toggled state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->access$000(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    .line 148
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->access$100(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;Z)V

    .line 150
    if-nez p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    sget v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_MANUAL_CHOICE:I

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->create(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->access$200(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V

    .line 153
    :cond_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
